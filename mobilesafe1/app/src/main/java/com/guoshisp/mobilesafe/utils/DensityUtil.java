package com.guoshisp.mobilesafe.utils;

import android.content.Context;

public class DensityUtil {
    /** 
     * 根據手機的解析度從 dp 的單位 轉成為 px(像素) 
     */  
    public static int dip2px(Context context, float dpValue) {  
        final float scale = context.getResources().getDisplayMetrics().density;  
        return (int) (dpValue * scale + 0.5f);  
    }  
  
    /** 
     * 根據手機的解析度從 px(像素) 的單位 轉成為 dp 
     */  
    public static int px2dip(Context context, float pxValue) {  
        final float scale = context.getResources().getDisplayMetrics().density;  
        return (int) (pxValue / scale + 0.5f);  
    }  
}
