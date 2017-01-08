package com.example.farejudgeapp;

import java.util.ArrayList;
import java.util.List;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FilterQueryProvider;
import android.widget.ListView;
import android.widget.TextView;
import android.support.v4.widget.CursorAdapter;
import android.support.v4.widget.SimpleCursorAdapter;
import android.widget.Toast;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;

public class ListAll extends Activity {

	    SQLiteDB dbHelper;
	    Cursor mCursor;


	    @Override
	        public void onCreate(Bundle savedInstanceState) {
	            super.onCreate(savedInstanceState);
	            setContentView(R.layout.listall);
	            TextView Reviewerid = (TextView)findViewById(R.id.reviewerid);
	            SQLiteDB db = new SQLiteDB(this);


	            // Inserting Data
	            Log.d("Insert: ", "Inserting .."); 


	            db.addEstablishment(new Establishment("AZ001", "Korean Grilled Cafe", "Cafe", "Korean food", "Causeway Bay"));   
	            db.addEstablishment(new Establishment("AZ002", "Taiwanese TeaWood", "Cafe", "Taiwanese food", "Causeway Bay"));    
	            db.addEstablishment(new Establishment("AZ003", "HongKong Style Restaurant", "Chinese Restaurant", "HongKong food", "WanChai"));    
	            db.addEstablishment(new Establishment("AZ004", "Ming Yuen Chinese Restaurant", "Chinese Restaurant", "Chinese Cuisine", "Tin Hau"));    
	            db.addEstablishment(new Establishment("AZ005", "Osyter Bar", "Bar $ Cafe", "Western", "Central")); 



	            // Reading all Establishment
	            Log.d("Reading: ", "Reading all data.."); 
	    


	           List<Establishment> Establishment = db.getReviewerid();

	                    StringBuilder builder = new StringBuilder();
	                for (Establishment est : Establishment) {
	                    builder.append(est.getReviewerid());


	                    // Writing Establishment to log
	              //      String log = "Reviewerid: "+est.getReviewerid()+" ,EstabName: " + est.getEstabName() + " ,EstabType: " + est.getEstabType()+ " ,FoodType: " + est.getFoodType()+ " ,Location: " + est.getLocation();
	           //         Log.d("Establishment: ", log);
	                }

	                // print show on textview
	              //  Reviewerid.setText(builder.toString());


	        }


	        }
	/*private SQLiteDB dbHelper;
	private ArrayAdapter customAdapter;
	private ListView listView;
	private boolean columnNames;
	private Object displayNames;
	
	public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.listall);
        
	dbHelper = new SQLiteDB(this);
	

	    
	String[] columnNames = { SQLiteDB.REVIEWER_ID,
			SQLiteDB.ESTAB_NAME, SQLiteDB.ESTAB_TYPE, SQLiteDB.FOOD_TYPE };
	int[] displayNames = { R.id.reviewerid, R.id.estabname, R.id.estabtype, R.id.foodtype };}

	
	public void onListItemClick(ListView parent, View view, int position, long id) {
        Intent intent = new Intent(this, ListAll.class);
        intent.putExtra("REVIEWER_ID", id);
        startActivity(intent);
    }

	//private void displayListView() {
		// TODO Auto-generated method stub
		


//final CursorAdapter records = new CursorAdapter 
//(this,
//R.layout.listall, columnNames, displayNames);
	//void setListAdapter(records);
//displayData();

	/*records.setFilterQueryProvider(new FilterQueryProvider() {

		public Cursor runQuery(CharSequence constraint) {
			Log.d("xxxx", "runQuery constraint:" + constraint);
			// uri, projection, and sortOrder might be the same as previous
			// but you might want a new selection, based on your filter
			// content (constraint)
			Cursor cur = dbHelper.getFilteredRecords(constraint.toString());
			return cur; // now your adapter will have the new filtered
						// content

 * 
 * }
 */

//private void setListAdapter(SimpleCursorAdapter records) {
		// TODO Auto-generated method stub
		

/* Display the menu. Note the menu is defined in list_menu.xml */

/* Process the user's selection from the menu */

