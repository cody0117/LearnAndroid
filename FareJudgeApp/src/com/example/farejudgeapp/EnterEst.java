package com.example.farejudgeapp;



import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.database.sqlite.SQLiteException;

public class EnterEst extends Activity {

	private SQLiteDB dbHelper;
	private String strReviewerID;
	private String strEstabName;
	private String strEstabType;
	private String strFoodType;
	private String strLocation;
	
public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.enterest);

        Button AddButton = (Button) findViewById(R.id.button1);
		/* Handle the event generated when the user clicks a button */
		AddButton.setOnClickListener(new View.OnClickListener() {
			public void onClick(View v) {
				displayNextAlert(); // call method defined later in the program
			}
	
		});
		// Get ready to access the database later
				dbHelper = new SQLiteDB(this);
			}
private void popupToast(String message) {
	Toast.makeText(this, message, Toast.LENGTH_LONG).show();
}
private void displayNextAlert() {
	// Get what the user entered
	EditText ReviewerID = (EditText) findViewById(R.id.reviewerid);
	EditText EstabName = (EditText) findViewById(R.id.estabname);
	EditText EstabType = (EditText) findViewById(R.id.estabtype);
	EditText FoodType = (EditText) findViewById(R.id.foodtype);
	EditText Location = (EditText) findViewById(R.id.location);
	

	// final so we can reference them in the anonymous inner class below

	 strReviewerID = ReviewerID.getText().toString();
	strEstabName = EstabName.getText().toString();
	strEstabType = EstabType.getText().toString();
	strFoodType = FoodType.getText().toString();
	strLocation = Location.getText().toString();

//Create and display the Alert dialog
		new AlertDialog.Builder(this)
				.setTitle("   Details entered")
				.setMessage(
						" Details entered:\n " + strReviewerID + "\n " + strEstabName
								+ "\n " + strEstabType + "\n " + strFoodType + "\n " + strLocation)
				.setNeutralButton("Back",
						new DialogInterface.OnClickListener() {
							public void onClick(DialogInterface dialog,	int which) {
								// do nothing - it will just close when clicked
							}
						})
				.setPositiveButton("Save",
						new DialogInterface.OnClickListener() {

							@Override
							public void onClick(DialogInterface dialog,	int which) {
								// save the details entered if "Save" button clicked
								saveDetails(strReviewerID, strEstabName, strEstabType , strFoodType , strLocation);
							}			
							
						}).show();
		
	}
protected void saveDetails(String UsrID, String EstabName, String EstabType, String FoodType, String Location) {
	try {
		dbHelper.insertDetails(UsrID, EstabName, EstabType, FoodType, Location);
		//dbHelper.deleteDatabse();
	new AlertDialog.Builder(EnterEst.this)
			.setTitle("   ** Details saved **")
			.setNeutralButton("Next",
					new DialogInterface.OnClickListener() {
						public void onClick(DialogInterface dialog,
								int which) {
							// do nothing
						}
					}).show();
	}
	catch (SQLiteException sqle) {
		// ... or display error message
		android.util.Log.w(this.getClass().getName(), 
				"   Error saving to database");
		new AlertDialog.Builder(EnterEst.this)
		.setTitle("Couldn't save details")
		.setNeutralButton("Next",
				new DialogInterface.OnClickListener() {
					public void onClick(DialogInterface dialog,
							int which) {
						// do nothing
					}
				}).show();
	}

}
}

