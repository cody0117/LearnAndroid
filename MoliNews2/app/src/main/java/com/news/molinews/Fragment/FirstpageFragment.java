package com.news.molinews.Fragment;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;

import com.news.molinews.MsgDetailActivity;
import com.news.molinews.R;
import com.news.molinews.Utils.JsonUtils;
import com.news.molinews.Utils.ProgressDialogUtils;
import com.news.molinews.adapter.FirstPageAdapter;
import com.news.molinews.bean.BannerBean;
import com.news.molinews.bean.Data;

import java.util.ArrayList;
import java.util.List;


/**
 * 主界面的fragment
 */
public class FirstpageFragment extends Fragment implements JsonUtils.CallBackListener,SwipeRefreshLayout.OnRefreshListener{
    ProgressDialogUtils utils;
    private List<Data>[] msgList; //存放所有数据的集合数组
    private int mPosition = 0; //记录当前所处的新闻类型
    private int now_num = 7;
    private BannerBean mBannerBean;
    private int lastVisibleItem = 0; //记录recyclerView最后一个位置

    private List<Data> mData_item = new ArrayList(); //存储当前显示的数据的集合

    private RecyclerView mRecyclerView;
    private SwipeRefreshLayout swipe;

    private FirstPageAdapter adapter;

    private JsonUtils jsonUtils;

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {

        View v = getActivity().getLayoutInflater().inflate(R.layout.fragment_layout,
                (ViewGroup)getActivity().findViewById(R.id.view_pager),false);


        getData();

        mRecyclerView = (RecyclerView) v.findViewById(R.id.recycle_view);
        swipe = (SwipeRefreshLayout) v.findViewById(R.id.swipe);

        swipe.setOnRefreshListener(this);
        swipe.setColorSchemeResources(android.R.color.holo_red_light,android.R.color.holo_blue_bright);

        adapter = new FirstPageAdapter(getActivity(),mData_item,mBannerBean);
        mRecyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        mRecyclerView.setAdapter(adapter);
        
        initListener();
        return v;
    }

    private void initListener() {

        //item的点击事件
        adapter.setMyItemClickListener(new FirstPageAdapter.OnMyItemClickListener() {
            @Override
            public void onClick(View v, int position) {
                String url = mData_item.get(position-1).getUrl();
                Intent intent = new Intent(getActivity(), MsgDetailActivity.class);
                intent.putExtra("url",url);
                intent.putExtra("position",mPosition);
                startActivity(intent);
            }
        });

        //mRecyclerView的滚动监听事件
        mRecyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() {
            @Override
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                super.onScrollStateChanged(recyclerView, newState);
                if(newState == RecyclerView.SCROLL_STATE_IDLE &&
                        lastVisibleItem+1 == adapter.getItemCount()){
                    mHandler.postDelayed(new Runnable() {
                        @Override
                        public void run() {
                            now_num+=5;
                            initData();
                            swipe.setRefreshing(false);
                        }
                    },1000);
                }
            }

            @Override
            public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
                super.onScrolled(recyclerView, dx, dy);
                LinearLayoutManager lm = (LinearLayoutManager) mRecyclerView.getLayoutManager();
                lastVisibleItem = lm.findLastVisibleItemPosition();
            }
        });
    }


    //回调接口更新UI
    @Override
    public void updateUI(List<Data>[] mDataList) {
        this.msgList = mDataList;
        initData();

        //关闭弹窗
        utils.closeProgressDialog();
    }

    //执行初始化数据以及更新UI操作
    private void initData() {
        if (msgList != null) {
            List<Data> list = msgList[mPosition];
            String[] banner_img = new String[3];
            String[] banner_title = new String[3];
            String[] banner_toPageUrl = new String[3];

            mData_item.clear();

            //给轮播图数据进行初始化
            for (int i= 0; i < 3 ; i++) {
                banner_img[i] = list.get(i).getThumbnail();
                banner_title[i] = list.get(i).getTitle();
                banner_toPageUrl[i] = list.get(i).getUrl();

                mBannerBean.setImg(banner_img);
                mBannerBean.setToPageUrl(banner_toPageUrl);
                mBannerBean.setTitle(banner_title);

            }

            //给recyclerView的item填充数据
            for(int i = 3;i<now_num;i++){
                mData_item.add(list.get(i));
            }
            Log.i("", "initData: ------------>"+now_num);

            adapter.notifyDataSetChanged();

        }
    }

    //获取数据
    public void getData() {
        mBannerBean = new BannerBean();
        utils = new ProgressDialogUtils();
        utils.showPorgressDialog(getActivity(),"loading...");
        jsonUtils = new JsonUtils(this);
        jsonUtils.getResult();

    }

    @Override
    public void onRefresh() {
        Message msg = new Message();
        msg.what = 1;
        mHandler.sendMessageDelayed(msg,2000);
    }

    private Handler mHandler = new Handler(){
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what){
                case 1:
                    //下拉刷新操作
                    now_num = now_num+5;
                    initData();
                    swipe.setRefreshing(false);
                    break;
            }

        }
    };

    //更新position,更新UI
    public void updatePosition(int position){
        mPosition = position;
        initData();
        Log.i("", "updatePosition: ------update-");
    }
}
