package com.teamtreehouse.parseworkshop;

import android.app.Application;

import com.parse.Parse;
import com.parse.ParseACL;
import com.parse.ParseUser;

public class ParseWorkshopApplication extends Application {

	@Override
	public void onCreate() {
		super.onCreate();

		/*
		 * Add Parse initialization code here
		 */

		// TODO: Add your own application ID and client key!
		Parse.initialize(this, "APPLICATION_ID_GOES_HERE", "CLIENT_KEY_GOES_HERE");

		ParseACL defaultACL = new ParseACL();

		// If you would like all objects to be private by default, remove this
		// line.
		defaultACL.setPublicReadAccess(true);

		ParseACL.setDefaultACL(defaultACL, true);
	}
}
