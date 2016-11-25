package com.news.molinews;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;

public class MsgDetailActivity extends AppCompatActivity {

    WebView webView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_msg_detail);

        webView = (WebView) findViewById(R.id.webView_msgDetail);

        //打开页面时，自适应屏幕
        WebSettings webSettings = webView.getSettings();
        webSettings.setUseWideViewPort(true); //可任意比例缩放



        int position = getIntent().getIntExtra("position",0);
        String url = getUrlByPosition(position);

        webView.loadUrl(url);


        Toolbar toolbar  = (Toolbar) findViewById(R.id.toolbar_msg);


        setSupportActionBar(toolbar);

        //设置返回键可用
        getSupportActionBar().setHomeButtonEnabled(true);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);


        //设置回退按钮的事件
        toolbar.setNavigationOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
            }
        });

    }

    private String getUrlByPosition(int position) {
        String oldUrl = getIntent().getStringExtra("url");
        StringBuilder url = new StringBuilder();

        //获取网页形式路径中的数字
        String num = getMainNum(oldUrl);
        switch (position){
            case 0://要闻
                //http://inews.ifeng.com/49938097/news.shtml
                    url = url.append("http://inews.ifeng.com/").append(num).append("/news.shtml");
                break;
            case 1://财经
                //http://istock.ifeng.com/14868184/news.shtml
                url = url.append("http://istock.ifeng.com/").append(num).append("/news.shtml");
                break;
            case 2://娱乐
                //http://ient.ifeng.com/?srctag=xzydh2
                url = url.append("http://ient.ifeng.com/").append(num).append("/news.shtml");
                break;
            case 3://奥运
                //http://isports.ifeng.com/49938164/news.shtml
                url = url.append("http://isports.ifeng.com/").append(num).append("/news.shtml");
                break;
            case 4://军事
                url = url.append("http://imil.ifeng.com/").append(num).append("/news.shtml");
                break;
            case 5://科技
                url = url.append("http://itech.ifeng.com/").append(num).append("/news.shtml");
                break;
            case 6://历史
                //http://ihistory.ifeng.com/?srctag=xzydh12
                url = url.append("http://ihistory.ifeng.com/").append(num).append("/news.shtml");
                break;
        }


        return url.toString();
    }

    //截取中间数字的方法
    private String getMainNum(String oldUrl) {
        oldUrl = oldUrl.substring(oldUrl.lastIndexOf("/")+1,oldUrl.lastIndexOf("."));
        if (oldUrl.contains("_")) {
            oldUrl = oldUrl.substring(0,oldUrl.lastIndexOf("_"));
        }
        return oldUrl;
    }
}
