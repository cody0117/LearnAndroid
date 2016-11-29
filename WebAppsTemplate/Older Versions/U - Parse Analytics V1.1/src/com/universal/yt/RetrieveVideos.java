package com.universal.yt;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.universal.R;
import com.universal.yt.ui.VideosActivity;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.widget.Toast;


/**
 * This is class gets the videos from youtube and parses the result
 *
 */
public class RetrieveVideos implements Runnable {
	public static final String LIBRARY = "Library";
	private final Handler replyTo;
	private final String apiUrl;

	//what is called to retrieve videos
	public RetrieveVideos(Handler replyTo, String apiUrl) {
		this.replyTo = replyTo;
		this.apiUrl = apiUrl;
	}
	
	@Override
	public void run() {
		try {
			HttpClient client = new DefaultHttpClient();
			HttpUriRequest request = new HttpGet(apiUrl);
			HttpResponse response = client.execute(request);
			String jsonString = convertToString(response.getEntity().getContent());
			JSONObject json = new JSONObject(jsonString);

			JSONArray jsonArray = json.getJSONObject("data").getJSONArray("items");
			
			// Create a list to store the videos in
			List<Video> videos = new ArrayList<Video>();
			for (int i = 0; i < jsonArray.length(); i++) {
				JSONObject jsonObject;
				if (apiUrl.contains("playlists")) {
					jsonObject = jsonArray.getJSONObject(i).getJSONObject("video");
				}else {
					jsonObject = jsonArray.getJSONObject(i);
				}
				String title = jsonObject.getString("title");
				String id = jsonObject.getString("id");
				String updated = jsonObject.getString("updated");
				String description = jsonObject.getString("description");
				String url;
				try {
					url = jsonObject.getJSONObject("player").getString("mobile");
				} catch (JSONException ignore) {
					url = jsonObject.getJSONObject("player").getString("default");
				}
				// For a sharper thumbnail change sq to hq, this will make the app slower though
				String thumbUrl = jsonObject.getJSONObject("thumbnail").getString("sqDefault");
				
				// save the video to the list
				videos.add(new Video(title, url, id, updated, description, thumbUrl));
			}
			Library lib = new Library("videoslist", videos);
			Bundle data = new Bundle();
			data.putSerializable(LIBRARY, lib);
			
			Message msg = Message.obtain();
			msg.setData(data);
			try {
			replyTo.sendMessage(msg);
			} catch (Exception e){
		    doThis();
			}
			
		// catch and excute doThis
		} catch (ClientProtocolException e) {
			Log.v("YoutubeUserVideosTask", "ClientProtocolException");
			doThis();
		} catch (IOException e) {
			Log.v("YoutubeUserVideosTask", "IOException");
			doThis();
		} catch (JSONException e) {
			Log.v("YoutubeUserVideosTask", "JSONException");
			doThis();
		}
	
	}
	
	// show the user a toast
	public void doThis() {
		VideosActivity.runOnUI(new Runnable() {
	        public void run() {
	           Toast.makeText(VideosActivity.getAppContext(), VideosActivity.getAppContext().getResources().getString(R.string.video_get_failed), Toast.LENGTH_SHORT).show();
	           VideosActivity.progressDialog.dismiss();
	        }
	    });
	}
	
   // Converting an inputstream to a more readable string
	public static String convertToString(InputStream inputStream) throws IOException {
		if (inputStream != null) {
			Writer writer = new StringWriter();

			char[] buffer = new char[1024];
			try {
				Reader reader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"), 1024);
				int n;
				while ((n = reader.read(buffer)) != -1) {
					writer.write(buffer, 0, n);
				}
			} finally {
				inputStream.close();
			}
			return writer.toString();
		} else {
			return "";
		}
	}
	
	
	
}