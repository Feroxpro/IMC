package com.example.imc;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import com.example.imc.controller.CalcImc;
import com.example.imc.model.Data;

public class MainActivity extends AppCompatActivity {

    CalcImc calcImc;
    Data data;
    EditText insheight;
    EditText insweight;
    TextView result;

    Button btnresult;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        btnresult = findViewById(R.id.btnresult);
        insheight = findViewById(R.id.insheight);
        insweight = findViewById(R.id.insweight);
        result = findViewById(R.id.result);


    }

    public void SetButton(){
       btnresult.setOnClickListener(new View.OnClickListener() {
           @Override
           public void onClick(View view) {
               calcImc.calcimc(insheight.getText().toString(), insweight.getText().toString());
               result.setText(""+ data.getResult());
           }
       });
    }
}