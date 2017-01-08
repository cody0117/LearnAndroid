package com.dvstudio.RestaurantPOSMakeEasy;

import android.app.Application;

import com.firebase.client.Firebase;
import com.parse.Parse;
import com.parse.ParseACL;

public class MainApplication extends Application {

	@Override
	public void onCreate() {
		super.onCreate();

		/*
		 * Add Parse initialization code here
		 */

		// TODO: Add your own application ID and client key!
        Parse.initialize(this, "xDdPikco8RiJlBfpioXyHJJniEFO9ZuS2mspnkLw", "Hp1ZOocXnMYSIVDESdHoMNLWebUofl2I2XxTIWiA");

		ParseACL defaultACL = new ParseACL();

		// If you would like all objects to be private by default, remove this
		// line.
		defaultACL.setPublicReadAccess(true);

		ParseACL.setDefaultACL(defaultACL, true);

        //Add Firebase
        Firebase.setAndroidContext(this);
	}
}
