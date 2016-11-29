package com.universal.yt;

import java.util.List;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.PauseOnScrollListener;
import com.universal.R;
//import com.universal.yt.ui.widget.UrlImageView;
import com.universal.yt.ui.VideosActivity;

/**
 * Setting our custom listview rows with the retrieved videos
 */
public class VideosAdapter extends BaseAdapter {

	List<Video> videos;

	private LayoutInflater mInflater;	
	private VideosListView listView;

	public VideosAdapter(Context context, List<Video> videos) {
		this.videos = videos;
		this.mInflater = LayoutInflater.from(context);
	}

	@Override
	public int getCount() {
		return videos.size();
	}

	@Override
	public Object getItem(int position) {
		return videos.get(position);
	}

	@Override
	public long getItemId(int position) {
		return position;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		// If convertView wasn't null it means we have already set it to our list_item_user_video so no need to do it again
		
		ViewHolder holder;

		if(convertView == null){
		    convertView = mInflater.inflate(R.layout.activity_youtube_row, null);
		
		    holder = new ViewHolder();
		    holder.title= (TextView) convertView.findViewById(R.id.userVideoTitleTextView);
		    holder.date = (TextView) convertView.findViewById(R.id.userVideoDateTextView);
		    holder.thumb =(ImageView) convertView.findViewById(R.id.userVideoThumbImageView);
		    convertView.setTag(holder);
		
		} else {
            holder = (ViewHolder) convertView.getTag();
        }
		final Video video = videos.get(position);

		if(video != null){

			// Set the title for the video
			holder.title.setText(video.getTitle());
			// Set the date for the video
			holder.date.setText(video.getUpdated());
			
			// Get imageloader
			ImageLoader imageLoader = ImageLoader.getInstance();
			
			//Getting the listview and making sure it won't load anything on scroll
			LayoutInflater inflater = (LayoutInflater) VideosActivity.getAppContext()
		    .getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		    View v = inflater.inflate(R.layout.activity_youtube, null);
		    
		    listView = (VideosListView) v.findViewById(R.id.videosListView);

		    //pausing on scrolling the listview
			boolean pauseOnScroll = false; // or true
			boolean pauseOnFling = true; // or false
			PauseOnScrollListener listener = new PauseOnScrollListener(imageLoader, pauseOnScroll, pauseOnFling);
			listView.setOnScrollListener(listener);
			
		    //setting the image
			imageLoader.displayImage(video.getThumbUrl(), holder.thumb);

		}
		return convertView;
	
	}

	static class ViewHolder {
		  TextView title;
		  TextView date;
		  ImageView thumb;
		  int position;
    }

}