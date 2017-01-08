package com.zyquest.octpoc;

import java.util.List;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.speech.RecognizerIntent;
import android.speech.SpeechRecognizer;
import android.util.Log;
import android.view.View;
import android.widget.Toast;

import android.speech.tts.TextToSpeech;
import android.widget.Switch;
import android.widget.TextView;
import root.gast.speech.SpeechRecognitionUtil;
import root.gast.speech.SpeechRecognizingAndSpeakingActivity;
import root.gast.speech.RecognizerIntentFactory;

//public class OctPocMainActivity extends Activity
public class OctPocMainActivity extends SpeechRecognizingAndSpeakingActivity
{
    private static final String TAG = "OctPocMainActivity";
    private static final int BUFFER_SIZE = 1000;

	private Switch mSwitch1;
	private TextView mText1;
	
	private StringBuilder sbHeard = new StringBuilder(BUFFER_SIZE);

	@Override
	protected void onCreate(Bundle savedInstanceState)
	{
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_oct_poc_main);

		mSwitch1 = (Switch) findViewById(R.id.switch1);
		mText1 = (TextView) findViewById(R.id.text1);

		checkVoiceRecognition();
	}

	public void checkVoiceRecognition()
	{
		// Check if voice recognition is present
		PackageManager pm = getPackageManager();
		List<ResolveInfo> activities = pm.queryIntentActivities(new Intent(
				RecognizerIntent.ACTION_RECOGNIZE_SPEECH), 0);
		if (activities.size() == 0)
		{
			mSwitch1.setEnabled(false);
			mSwitch1.setText("Voice recognizer not present");
			Toast.makeText(this, "Voice recolgnizer not present",
					Toast.LENGTH_SHORT).show();
		}
	}

	public void switch1_onClick(View view)
	{
		Log.d(TAG, "switch1_onClick");
		if (mSwitch1.isChecked())
		{
			doRecognize();
		}
		else
		{
			;
		}
	}

	@Override
	protected void receiveWhatWasHeard(List<String> heard,
			float[] confidenceScores)
	{
		String strHeard = heard.get(0);
		
		Log.d(TAG, "receiveWhatWasHeard: " + strHeard);
		
		if (sbHeard.length() + strHeard.length() > BUFFER_SIZE-1)
		{
			sbHeard.setLength(0);
		}
		sbHeard.append(" ").append(strHeard);
		
		checkForCliche(sbHeard.toString());
		
		mText1.setText(sbHeard);
		
		if (mSwitch1.isChecked())
		{
			doRecognize();
		}
	}

	private void doRecognize()
	{
		Log.d(TAG, "doRecognize");
//		recognize(RecognizerIntentFactory.getBlankRecognizeIntent());
		recognizeDirectly(RecognizerIntentFactory.getBlankRecognizeIntent());
	}
	
	private void checkForCliche(String buffer)
	{
		String[] clicheList = new String[] { "開枱","四號"};
		
		for (String cliche:clicheList)
		{
			if (buffer.indexOf(cliche) > -1)
			{
				give_warning(cliche);
			}
		}
	}
	
 	private void give_warning(String cliche)
	{
		getTts().speak("收到",
				TextToSpeech.QUEUE_ADD, null);
	}


	@Override
    protected void recognitionFailure(int errorCode)
    {
        String message = SpeechRecognitionUtil.diagnoseErrorCode(errorCode);

		switch (errorCode)
		{
			case SpeechRecognizer.ERROR_NO_MATCH:
				getTts().speak("聽吾到",TextToSpeech.QUEUE_ADD, null);
				break;
			case SpeechRecognizer.ERROR_SPEECH_TIMEOUT:
				Log.d(TAG, "recognitionFailure: " + message);
				doRecognize();
				break;
			default:
		        Log.d(TAG, "recognitionFailure", new RuntimeException(message));
		        break;
		}
    }

}
