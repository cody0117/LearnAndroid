// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.util;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentFilter;
import android.telephony.SmsManager;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.util:
//            t, u

public final class s
{

    public static void a(Activity activity, String s1, String s2)
    {
        PendingIntent pendingintent = PendingIntent.getBroadcast(activity, 0, new Intent("SENT_SMS_ACTION"), 0);
        activity.registerReceiver(new t(activity), new IntentFilter("SENT_SMS_ACTION"));
        PendingIntent pendingintent1 = PendingIntent.getBroadcast(activity, 0, new Intent("DELIVERED_SMS_ACTION"), 0);
        activity.registerReceiver(new u(activity), new IntentFilter("DELIVERED_SMS_ACTION"));
        SmsManager smsmanager = SmsManager.getDefault();
        for (Iterator iterator = smsmanager.divideMessage(s1).iterator(); iterator.hasNext(); smsmanager.sendTextMessage(s2, null, (String)iterator.next(), pendingintent, pendingintent1)) { }
    }
}
