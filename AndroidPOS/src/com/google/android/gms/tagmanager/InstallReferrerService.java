// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.analytics.CampaignTrackingService;

// Referenced classes of package com.google.android.gms.tagmanager:
//            w

public final class InstallReferrerService extends IntentService
{

    CampaignTrackingService a;
    Context b;

    public InstallReferrerService()
    {
        super("InstallReferrerService");
    }

    protected final void onHandleIntent(Intent intent)
    {
        String s = intent.getStringExtra("referrer");
        Context context;
        if (b != null)
        {
            context = b;
        } else
        {
            context = getApplicationContext();
        }
        w.a(context, s);
        if (a == null)
        {
            a = new CampaignTrackingService();
        }
        CampaignTrackingService _tmp = a;
        CampaignTrackingService.a(context, intent);
    }
}
