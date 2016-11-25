package com.news.molinews.Utils;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;

import com.news.molinews.View.CommonProgressDialog;

/**
 * 弹窗工具类
 */
public class ProgressDialogUtils {


    private CommonProgressDialog dialog;
    private Activity activity;

    //显示方法
    public void showPorgressDialog(Activity activity,String msg){
        this.activity = activity;
             if (dialog == null){
                dialog = new CommonProgressDialog(activity);
            }
            if (msg == null) {
                msg = "正在加载...";
            }
        if (!activity.isFinishing() && !dialog.isShowing()) {
            dialog.show();
        }

        dialog.setMessage(msg);

    }


    //关闭方法
    public void closeProgressDialog(){
        if (dialog != null && !activity.isFinishing()) {
            dialog.dismiss();
            dialog = null;
        }
    }
}
