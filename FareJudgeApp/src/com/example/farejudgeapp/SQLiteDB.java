/**
 * 
 */
package com.example.farejudgeapp;

import java.util.ArrayList;
import java.util.List;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;


public class SQLiteDB extends SQLiteOpenHelper{

	private static final String DATABASE_NAME = "SQLiteDB";
	private static final String TABLE_NAME = "DetailList2";
	public static final String UserID_COL1 = "User_ID";
	public static final String EST_NAME_COL1 = "Estname";
	public static final String TYPE_COL1 = "Esttype";
	public static final String FOOD_TYPE_COL1 = "FoodType";
	public static final String LOCATION_COL1 = "Location";
	private static SQLiteDatabase database;

//	private static final String[] COLUMNS = {REVIEWER_ID,ESTAB_NAME, ESTAB_TYPE, FOOD_TYPE, LOCATION};
	
	public SQLiteDB(Context context) {
		super(context, DATABASE_NAME, null, 19); //note: 1 is the version number of database
		
		database = getWritableDatabase();
	}
		

	@Override
	public void onCreate(SQLiteDatabase db) {
		// TODO Auto-generated method stub
		//db.execSQL("CREATE TABLE DetailList2 (_id INTEGER PRIMARY KEY AUTOINCREMENT, UserID TEXT, Estname TEXT, Esttype TEXT, FoodType TEXT, Location TEXT);");	
		db.execSQL("CREATE TABLE DetailList2 (_id INTEGER PRIMARY KEY AUTOINCREMENT, UserID TEXT, Estname TEXT, Esttype TEXT, FoodType TEXT, Location TEXT);");	
		Log.d("MyApp","Do Nothing");
	}
	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
		// TODO Auto-generated method stub
		android.util.Log.w(this.getClass().getName(), 
				DATABASE_NAME + " database upgrade to version " + newVersion + " old data lost");
		db.execSQL("DROP TABLE IF EXISTS Establishment");
		onCreate(db);
	}
	public long insertDetails(String usrid, String strname, String type, String FoodType, String Location) {
		//onCreate();

		ContentValues rowValues = new ContentValues();
		
		// Assemble row of data in the ContentValues object
		rowValues.put(UserID_COL1, usrid);
		rowValues.put(EST_NAME_COL1, strname);
		rowValues.put(TYPE_COL1, type);
		rowValues.put(FOOD_TYPE_COL1, FoodType);
		rowValues.put(LOCATION_COL1, Location);
		Log.d("MyApp","here");

		// save the id of the person just inserted
				//long reviewerID = database.insertOrThrow("DetailList", null, rowValues);
		
		return database.insertOrThrow("DetailList2", null, rowValues);
		
	}
	public void deleteDatabse() {
	    SQLiteDatabase db = this.getWritableDatabase();
	    db.delete(TABLE_NAME, "1", new String[] {});
	    Log.d("Database stuff", "Database table succesfully deleted");
	    db.close();
	}
	
	
	
	// Getting All Data in Table
    public List<Establishment> getAllEstablishments() {
        List<Establishment> EstablishmentList = new ArrayList<Establishment>();
        // Select All Query
        String selectQuery = "SELECT  * FROM " + DATABASE_NAME;

        SQLiteDatabase db = this.getWritableDatabase();
        Cursor cursor = db.rawQuery(selectQuery, null);

        // looping through all rows and adding to list
        if (cursor.moveToFirst()) {
            do {
            	Establishment Establishment = new Establishment();
            	Establishment.setReviewerid(cursor.getString(0));
            	Establishment.setEstabName(cursor.getString(1));
            	Establishment.setEstabType(cursor.getString(2));
            	Establishment.setFoodType(cursor.getString(3));
            	Establishment.setLocation(cursor.getString(4));
                // Adding Establishment to list
            	EstablishmentList.add(Establishment);
            } while (cursor.moveToNext());
        }

        // return contact list
        return EstablishmentList;
    }
    /*
 // Getting Establishment
    public List<Establishment> getEstabName() {
        List<Establishment> EstablishmentList = new ArrayList<Establishment>();  
    }
        // Select  Query

       String selectQuery = "SELECT  "+ ESTAB_NAME +" FROM " + DATABASE_NAME+ "  WHERE REVIEWER_ID = '1';";


        SQLiteDatabase db = this.getWritableDatabase();
        Cursor cursor = db.rawQuery(selectQuery, null);

        // looping through all rows and adding to list
        if (cursor.moveToFirst()) {
            do {
                Contact contact = new Contact();

                contact.setID(Integer.parseInt(cursor.getString(0)));
                contact.setsongName(cursor.getString(1));
                contact.setNotename(cursor.getString(2));
                contact.setTime(cursor.getString(3));

                // Adding contact to list
                contactList.add(contact);
            } while (cursor.moveToNext());
        }

        // return contact list
        return contactList;
    }
    }
	//public Cursor getAllRecords() {
		//return database.query(TABLE_NAME, null, null, null, null, null,
			//	REVIEWER_ID);

		// Alternative to demonstrate rawQuery()
		// return database.rawQuery("SELECT * FROM details ORDER BY reviewerID",
	// null);
		 
		       
		// Alternative demonstrating some of the other parameters
		// return database.query(TABLE_NAME, new String[] {"_id", NAME_COL,
		// DATE_OF_BIRTH_COL, EMAIL_COL},
		// "name like ?" , new String [] {"g%"}, null, null, NAME_COL);


*/

	public void addEstablishment(Establishment Establishment) {
		// TODO Auto-generated method stub
		
	}


	public List<com.example.farejudgeapp.Establishment> getReviewerid() {
		// TODO Auto-generated method stub
		return null;
	
	}

	// get all the rows of the details table ordered by the name column
	//public Cursor getFilteredRecords(String filter) {
		// return database.query(TABLE_NAME, null, null, null, null, null,
		// NAME_COL);

		// Alternative to demonstrate rawQuery()
		// return database.rawQuery("SELECT * FROM details ORDER BY name",
		// null);

		// Alternative demonstrating some of the other parameters
	//	return database.query(TABLE_NAME, new String[] { "_id", NAME_COL,
		//		DATE_OF_BIRTH_COL, EMAIL_COL }, "name like ?",
		//		new String[] { filter + "%" }, null, null, NAME_COL);

	//}

}