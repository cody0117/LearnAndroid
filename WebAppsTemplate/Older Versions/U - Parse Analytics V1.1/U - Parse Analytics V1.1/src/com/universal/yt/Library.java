package com.universal.yt;

import java.io.Serializable;
import java.util.List;

/**
 * This class holds all user videos
 */

@SuppressWarnings("serial")
public class Library implements Serializable{
	// The username of the owner of the library
	private String user;
	// A list of videos that the user owns
	private List<Video> videos;
	
	public Library(String user, List<Video> videos) {
		this.user = user;
		this.videos = videos;
	}

	public String getUser() {
		return user;
	}

	public List<Video> getVideos() {
		return videos;
	}
}