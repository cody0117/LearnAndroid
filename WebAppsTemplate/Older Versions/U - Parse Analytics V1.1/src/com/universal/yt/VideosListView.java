package com.universal.yt;

import java.util.List;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;


/**
 * Onclicklistener for the videos, and storing the listview
 */
public class VideosListView extends ListView implements android.widget.AdapterView.OnItemClickListener {

	private List<Video> videos;
	private VideoClickListener videoClickListener;

	public VideosListView(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
	}

	public VideosListView(Context context, AttributeSet attrs) {
		super(context, attrs);
	}

	public VideosListView(Context context) {
		super(context);
	}

	public void setVideos(List<Video> videos){
		this.videos = videos;
		VideosAdapter adapter = new VideosAdapter(getContext(), videos);
		setAdapter(adapter);
		setOnItemClickListener(this);
	}
	
	public void setOnVideoClickListener(VideoClickListener l) {
		videoClickListener = l;
	}
	
	@Override
	public void setAdapter(ListAdapter adapter) {
		super.setAdapter(adapter);
	}

	@Override
	public void onItemClick(AdapterView<?> adapter, View v, int position, long id) {
		if(videoClickListener != null){
			videoClickListener.onVideoClicked(videos.get(position));
		}
	}
	
	//the video click listener interface
	public interface VideoClickListener {

		public void onVideoClicked(Video video);
		
	}

}