package com.universal;

import java.util.ArrayList;
import java.util.List;

import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;
import com.universal.R;
import com.universal.fav.ui.FavActivity;
import com.universal.maps.MapActivity;
import com.universal.media.ui.MediaActivity;
import com.universal.rss.ui.RssActivity;
import com.universal.twi.ui.TweetsActivity;
import com.universal.web.WebviewActivity;
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

        Section oTwitterSection = new Section("Twitter", null);
        Section oYoutubeSection = new Section("Youtube", null);
        Section oRssSection = new Section("Rss", null);
        Section oWebviewSection = new Section("Web", null);
        Section oOtherSection = new Section("Other", null);
        
        //Tag 2
        
        oTwitterSection.addSectionItem("NYTimes", null, TweetsActivity.class, "TWITTER_USERNAME", "nytimes");
        oTwitterSection.addSectionItem("A Googler", null, TweetsActivity.class, "TWITTER_USERNAME", "google");
        
        //For an username use user: for a playlist list:
        oYoutubeSection.addSectionItem("New York Times videos", null, VideosActivity.class, "YOUTUBE_CONTENT", "user:TheNewYorkTimes");
        oYoutubeSection.addSectionItem("Favorite videos", null, VideosActivity.class, "YOUTUBE_CONTENT", "list:PL4CGYNsoW2iAcAdAti7QjlGhN32I-U3C1");
        
        oRssSection.addSectionItem("Android Police", null, RssActivity.class, "RSS_URL", "http://feeds.feedburner.com/AndroidPolice?format=xml");
        
        oWebviewSection.addSectionItem("Google", null, WebviewActivity.class, "WEB_URL", "http://google.com");
        
        oOtherSection.addSectionItem("Maps", null, MapActivity.class, null, null);
        oOtherSection.addSectionItem("Radio", null, MediaActivity.class, "RADIO_URL", "http://icecast.omroep.nl/radio1-bb-mp3");
        
        //Tag 3   
        sectionList.add(oTwitterSection);
        sectionList.add(oYoutubeSection);
        sectionList.add(oRssSection);
        sectionList.add(oWebviewSection);
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