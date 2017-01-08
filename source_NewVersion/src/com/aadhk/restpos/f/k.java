// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.f;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Process;
import com.aadhk.product.library.c.l;
import com.aadhk.restpos.ListTableActivity;
import com.aadhk.restpos.LoginActivity;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.bean.Order;
import java.io.File;

public final class k extends l
{

    public static void a(Activity activity, Order order, Customer customer)
    {
        Intent intent = new Intent(activity, com/aadhk/restpos/TakeOrderActivity);
        intent.putExtra("bundleOrder", order);
        intent.putExtra("bundleCustomer", customer);
        intent.putExtra("bundleOrdered", false);
        intent.setFlags(0x4000000);
        activity.startActivity(intent);
    }

    public static void a(Activity activity, Order order, boolean flag)
    {
        Intent intent = new Intent(activity, com/aadhk/restpos/TakeOrderActivity);
        intent.putExtra("bundleOrder", order);
        intent.putExtra("bundleOrdered", flag);
        intent.setFlags(0x4000000);
        activity.startActivity(intent);
    }

    public static void a(Context context, File file, String as[], String s)
    {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.EMAIL", as);
        intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(file));
        intent.putExtra("android.intent.extra.SUBJECT", s);
        context.startActivity(Intent.createChooser(intent, context.getString(0x7f090205)));
    }

    public static void a(Context context, String s, String as[], String s1)
    {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/csv");
        intent.putExtra("android.intent.extra.EMAIL", as);
        intent.putExtra("android.intent.extra.SUBJECT", s1);
        intent.putExtra("android.intent.extra.STREAM", Uri.parse((new StringBuilder("file://")).append(s).toString()));
        context.startActivity(Intent.createChooser(intent, context.getString(0x7f090206)));
    }

    public static void c(Activity activity)
    {
        Intent intent = new Intent(activity, com/aadhk/restpos/ListTableActivity);
        intent.setFlags(0x4000000);
        activity.startActivity(intent);
    }

    public static void d(Activity activity)
    {
        PendingIntent pendingintent = PendingIntent.getActivity(activity, 0x1e240, new Intent(activity, com/aadhk/restpos/LoginActivity), 0x10000000);
        ((AlarmManager)activity.getSystemService("alarm")).set(1, 100L + System.currentTimeMillis(), pendingintent);
        Process.killProcess(Process.myPid());
    }
}
