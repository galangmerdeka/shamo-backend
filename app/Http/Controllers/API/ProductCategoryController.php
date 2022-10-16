<?php

namespace App\Http\Controllers\API;

use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;
use App\Models\ProductCategory;
use Illuminate\Http\Request;

class ProductCategoryController extends Controller
{
    //
    public function all(Request $request)
    {
        $id = $request->input('id');
        $limit = $request->input('limit');
        $name = $request->input('name');
        $show_products = $request->input('show_products');


        if ($id) {
            $category = ProductCategory::with(['products'])->find($id);

            if ($category) {
                # code...
                return ResponseFormatter::success($category, config('constant.message.message_success'));
            } else {
                return ResponseFormatter::error(null, config('constant.message.message_failed'), 404);
            }
        }

        $category = ProductCategory::query();
        if ($name) {
            # code...
            $category->where('name', 'like', '%' . $name . '%');
        }

        if ($show_products) {
            # code...
            $category->with('products');
        }

        if ($category->count() > 0) {
            # code...
            return ResponseFormatter::success($category->paginate($limit), config('constant.message.message_success'));
        } else {
            return ResponseFormatter::error(null, config('constant.message.message_failed'), 404);
        }
        

    }
}
