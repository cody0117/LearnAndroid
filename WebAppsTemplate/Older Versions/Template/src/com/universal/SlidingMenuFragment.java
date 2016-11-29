package com.universal;

import java.util.ArrayList;
import java.util.List;

import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;
import com.universal.R;
import com.universal.fav.ui.FavActivity;
import com.universal.maps.MapActivity;
import com.universal.media.ui.MediaActivity;
import com.universal.rss.ui.RssActivity;
import com.universal.tumblr.ui.TumblrActivity;
import com.universal.twi.ui.TweetsActivity;
import com.universal.web.WebviewActivity;
import com.universal.wordpress.ui.WordpressActivity;
import com.universal.yt.ui.VideosActivity;

import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;

import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ExpandableListView;
import android.widget.ImageButton;

public class SlidingMenuFragment extends Fragment implements ExpandableListView.OnChildClickListener {
    
	/**
	 * This activity is used to add values to our sliding menu
	 * 
	 * This document contains:
	 * -Required information for the items & app content
	 * -Sliding menu content (sections & items)
	 * 
	 * Notations:
	 * -It is recommended to only edit the required areas
	 */
	private SlidingMenu slidingMenu ;
	
    ExpandableListView sectionListView;
    
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
            Bundle savedInstanceState) {
        
        List<Section> sectionList = createMenu();
                
        View view = inflater.inflate(R.layout.slidingmenu_fragment, container, false);
        this.sectionListView = (ExpandableListView) view.findViewById(R.id.slidingmenu_view);
        this.sectionListView.setGroupIndicator(null);
        
        SectionListAdapter sectionListAdapter = new SectionListAdapter(this.getActivity(), sectionList);
        this.sectionListView.setAdapter(sectionListAdapter); 
        
        this.sectionListView.setOnGroupClickListener(new ExpandableListView.OnGroupClickListener() {
              @Override
              public boolean onGroupClick(ExpandableListView parent, View v, int groupPosition, long id) {
                return true;
              }
            });
        
        this.sectionListView.setOnChildClickListener(this);
        
        int count = sectionListAdapter.getGroupCount();
        for (int position = 0; position < count; position++) {
            this.sectionListView.expandGroup(position);
        }
        
        Button itembtn = (Button) view.findViewById(R.id.myItems);
        itembtn.setOnClickListener(new OnClickListener() {
                @Override
                public void onClick(View arg0) {
                	startActivity(new Intent(getActivity(), FavActivity.class));
                }
        });
        

        ImageButton settingsbtn = (ImageButton) view.findViewById(R.id.settings);
        settingsbtn.setOnClickListener(new OnClickListener() {
                @Override
                public void onClick(View arg0) {
                	startActivity(new Intent(getActivity(), SettingsActivity.class));
                }
        });
        
        return view;
    }

    static List<Section> createMenu() {
        List<Section> sectionList = new ArrayList<Section>();
        
        //Tag 1 - Do not edit above this line

        Section oPoliceSection = new Section("Android Police", null);
        Section oWordpressSection = new Section("Wordpress of MOMA", null);
        Section oOtherSection = new Section("Other", null);
        
        //Tag 2
        
        oPoliceSection.addSectionItem("Twitter", null, TweetsActivity.class, "TWITTER_USERNAME", "AndroidPolice");
        
        oPoliceSection.addSectionItem("Uploaded Videos", null, VideosActivity.class, "YOUTUBE_CONTENT", "UU7V6hW6xqPAiUfataAZZtWA,UC7V6hW6xqPAiUfataAZZtWA");
        oPoliceSection.addSectionItem("Liked Videos", null, VideosActivity.class, "YOUTUBE_CONTENT", "LL7V6hW6xqPAiUfataAZZtWA");
        
        oPoliceSection.addSectionItem("News", null, RssActivity.class, "RSS_URL", "http://feeds.feedburner.com/AndroidPolice");
        oPoliceSection.addSectionItem("Tip Us", null, WebviewActivity.class, "WEB_URL", "http://www.androidpolice.com/contact/");
        
        oWordpressSection.addSectionItem("Recent Posts", null, WordpressActivity.class, "WORDPRESS_API_URL", "http://androidpolice.com/api/");
        oWordpressSection.addSectionItem("Category: Conservation", null, WordpressActivity.class, "WORDPRESS_API_URL", "http://moma.org/wp/inside_out/api/,conservation");
        
        oOtherSection.addSectionItem("Wallpaper Tumblr", null, TumblrActivity.class, "TUMBLR_USERNAME", "android-backgrounds");
        
        oOtherSection.addSectionItem("Maps", null, MapActivity.class, "MAPS_CONF", "maps_1");
        
        oOtherSection.addSectionItem("3FM Radio", null, MediaActivity.class, "RADIO_URL", "http://stream.three.fm:8000/live.m3u");
        
        //Tag 3   
        sectionList.add(oPoliceSection);
        sectionList.add(oWordpressSection);
        sectionList.add(oOtherSection);
        
        //Tag 4 - Do not edit below this line    
        return sectionList;

    }

    @Override
    public boolean onChildClick(ExpandableListView parent, View v,
            int groupPosition, int childPosition, long id) {
    	
    	slidingMenu = new SlidingMenu(getActivity());
    	this.slidingMenu.toggle();
    	
    	SectionItem oSectionItem = SlidingMenuFragment.createMenu().get(groupPosition).getSectionItems().get(childPosition);
    	
    	Class<?> activity = oSectionItem.getActivity();
    	String name = oSectionItem.getName();
    	String value = oSectionItem.getValue();
    	
    	startActivity(new Intent(getActivity(), activity).putExtra(name, value));
        
        return false;
    }
    
}