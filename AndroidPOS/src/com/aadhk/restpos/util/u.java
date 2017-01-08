// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.util;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;

final class u extends BroadcastReceiver
{

    final Activity a;

    u(Activity activity)
    {
        a = activity;
        super();
    }

    public final void onReceive(Context context, Intent intent)
    {
        Toast.makeText(a, "\u6536\u4FE1\u4EBA\u5DF2\u7ECF\u6210\u529F\u63A5\u6536", 0).show();
    }
}
