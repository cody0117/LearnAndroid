package com.universal.wordpress;

import java.util.ArrayList;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.universal.MainActivity;
import com.universal.R;

public class CustomListAdapter extends ArrayAdapter<FeedItem> {

	private ArrayList<FeedItem> listData;

	private LayoutInflater layoutInflater;

	private Context mContext;
	
	public CustomListAdapter(Context context, Integer something, ArrayList<FeedItem> listData) {
		super(context, something, listData);
		this.listData = listData;
		layoutInflater = LayoutInflater.from(context);
		mContext = context;
	}

	@Override
	public int getCount() {
		return listData.size();
	}

	@Override
	public FeedItem getItem(int position) {
		return listData.get(position);
	}

	@Override
	public long getItemId(int position) {
		return position;
	}

	@SuppressLint("InflateParams")
	public View getView(int position, View convertView, ViewGroup parent) {
		ViewHolder holder;
		if (convertView == null) {
			convertView = layoutInflater.inflate(R.layout.activity_wordpress_list_row, null);
			holder = new ViewHolder();
			holder.headlineView = (TextView) convertView.findViewById(R.id.title);
			holder.reportedDateView = (TextView) convertView.findViewById(R.id.date);
			holder.imageView = (ImageView) convertView.findViewById(R.id.thumbImage);
			convertView.setTag(holder);
		} else {
			holder = (ViewHolder) convertView.getTag();
		}

		FeedItem newsItem = (FeedItem) listData.get(position);
		holder.headlineView.setText(newsItem.getTitle());
		holder.reportedDateView.setText(newsItem.getDate());

		ImageLoader imageLoader = MainActivity.initializeImageLoader(mContext);
    
		if (holder.imageView != null) {
			holder.imageView.setImageBitmap(null);
			imageLoader.displayImage(newsItem.getThumbnailUrl(), holder.imageView);
		}
		return convertView;
	}

	static class ViewHolder {
		TextView headlineView;
		TextView reportedDateView;
		ImageView imageView;
	}
}
