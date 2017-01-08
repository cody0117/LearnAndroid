package com.guoshisp.mobilesafe.utils;

import android.content.Context;

public class DensityUtil {
    /** 
     * �ھڤ�����ѪR�ױq dp ����� �ন�� px(����) 
     */  
    public static int dip2px(Context context, float dpValue) {  
        final float scale = context.getResources().getDisplayMetrics().density;  
        return (int) (dpValue * scale + 0.5f);  
    }  
  
    /** 
     * �ھڤ�����ѪR�ױq px(����) ����� �ন�� dp 
     */  
    public static int px2dip(Context context, float pxValue) {  
        final float scale = context.getResources().getDisplayMetrics().density;  
        return (int) (pxValue / scale + 0.5f);  
    }  
}
