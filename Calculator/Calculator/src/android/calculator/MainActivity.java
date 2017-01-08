package android.calculator;

import android.os.Bundle;
import android.app.Activity;
import android.widget.*;
import android.view.*;

public class MainActivity extends Activity {

	  private double valor_a, valor_b;
	  private EditText editNum1, editNum2;
	  private TextView total;
	 
@Override
public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
             setContentView(R.layout.activity_main);
	          
	    this.editNum1 = (EditText) findViewById(R.id.editNum1);
	    this.editNum2 = (EditText) findViewById(R.id.editNum2);
	    this.total = (TextView) findViewById(R.id.result);             
   }

public void add(View view) {

	if(this.editNum1.getText().toString().length() > 0 && this.editNum2.getText().toString().length() > 0) {
	     this.valor_a = Double.parseDouble(this.editNum1.getText().toString());
	     this.valor_b = Double.parseDouble(this.editNum2.getText().toString());   
	     this.total.setText(Double.toString((this.valor_a + this.valor_b)));        
	    }
	     }
public void sub(View view) {
	 
	if(this.editNum1.getText().toString().length() > 0 && this.editNum2.getText().toString().length() > 0) {
	     this.valor_a = Double.parseDouble(this.editNum1.getText().toString());
	     this.valor_b = Double.parseDouble(this.editNum2.getText().toString());   
	     this.total.setText(Double.toString((this.valor_a - this.valor_b)));        
	    }
	    }

public void mul(View view) {

	if(this.editNum1.getText().toString().length() > 0 && this.editNum2.getText().toString().length() > 0) {
	     this.valor_a = Double.parseDouble(this.editNum1.getText().toString());
	     this.valor_b = Double.parseDouble(this.editNum2.getText().toString());   
	     this.total.setText(Double.toString((this.valor_a * this.valor_b)));        
	      }
	   }

public void div(View view) {

	if(this.editNum1.getText().toString().length() > 0 && this.editNum2.getText().toString().length() > 0) {
	     this.valor_a = Double.parseDouble(this.editNum1.getText().toString());
	     this.valor_b = Double.parseDouble(this.editNum2.getText().toString());   
	if(this.valor_b != 0) {
	     this.total.setText(Double.toString((this.valor_a / this.valor_b)));                
	           }
	  
	              else {
	                 this.total.setText("Infinito");                
	  	  }
	         }
	      }      
	    }

