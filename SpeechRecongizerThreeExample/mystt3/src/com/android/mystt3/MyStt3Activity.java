package com.android.mystt3;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.speech.RecognitionListener;
import android.speech.RecognizerIntent;
import android.speech.SpeechRecognizer;
import android.widget.Button;
import android.widget.TextView;
import java.util.ArrayList;
import android.util.Log;

public class MyStt3Activity extends Activity implements OnClickListener {
    
    private TextView mText;
	private SpeechRecognizer sr;
	private static final String TAG = "MyStt3Activity";

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.main);

        Button speakButton = (Button) findViewById(R.id.btn_speak);
        mText = (TextView) findViewById(R.id.text);

        speakButton.setOnClickListener(this);

		sr = SpeechRecognizer.createSpeechRecognizer(this);
		sr.setRecognitionListener(new listener());
    }

	class listener implements RecognitionListener
	{
	    public void onReadyForSpeech(Bundle params) 
		{
			Log.d(TAG, "onReadyForSpeech");
		}
	    public void onBeginningOfSpeech()
		{
			Log.d(TAG, "onBeginningOfSpeech");
		}
	    public void onRmsChanged(float rmsdB)
		{
			Log.d(TAG, "onRmsChanged");
		}
	    public void onBufferReceived(byte[] buffer)
		{
			Log.d(TAG, "onBufferReceived");
		}
	    public void onEndOfSpeech() 
		{
			Log.d(TAG, "onEndofSpeech");
		}
	    public void onError(int error) 
		{
			Log.d(TAG,  "error " +  error);
			mText.setText("error " + error);
		}
	    public void onResults(Bundle results) 
		{
			String str = new String();
			Log.d(TAG, "onResults " + results);
			ArrayList<String> data = results.getStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION);
			for (int i = 0; i < data.size(); i++)
			{
				Log.d(TAG, "result " + data.get(i));
				str += data.get(i);
			}
			mText.setText(str);
		}
	    public void onPartialResults(Bundle partialResults) 
		{
			Log.d(TAG, "onPartialResults");
		}
	    public void onEvent(int eventType, Bundle params) 
		{
			Log.d(TAG, "onEvent " + eventType);
		}
	}

    public void onClick(View v) {
        if (v.getId() == R.id.btn_speak) {
			sr.startListening(new Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH));
        }
    }
}

