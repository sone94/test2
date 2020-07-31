<?php

abstract class Car {

    private $model;
    private $price;

    public function GetModel(){
        return $this->title;
    }

    public function SetModel($value){
        $this->model = $value;
    }

    public function GetPrice(){
        return $this->price;
    }

    public function SetPrice($value){
        $this->price = $value;
    }


}

class BMW extends Car implements priceCalculation {

    function __construct($model)
    {
        $this->model = $model;
    }

    private $spare_parts_price;

    public function GetSparePartsPrice(){
        return $this->spare_parts_price;
    }

    public function SetSparePartPrice($value){
        $this->spare_parts_price = $value;
    }


    public function calculate()
    {
        return $this->GetPrice() + $this->GetSparePartsPrice();
    }

}

class Reno extends Car implements priceCalculation {

    private $insurance;


    public function GetInsurancePrice(){
        return $this->insurance;
    }

    public function SetInsurancePrice($value){
        return $this->insurance = $value;
    }

    public function calculate()
    {
        return $this->GetPrice() + $this->GetInsurancePrice();
    } 
}

interface priceCalculation {
    public function calculate();
}

$car = new BMW('BMW 720d');

$car->SetPrice(20000);
$car->SetSparePartPrice(2500);
echo $car->calculate();

$car = new Reno('Megane');

$car->SetPrice(12000);
$car->SetInsurancePrice(750);
echo $car->calculate();