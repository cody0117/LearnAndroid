package com.news.molinews.adapter;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;


import com.news.molinews.Fragment.FirstpageFragment;

import java.util.List;

/**
 * tablayout 的适配器
 */
public class MainTabAdapter extends FragmentPagerAdapter{

    private List<FirstpageFragment> mList_fragment;
    private String[] mList_title;

    public MainTabAdapter(FragmentManager fm,List<FirstpageFragment> list_fragment,String[] list_title) {
        super(fm);

        mList_fragment= list_fragment;
        mList_title = list_title;
    }

    @Override
    public Fragment getItem(int position) {
        return mList_fragment.get(position);
    }

    @Override
    public int getCount() {
        return mList_fragment.size();
    }

    @Override
    public CharSequence getPageTitle(int position) {
        return mList_title[position];
    }
}
