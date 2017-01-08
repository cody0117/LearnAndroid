// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bugsense.trace;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONObject;

// Referenced classes of package com.bugsense.trace:
//            BugSenseHandler, G

public class BugSense
{

    private static ExecutorService executor = Executors.newFixedThreadPool(1);

    public BugSense()
    {
    }

    protected static ExecutorService getExecutor()
    {
        com/bugsense/trace/BugSense;
        JVM INSTR monitorenter ;
        ExecutorService executorservice;
        if (executor == null)
        {
            executor = Executors.newFixedThreadPool(1);
        }
        executorservice = executor;
        com/bugsense/trace/BugSense;
        JVM INSTR monitorexit ;
        return executorservice;
        Exception exception;
        exception;
        throw exception;
    }

    protected static void showUpgradeNotification(Context context, String s)
    {
        if (BugSenseHandler.I_WANT_TO_DEBUG)
        {
            G.TAG;
            (new StringBuilder("Show notification: ")).append(s);
        }
        if (s == null || s.length() <= 5) goto _L2; else goto _L1
_L1:
        NotificationManager notificationmanager;
        JSONObject jsonobject;
        String s1;
        String s2;
        notificationmanager = (NotificationManager)context.getSystemService("notification");
        jsonobject = new JSONObject((new JSONObject(s)).getString("data"));
        s1 = jsonobject.getString("tickerText");
        if (BugSenseHandler.locTicker == null || BugSenseHandler.locTicker.length() <= 1)
        {
            break MISSING_BLOCK_LABEL_295;
        }
        s2 = BugSenseHandler.locTicker;
_L7:
        long l;
        Resources resources;
        int i;
        l = System.currentTimeMillis();
        resources = context.getResources();
        i = resources.getIdentifier("ic_launcher", "drawable", context.getPackageName());
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_145;
        }
        i = resources.getIdentifier("icon", "drawable", context.getPackageName());
        Notification notification;
        String s3;
        notification = new Notification(i, s2, l);
        notification.flags = 16;
        s3 = jsonobject.getString("contentTitle");
        if (BugSenseHandler.locTitle == null || BugSenseHandler.locTitle.length() <= 1) goto _L4; else goto _L3
_L3:
        String s4 = BugSenseHandler.locTitle;
_L6:
        String s5 = jsonobject.getString("contentText");
        if (BugSenseHandler.locText != null && BugSenseHandler.locText.length() > 1)
        {
            s5 = BugSenseHandler.locText;
        }
        notification.setLatestEventInfo(context, s4, s5, PendingIntent.getActivity(context, 0, new Intent("android.intent.action.VIEW", Uri.parse(jsonobject.getString("url"))), 0x10000000));
        notificationmanager.notify(1, notification);
_L2:
        return;
        Exception exception;
        exception;
        G.TAG;
        if (!BugSenseHandler.I_WANT_TO_DEBUG) goto _L2; else goto _L5
_L5:
        exception.printStackTrace();
        return;
_L4:
        s4 = s3;
          goto _L6
        s2 = s1;
          goto _L7
    }

}
