package com.example.jessica.forms;

import android.os.Bundle;
import android.app.Activity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends Activity {

    Button submitButton;
    EditText nameEdit;
    TextView welcomeText;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        submitButton = (Button)findViewById(R.id.button1);


        submitButton.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {


                nameEdit = (EditText) findViewById(R.id.editText1);


                welcomeText = (TextView) findViewById(R.id.textView1);

                welcomeText.setText("Welcome " + nameEdit.getText().toString() + "!");
            }
        });
    }


}
