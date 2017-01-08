package com.example.farejudgeapp;

import android.app.ListActivity;
import android.app.SearchManager;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;

public class Searchable extends ListActivity {
    // Create an array
    String[] values;

    @Override
    protected void onCreate(Bundle savedInstanceState){
        super.onCreate(savedInstanceState);
        setContentView(R.layout.searchable);

        Intent intent = getIntent();
        if (Intent.ACTION_SEARCH.equals(intent.getAction())) {
            String query = intent.getStringExtra(SearchManager.QUERY);
            // At the end of doMySearch(), you can populate 
            // a String Array as resultStringArray[] and set the Adapter
            DoMySearch(query);
        }
    }

    private void DoMySearch(String query) {
		// TODO Auto-generated method stub
		
	}

	/*class doMySearch extends AsyncTask<String,Void,String> {
        @Override
        protected String doInBackground(String... params) {
            // Connect to a SQLite DataBase, do some stuff..
            // Populate the Array, and return a succeed message
            // As String succeed = "Loaded";
            return succeed;
        }
        @Override
        protected void onPostExecute(String result) {
            if(result.equals("Loaded") {
                 // You can create and populate an Adapter
                 ArrayAdapter<String> adapter = new ArrayAdapter<String>(
                            Searchable.this,
                            android.R.layout.listall, values);
                 setListAdapter(adapter);
            }
        }
    }*/
}  