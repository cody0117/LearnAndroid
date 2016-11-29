package com.universal;

public class SectionItem {
	
	/**
	 *  This class is used to save our slidingmenu list items
	 */

    private long id;
    private String title;
    private String icon;
    private Class<?> activity;
    private String name;
    private String value;

    public SectionItem(String title, String icon, Class<?> activity, String name, String value) {
        //this.id = id;
        this.title = title;
        this.icon = icon;
        this.activity = activity;
        this.name = name;
        this.value = value;
    }
    
    public long getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }
    
    public String getIcon() {
        return icon;
    }
    
    public Class<?> getActivity() {
    	return activity;
    }
    
    public String getName() {
    	return name;
    }
    
    public String getValue() {
    	return value;
    }

    //setTitle, Icon, etc are unused, but can be used for setting items in the future
    public void setIcon(String icon) {
        this.icon = icon;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }

    public void setId(long id) {
        this.id = id;
    }
}