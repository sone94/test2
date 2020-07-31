<?php

namespace App\Http\Controllers;

use App\Car;
use Illuminate\Http\Request;
use Mockery\Undefined;

class CarsController extends Controller
{
    public function index(){

        $cars = Car::with('brand')->paginate(9);

        return response()->json($cars);

    }

    public function show($id) {
        $car = Car::with('brand')->find($id);

        return response()->json($car);
    }

    public function getCarByBrand($brand_array){

        //$brand_array = (array)($brand_array);

        if(isset($brand_array) && is_array(json_decode($brand_array)))
        $brand_array_id = array_column(json_decode($brand_array), 'id');

        if(!empty($brand_array_id))
            $cars = Car::with('brand')->whereIn('brand_id', $brand_array_id)->paginate(9);
        else
            $cars = Car::with('brand')->paginate(9);

        return response()->json($cars);
    }

    
}
