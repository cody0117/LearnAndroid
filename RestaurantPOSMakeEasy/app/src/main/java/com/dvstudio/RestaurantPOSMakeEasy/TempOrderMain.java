package com.dvstudio.RestaurantPOSMakeEasy;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;
import android.widget.Toast;

import com.dvstudio.readme.R;
import com.viewpagerindicator.IconPagerAdapter;
import com.viewpagerindicator.TabPageIndicator;

public class TempOrderMain extends FragmentActivity {

    private static final String[] CONTENT = new String[] { "明爐燒味", "'Order", "冷熱飲品", "早餐 /下午茶" };
    private static final int[] ICONS = new int[] {
            R.drawable.perm_group_calendar,
            R.drawable.perm_group_camera,
            R.drawable.perm_group_device_alarms,
            R.drawable.perm_group_location,
    };
    private String tableName;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.simple_tabs);

        FragmentPagerAdapter adapter = new GoogleMusicAdapter(getSupportFragmentManager());

        ViewPager pager = (ViewPager)findViewById(R.id.pager);
        pager.setAdapter(adapter);

        TabPageIndicator indicator = (TabPageIndicator)findViewById(R.id.indicator);
        indicator.setViewPager(pager);

        String extra = getIntent().getExtras().getString("tableName");
        Toast.makeText(getApplicationContext(),extra,
                Toast.LENGTH_LONG).show();

        getActionBar().setTitle(extra);
    }




    class GoogleMusicAdapter extends FragmentPagerAdapter implements IconPagerAdapter {
        public GoogleMusicAdapter(FragmentManager fm) {
            super(fm);
        }



        @Override //Change of fragment to indiviual
        public Fragment getItem(int position) {

          //  String[] tempdate = new String[] {"One", "Two","Three"};
            switch(position) {
                case 0:
                    //JoinTwoFragment fragment = new JoinTwoFragment();
                   MenuItemFragment fragment = new MenuItemFragment();
                    return fragment;

                case 1:
                    MainFeedFragmentWithFireBase fragment2 = new MainFeedFragmentWithFireBase();
                   // TestFragment fragment2 = new TestFragment();
                 //  OrderItemFragment fragment2 = new OrderItemFragment();
                   return fragment2;

                case 2:
                    DrinkItemFragment fragment3 = new DrinkItemFragment();
                    return fragment3;
                default:
                    TestFragment fragment5 = new TestFragment();
                    return fragment5;


            }

            //  return com.dvstudio.RestaurantPOSMakeEasy.TestFragment.newInstance(CONTENT[position % CONTENT.length]);
        }

        @Override
        public CharSequence getPageTitle(int position) {
            return CONTENT[position % CONTENT.length].toUpperCase();
        }

        @Override public int getIconResId(int index) {
            return ICONS[index];
        }

        @Override
        public int getCount() {
            return CONTENT.length;
        }
    }
}
