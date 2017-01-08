// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bugsense.trace;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

// Referenced classes of package com.bugsense.trace:
//            UidManager, G, BugSenseHandler, PingsMechanism, 
//            BugSense

final class val.context
    implements Runnable
{

    final Context val$context;

    public final void run()
    {
        BufferedReader bufferedreader;
        BufferedReader bufferedreader1;
        String s;
        G.UID = UidManager.getUid(val$context);
        File file;
        String s1;
        if (!G.proxyEnabled)
        {
            if (!G.ANALYTICS_URL.contains(G.API_KEY))
            {
                G.ANALYTICS_URL = (new StringBuilder()).append(G.ANALYTICS_URL).append(G.API_KEY).append("/").append(G.UID).toString();
            }
        } else
        {
            G.URL = "http://alt.bugsense.com/api/errors";
            if (!G.ANALYTICS_URL.contains(G.API_KEY))
            {
                G.ANALYTICS_URL = (new StringBuilder("http://alt.bugsense.com/api/ticks/")).append(G.API_KEY).append("/").append(G.UID).toString();
            }
        }
        if (BugSenseHandler.I_WANT_TO_DEBUG)
        {
            G.TAG;
            (new StringBuilder("Crash     URL set to: ")).append(G.URL);
            G.TAG;
            (new StringBuilder("Analytics URL set to: ")).append(G.ANALYTICS_URL);
        }
        PingsMechanism.transmitPingASync(0);
        try
        {
            BugSenseHandler.access$002(val$context.getSharedPreferences(G.TAG, 0));
            BugSenseHandler.access$102(BugSenseHandler.access$000().edit());
            BugSenseHandler.access$100().putLong("lastping", System.currentTimeMillis()).commit();
        }
        catch (Exception exception)
        {
            G.TAG;
            if (BugSenseHandler.I_WANT_TO_DEBUG)
            {
                exception.printStackTrace();
            }
        }
        BugSenseHandler.flush(val$context);
        BugSenseHandler.startSession(val$context);
        file = new File((new StringBuilder()).append(G.FILES_PATH).append("/fixnotification").toString());
        if (!file.exists()) goto _L2; else goto _L1
_L1:
        bufferedreader = new BufferedReader(new FileReader(file.getAbsolutePath()));
        s1 = bufferedreader.readLine();
        bufferedreader1 = bufferedreader;
        s = s1;
_L3:
        Exception exception2;
        if (bufferedreader1 != null)
        {
            try
            {
                bufferedreader1.close();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        }
        if (file.exists())
        {
            file.delete();
        }
        if (s != null && s.length() > 5)
        {
            BugSense.showUpgradeNotification(val$context, s);
        }
_L2:
        return;
        exception2;
        bufferedreader = null;
_L4:
        bufferedreader1 = bufferedreader;
        s = "";
          goto _L3
        Exception exception1;
        exception1;
          goto _L4
    }

    tor()
    {
        val$context = context1;
        super();
    }
}
