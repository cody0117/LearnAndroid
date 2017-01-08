// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.analytics.tracking.android;

import android.app.IntentService;
import android.content.Intent;
import java.io.IOException;
import java.io.OutputStream;

// Referenced classes of package com.google.analytics.tracking.android:
//            Log

public final class CampaignTrackingService extends IntentService
{

    public CampaignTrackingService()
    {
        super("CampaignIntentService");
    }

    public CampaignTrackingService(String s)
    {
        super(s);
    }

    protected final void onHandleIntent(Intent intent)
    {
        String s = intent.getStringExtra("referrer");
        try
        {
            java.io.FileOutputStream fileoutputstream = openFileOutput("gaInstallData", 0);
            fileoutputstream.write(s.getBytes());
            fileoutputstream.close();
            return;
        }
        catch (IOException ioexception)
        {
            Log.e("Error storing install campaign.");
        }
    }
}
