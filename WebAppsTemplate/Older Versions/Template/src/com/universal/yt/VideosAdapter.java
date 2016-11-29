package com.universal.yt;

import java.util.List;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

import com.nostra13.universalimageloader.core.ImageLoader;
import com.universal.MainActivity;
import com.universal.R;

/**
 * Setting our custom listview rows with the retrieved videos
 */
public class VideosAdapter extends  ArrayAdapter<Video> {

	List<Video> videos;

	private LayoutInflater mInflater;	
	@SuppressWarnings("unused")
	private ListView mListView;
	private Context mContext;

	public VideosAdapter(Context context, Integer something, List<Video> videos, ListView listView) {
		super(context, something, videos);
		this.mContext = context;
		this.videos = videos;
		this.mInflater = LayoutInflater.from(context);
		this.mListView = listView;
	}

	@Override
	public int getCount() {
		return videos.size();
	}

	@Override
	public Video getItem(int position) {
		return videos.get(position);
	}

	@Override
	public long getItemId(int position) {
		return position;
	}

	@SuppressLint("InflateParams")
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
			ImageLoader imageLoader = MainActivity.initializeImageLoader(mContext);

		    //pausing on scrolling the listview
			//boolean pauseOnScroll = false; // or true
			//boolean pauseOnFling = true; // or false
			//PauseOnScrollListener listener = new PauseOnScrollListener(imageLoader, pauseOnScroll, pauseOnFling);
			//mListView.setOnScrollListener(listener);
			
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