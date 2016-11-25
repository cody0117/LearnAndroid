package com.news.molinews;

import android.support.design.widget.TabLayout;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;


import com.facebook.drawee.backends.pipeline.Fresco;
import com.news.molinews.Fragment.FirstpageFragment;
import com.news.molinews.adapter.MainTabAdapter;

import java.util.ArrayList;
import java.util.List;

public class MainActivity extends AppCompatActivity {

    private TabLayout mTablayout;   //顶部标题选项布局
    private ViewPager mViewpager;

    private FirstpageFragment mFragment;

    private List<FirstpageFragment> mFirstFraments;//存放fragment的集合
    private String[] mList_title;//存放标题

    private MainTabAdapter mAdapter_title; //标题的适配器
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        //初始化Fresco
        Fresco.initialize(this);

        initData();

        initView();

        initListener();
    }

    private void initListener() {
        mTablayout.setOnTabSelectedListener(new TabLayout.OnTabSelectedListener() {
            @Override
            public void onTabSelected(TabLayout.Tab tab) {
                int position = tab.getPosition();//获取到当前item的位置
                FirstpageFragment f = mFirstFraments.get(position);
                f.updatePosition(position);

            }

            @Override
            public void onTabUnselected(TabLayout.Tab tab) {

            }

            @Override
            public void onTabReselected(TabLayout.Tab tab) {

            }
        });
    }

    private void initData() {
        mList_title  =   getResources().getStringArray(R.array.tab_title);
        mFirstFraments = new ArrayList<>();

        //通过标题个数来创建fragment
        for (int i = 0; i < mList_title.length ; i++) {
            FirstpageFragment first = new FirstpageFragment();
            mFirstFraments.add(first);
        }
    }

    //初始化布局
    private void initView() {
        mTablayout = (TabLayout) findViewById(R.id.tab_title);
        mViewpager = (ViewPager) findViewById(R.id.view_pager);

        mAdapter_title = new MainTabAdapter(getSupportFragmentManager()
                ,mFirstFraments,mList_title);

        mViewpager.setAdapter(mAdapter_title);

        //TabLayout 绑定viewPager
        mTablayout.setupWithViewPager(mViewpager);
    }
}
