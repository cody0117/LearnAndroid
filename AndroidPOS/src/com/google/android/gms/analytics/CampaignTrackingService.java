// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.analytics;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import java.io.IOException;
import java.io.OutputStream;

// Referenced classes of package com.google.android.gms.analytics:
//            d

public class CampaignTrackingService extends IntentService
{

    public CampaignTrackingService()
    {
        super("CampaignIntentService");
    }

    public static void a(Context context, Intent intent)
    {
        String s = intent.getStringExtra("referrer");
        try
        {
            java.io.FileOutputStream fileoutputstream = context.openFileOutput("gaInstallData", 0);
            fileoutputstream.write(s.getBytes());
            fileoutputstream.close();
            d.b("Stored campaign information.");
            return;
        }
        catch (IOException ioexception)
        {
            d.a("Error storing install campaign.");
        }
    }

    public void onHandleIntent(Intent intent)
    {
        a(this, intent);
    }
}
