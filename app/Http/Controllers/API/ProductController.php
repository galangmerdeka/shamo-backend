<?php

namespace App\Http\Controllers\API;

use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;
// use Symfony\Component\HttpFoundation\Test\Constraint\ResponseFormatSame;

// use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{
    //
    public function all(Request $request)
    {
        $id = $request->input('id');
        $limit = $request->input('limit');
        $name = $request->input('name');
        $description = $request->input('description');
        $price_from = $request->input('price_from');
        $price_to = $request->input('price_to');
        $tags = $request->input('tags');
        $categories = $request->input('categories');

        if ($id) {
            $product = Product::with(['category', 'galleries'])->find($id);

            if ($product) {
                # code...
                return ResponseFormatter::success($product, config('constant.message.message_success'));
            } else {
                return ResponseFormatter::error(null, config('constant.message.message_failed'), 404);
            }
        }

        $product = Product::with(['category', 'galleries']);
        // $selectAll = DB::select('select * from users where active = ?', [1]);


        if ($name) {
            # code...
            $product->where('name', 'like', '%' . $name . '%');
        }

        if ($description) {
            # code...
            $product->where('description', 'like', '%' . $description . '%');
        }

        if ($price_from) {
            # code...
            $product->where('price', '>=', $price_from);
        }

        if ($price_to) {
            # code...
            $product->where('price', '<=', $price_to);
        }

        if ($tags) {
            # code...
            $product->where('tags', 'like', '%' . $tags . '%');
        }

        if ($categories) {
            # code...
            $product->where('categories_id', '=', $categories);
        }

        if ($product->count() > 0) {
            # code...
            return ResponseFormatter::success($product->paginate($limit), config('constant.message.message_success'));
        } else {
            # code...
            return ResponseFormatter::error(null, config('constant.message.message_failed'), 404);
        }
    }
}
