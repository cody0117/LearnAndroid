package com.universal.rss;

/**
 *  This class is used to remember rss item data
 */

public class RSSItem {
	
	private String title = null;
	private String description = null;
	private String rowdescription = null;
	private String link = null;
	private String pubdate = null;
	private String thumburl = null;
	
	RSSItem(){
	}
	
	void setTitle(String value)
	{
		title = value;
	}
	void setDescription(String value)
	{
		description = value;
		String html = value;
		html = html.replaceAll("<(.*?)\\>","");//Removes all items in brackets
	    html = html.replaceAll("<(.*?)\\\n","");//Must be undeneath
	    html = html.replaceFirst("(.*?)\\>", "");//Removes any connected item to the last bracket
	    html = html.replaceAll("&nbsp;","");
	    html = html.replaceAll("&amp;","");
	    rowdescription = html;
	}
	void setLink(String value)
	{
		link = value;
	}
	void setPubdate(String value)
	{
		pubdate = value;
	}
	void setThumburl(String value)
	{   
		thumburl = value;
	}
	
	public String getTitle()
	{
		return title;
	}
	public String getDescription()
	{
		return description;
	}
	public String getRowDescription()
	{
		return rowdescription;
	}
	public String getLink()
	{
		return link;
	}
	public String getPubdate()
	{
		return pubdate;
	}
	public String getThumburl()
	{
		return thumburl;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return title;
	}
	
	

}
