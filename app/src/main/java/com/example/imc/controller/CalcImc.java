package com.example.imc.controller;

import com.example.imc.model.Data;

public class CalcImc {

    Data data;
    double result;

    public void calcimc(String height, String weight){
        double convertheight = Double.parseDouble(height);
        double convertweight = Double.parseDouble(weight);
        result = convertweight / (convertheight*convertheight);
        data.setResult(result);
        System.out.println(result + ">>>>>>>>>>>>>");
    }




}
