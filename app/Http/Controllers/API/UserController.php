<?php

namespace App\Http\Controllers\API;

use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;
use App\Models\User;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Laravel\Fortify\Rules\Password;

class UserController extends Controller
{
    public function login(Request $request)
    {
        try {
            $request->validate([
                'email' => 'email|required',
                'password' => ['required', 'string', new Password],
            ]);

            $credentials = request(['email', 'password']);
            if (!Auth::attempt($credentials)) {
                return ResponseFormatter::error(['message' => 'Unauthorized'], 'Authentication Failed', 500);
            }
            $user = User::where('email', $request->email)->first();

            if (!Hash::check($request->password, $user->password, [])) {
                throw new \Exception('Invalid Credentials');
            }
            $tokenResult = $user->createToken('authToken')->plainTextToken;

            DB::table('users')->where('email', $user->email)->update(['remember_token' => $tokenResult]);

            return ResponseFormatter::success([
                'access_token' => $tokenResult,
                'token_type' => 'Bearer',
                'user' => $user,
            ], 'Authenticated');
        } catch (Exception $error) {
            return ResponseFormatter::error($error, config('constant.message.message_error'), 500);
        }
    }
    public function register(Request $request)
    {
        try {
            $request->validate([
                'name' => ['required', 'string', 'max:255'],
                'username' => ['required', 'string', 'max:20', 'unique:users,username'],
                'email' => ['required', 'string', 'email', 'max:100', 'unique:users,email'],
                'phone' => ['nullable', 'string', 'max:15'],
                'password' => ['required', 'string', new Password],
            ]);

            User::create([
                'name' => $request->name,
                'username' => $request->username,
                'email' => $request->email,
                'phone' => $request->phone,
                'password' => Hash::make($request->password)
            ]);

            $user = User::where('email', $request->email)->first();

            $tokenResult = $user->createToken('authToken')->plainTextToken;

            return ResponseFormatter::success([
                'access_token' => $tokenResult,
                'token_type' => 'Bearer',
                'user' => $user
            ], 'User Registered');
        } catch (Exception $error) {
            //throw $th;
            return ResponseFormatter::error([
                'message' => 'Something went wrong',
                'error' => $error
            ], 'Authentication Failed', 500);
        }
    }

    public function update(Request $request)
    {

        try {
            $request->validate([
                'name' => ['required', 'string', 'max:255'],
                'phone' => ['required', 'string', 'max:15'],
            ]);
            $data = $request->all();
            $user = Auth::user();
                // ->update([
                //     'name' => $request->name,
                //     'phone' => $request->phone
                // ]);
            $user->update($data);
            // if ($data) {
            //     # code...
            //     $getUser = DB::table('users')
            //         ->select('name', 'phone', 'updated_at')
            //         ->where('id', $id)
            //         ->get();
            // }

            return ResponseFormatter::success($user, 'Profile Updated');
        } catch (Exception $error) {
            //throw $th;
            return ResponseFormatter::error($error, config('constant.message.message_error'), 500);
        }
    }

    public function getUserDetail($username)
    {
        try {
            $userDetail = DB::table('users')
                ->select('id as id_user', 'name', 'email', 'phone', 'username')
                ->where('username', $username)
                ->get();

            if ($userDetail->count() > 0) {
                # code...
                return ResponseFormatter::success($userDetail, config('constant.message.message_success'));
            } else {
                return ResponseFormatter::error(null, config('constant.message.message_failed'), 404);
            }
        } catch (Exception $error) {
            //throw $th;
            return ResponseFormatter::error($error, config('constant.message.message_error'), 500);
        }
    }

    public function fetch(Request $request)
    {
        return ResponseFormatter::success($request->user(), 'Data User berhasil diambil');
    }

    public function logout(Request $request)
    {
        $token = $request->user()->currentAccessToken()->delete();

        return ResponseFormatter::success($token, 'Logout berhasil');
    }
}
