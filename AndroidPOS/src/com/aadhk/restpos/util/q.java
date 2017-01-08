// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.util;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Process;
import com.aadhk.product.library.c.l;
import com.aadhk.restpos.LoginActivity;
import com.aadhk.restpos.PaymentActivity;
import com.aadhk.restpos.TableListActivity;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.c.ax;
import com.bugsense.trace.BugSenseHandler;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;

public final class q extends l
{

    public static void a(Activity activity, Order order, Customer customer)
    {
        Intent intent = new Intent(activity, com/aadhk/restpos/PaymentActivity);
        intent.putExtra("bundleOrder", order);
        intent.putExtra("bundleCustomer", customer);
        intent.setFlags(0x4000000);
        activity.startActivity(intent);
    }

    public static void a(Activity activity, Order order, Customer customer, boolean flag)
    {
        Intent intent = new Intent(activity, com/aadhk/restpos/TakeOrderActivity);
        intent.putExtra("bundleOrder", order);
        intent.putExtra("bundleOrdered", flag);
        intent.putExtra("bundleCustomer", customer);
        intent.setFlags(0x4000000);
        activity.startActivity(intent);
    }

    public static void a(Context context)
    {
        Intent intent = new Intent(context, com/aadhk/restpos/LoginActivity);
        intent.setFlags(0x4000000);
        context.startActivity(intent);
    }

    public static void a(Context context, File file, String as[], String s)
    {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.EMAIL", as);
        intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(file));
        intent.putExtra("android.intent.extra.SUBJECT", s);
        context.startActivity(Intent.createChooser(intent, context.getString(0x7f08024b)));
    }

    public static void a(Context context, String s)
    {
        Intent intent = new Intent(context, com/aadhk/restpos/LoginActivity);
        intent.setFlags(0x4000000);
        intent.putExtra("loginAgain", s);
        context.startActivity(intent);
    }

    public static void b(Activity activity)
    {
        Intent intent = new Intent(activity, com/aadhk/restpos/TableListActivity);
        intent.setFlags(0x4000000);
        activity.startActivity(intent);
    }

    public static void b(Activity activity, Order order, Customer customer)
    {
        Intent intent = new Intent(activity, com/aadhk/restpos/TakeOrderActivity);
        intent.putExtra("bundleOrder", order);
        intent.putExtra("bundleCustomer", customer);
        intent.putExtra("bundleOrdered", false);
        intent.setFlags(0x4000000);
        activity.startActivity(intent);
    }

    public static void b(Context context)
    {
        BufferedReader bufferedreader;
        StringBuffer stringbuffer;
        bufferedreader = new BufferedReader(new InputStreamReader(context.getResources().openRawResource(0x7f060004)));
        stringbuffer = new StringBuffer();
_L1:
        String s;
        try
        {
            s = bufferedreader.readLine();
        }
        catch (IOException ioexception)
        {
            BugSenseHandler.sendException(ioexception);
            ioexception.printStackTrace();
            return;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        stringbuffer.append(s);
          goto _L1
        ax ax1 = new ax(context);
        ax1.setTitle(0x7f0803a2);
        ax1.a(stringbuffer.toString());
        ax1.show();
        return;
    }

    public static void c(Activity activity)
    {
        PendingIntent pendingintent = PendingIntent.getActivity(activity, 0x1e240, new Intent(activity, com/aadhk/restpos/LoginActivity), 0x10000000);
        ((AlarmManager)activity.getSystemService("alarm")).set(1, 100L + System.currentTimeMillis(), pendingintent);
        Process.killProcess(Process.myPid());
    }
}
