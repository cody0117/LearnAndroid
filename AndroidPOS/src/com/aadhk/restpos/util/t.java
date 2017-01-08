// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.util;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;

final class t extends BroadcastReceiver
{

    final Activity a;

    t(Activity activity)
    {
        a = activity;
        super();
    }

    public final void onReceive(Context context, Intent intent)
    {
        switch (getResultCode())
        {
        case 0: // '\0'
        default:
            return;

        case -1: 
            Toast.makeText(a, "\u77ED\u4FE1\u53D1\u9001\u6210\u529F", 0).show();
            return;

        case 1: // '\001'
            Toast.makeText(a, "\u77ED\u4FE1\u53D1\u9001\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5", 0).show();
            return;

        case 4: // '\004'
            Toast.makeText(a, "\u670D\u52A1\u5F53\u524D\u4E0D\u53EF\u7528", 0).show();
            return;

        case 2: // '\002'
            Toast.makeText(a, "\u7535\u53F0\u88AB\u663E\u5F0F\u5730\u5173\u95ED", 0).show();
            return;

        case 3: // '\003'
            Toast.makeText(a, "\u6CA1\u6709\u63D0\u4F9Bpdu", 0).show();
            return;
        }
    }
}
