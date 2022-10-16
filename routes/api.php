<?php

use App\Http\Controllers\API\ProductCategoryController;
use App\Http\Controllers\API\ProductController;
use App\Http\Controllers\API\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::get('products', [ProductController::class, 'all']);
Route::get('categories', [ProductCategoryController::class, 'all']);
Route::post('register', [UserController::class, 'register']);
Route::post('user_login', [UserController::class, 'login']);

Route::middleware('auth:sanctum')->group(function () {
    Route::get('get_user/{username}', [UserController::class, 'getUserDetail']);
    Route::post('update', [UserController::class, 'update']);
    Route::get('user', [UserController::class, 'fetch']);
    Route::get('logout', [UserController::class, 'logout']);
});
