package project.sqlite;

import android.app.ListActivity;
import android.database.Cursor;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.EditText;
import android.widget.FilterQueryProvider;
import android.widget.SimpleCursorAdapter;

public class ListPersistFiltering extends ListActivity {
	private DatabaseHelper dbHelper;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.list_screen);
		dbHelper = new DatabaseHelper(this);
		Cursor results = dbHelper.getAllRecords();

		String[] columnNames = { DatabaseHelper.NAME_COL,
				DatabaseHelper.DATE_OF_BIRTH_COL, DatabaseHelper.EMAIL_COL, DatabaseHelper.ADDRESS_COL };
		int[] displayNames = { R.id.TextName, R.id.TextDOB, R.id.TextEmail, R.id.TextAddress };

		final SimpleCursorAdapter records = new SimpleCursorAdapter(this,
				R.layout.list_record_row, results, columnNames, displayNames);
		setListAdapter(records);
		// displayData();

		records.setFilterQueryProvider(new FilterQueryProvider() {

			public Cursor runQuery(CharSequence constraint) {
				Log.d("xxxx", "runQuery constraint:" + constraint);
				// uri, projection, and sortOrder might be the same as previous
				// but you might want a new selection, based on your filter
				// content (constraint)
				Cursor cur = dbHelper.getFilteredRecords(constraint.toString());
				return cur; // now your adapter will have the new filtered
							// content
			}
		});

		EditText txtInput = (EditText) findViewById(R.id.editTextFilter);
		txtInput.addTextChangedListener(new TextWatcher() {

			public void afterTextChanged(Editable s) {
				// TODO Auto-generated method stub
				records.getFilter().filter(s);
			}

			public void beforeTextChanged(CharSequence s, int start, int count,
					int after) {
				// TODO Auto-generated method stub

			}

			public void onTextChanged(CharSequence s, int start, int before,
					int count) {
				// TODO Auto-generated method stub
				records.getFilter().filter(s.toString());

				records.notifyDataSetChanged();
			}
		});
	}

	/*
	 * private void displayData() { // TODO Auto-generated method stub Cursor
	 * results = dbHelper.getAllRecords();
	 * 
	 * String[] columnNames ={DatabaseHelper.NAME_COL,
	 * DatabaseHelper.DATE_OF_BIRTH_COL, DatabaseHelper.EMAIL_COL, DatabaseHelper.ADDRESS_COL}; int[]
	 * displayNames={R.id.TextName, R.id.TextDOB, R.id.TextEmail, R.id.TextAddress};
	 * 
	 * SimpleCursorAdapter records = new SimpleCursorAdapter(this,
	 * R.layout.list_record_row, results, columnNames, displayNames);
	 * setListAdapter(records);
	 * }
	 */

	/* Display the menu. Note the menu is defined in list_menu.xml */
	public boolean onCreateOptionsMenu(Menu menu) {
		super.onCreateOptionsMenu(menu);
		MenuInflater inflater = getMenuInflater();
		inflater.inflate(R.menu.list_menu, menu);
		return true;
	}

	/* Process the user's selection from the menu */
	public boolean onOptionsItemSelected(MenuItem item) {
		// Find which menu item was selected
		switch (item.getItemId()) {
		case R.id.itemHome: 
			
			super.onBackPressed();
			return true;
		default:
			return super.onOptionsItemSelected(item);
		}
	}

}
