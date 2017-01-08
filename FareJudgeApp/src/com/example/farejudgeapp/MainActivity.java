package com.example.farejudgeapp;

import android.net.Uri;
import android.os.Bundle;
import android.app.Activity;
import android.content.ContentValues;
import android.content.CursorLoader;
import android.content.Intent;
import android.database.Cursor;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends Activity {

   @Override
   protected void onCreate(Bundle savedInstanceState) {
      super.onCreate(savedInstanceState);
      setContentView(R.layout.home);
      
      Button addBtn = (Button) findViewById(R.id.button1);
      Button listBtn = (Button) findViewById(R.id.button2);
      Button searchBtn = (Button) findViewById(R.id.button3);
      Button uploadBtn = (Button) findViewById(R.id.button4);
      
      addBtn.setOnClickListener(new View.OnClickListener() {
			public void onClick(View view) {
				handleAddButtonClick();
			}
		});  
      listBtn.setOnClickListener(new View.OnClickListener() {
			public void onClick(View view) {
				handleListButtonClick();
			}
		});  
    
    
   }
   
private void handleAddButtonClick(){
	Intent i=new Intent(MainActivity.this, EnterEst.class);
	startActivity(i);
}

private void handleListButtonClick(){
	Intent i=new Intent(MainActivity.this, ListAll.class);
	startActivity(i);
}

   

   @Override
   public boolean onCreateOptionsMenu(Menu menu) {
      getMenuInflater().inflate(R.menu.main, menu);
      return true;
   }

   public void onClickAddReview(View view) {
      // Add a new review
      ContentValues values = new ContentValues();

   }
}
  

	