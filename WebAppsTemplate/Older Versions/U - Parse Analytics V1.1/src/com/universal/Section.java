package com.universal;

import java.util.ArrayList;
import java.util.List;

/**
 *  This class is used to store information about the section headers in our slidingmenu
 */

public class Section {

    private String title;
    private String icon;
    private List<SectionItem> sectionItems = new ArrayList<SectionItem>();

    public Section(String title, String icon) {
        this.title = title;
        this.icon = icon;
    }

    public void addSectionItem(String title, String icon, Class<?> activity, String name, String value) {
        this.sectionItems.add( new SectionItem(title, icon, activity, name, value));
    }
    
    public String getTitle() {
        return title;
    }
    
    public String getIcon() {
        return icon;
    }

    //setTitle, Icon are unsed, but can be used for setting items in the future
    public void setTitle(String title) {
        this.title = title;
    }
    
    public void setIcon(String icon) {
        this.icon = icon;
    }
    
    public List<SectionItem> getSectionItems() {
        return sectionItems;
    }
    
    public void setSectionItems(List<SectionItem> sectionItems) {
        this.sectionItems = sectionItems;
    }
}