package com.dvstudio.RestaurantPOSMakeEasy;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import com.firebase.client.Firebase;
import com.parse.ParseUser;
import com.dvstudio.readme.R;

public class LoginOrSignupActivity extends Activity {
		
	public static final String TYPE = "type";
	public static final String LOGIN = "Log In";
	public static final String SIGNUP = "Sign Up";

    private static final String FIREBASE_URL = "https://vivid-heat-248.firebaseio.com/zzz";
    private Firebase mFirebaseRef;

	protected Button mLoginButton;
	protected Button mSignupButton;


	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_login_or_signup);
		
		mLoginButton = (Button) findViewById(R.id.button1);
		mSignupButton = (Button) findViewById(R.id.button2);

        //mFirebaseRef = new Firebase(FIREBASE_URL).child("restaurantmakeeasy");
		/*
		 * Check for cached user using ParseUser.getCurrentUser()
		 */
		if (ParseUser.getCurrentUser() != null) {
			Intent intent = new Intent(this, MainFeedActivity.class);
			intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
			startActivity(intent);
		}
		else {		
			mLoginButton.setOnClickListener(new View.OnClickListener() {
				@Override
				public void onClick(View v) {
					Intent intent = new Intent(LoginOrSignupActivity.this, AuthenticateActivity.class);
					intent.putExtra(TYPE, LOGIN);
					startActivity(intent);
				}
			});
			
			mSignupButton.setOnClickListener(new View.OnClickListener() {
				@Override
				public void onClick(View v) {
					Intent intent = new Intent(LoginOrSignupActivity.this, AuthenticateActivity.class);
					intent.putExtra(TYPE, SIGNUP);
					startActivity(intent);
				}
			});
		}		
	}
}