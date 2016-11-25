package com.news.molinews.bean;

/**
 * Created by 代波 on 2016/8/25.
 */
public class Data {
    private String thumbnail;
    private String title;
    private String url;

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Data() {
    }

    public Data(String thumbnail, String title, String url) {
        this.thumbnail = thumbnail;
        this.title = title;
        this.url = url;
    }

    @Override
    public String toString() {
        return "Data{" +
                "thumbnail='" + thumbnail + '\'' +
                ", title='" + title + '\'' +
                ", url='" + url + '\'' +
                '}';
    }
}
