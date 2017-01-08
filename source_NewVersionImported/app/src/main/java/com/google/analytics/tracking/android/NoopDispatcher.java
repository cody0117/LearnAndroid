// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.analytics.tracking.android;

import android.text.TextUtils;
import java.util.List;

// Referenced classes of package com.google.analytics.tracking.android:
//            Dispatcher, Log, Hit, HitBuilder

class NoopDispatcher
    implements Dispatcher
{

    NoopDispatcher()
    {
    }

    public int dispatchHits(List list)
    {
        if (list == null)
        {
            return 0;
        }
        Log.iDebug("Hits not actually being sent as dispatch is false...");
        int i = Math.min(list.size(), 40);
        int j = 0;
        do
        {
            while (j < i) 
            {
                if (Log.isDebugEnabled())
                {
                    String s;
                    String s1;
                    if (TextUtils.isEmpty(((Hit)list.get(j)).getHitParams()))
                    {
                        s = "";
                    } else
                    {
                        s = HitBuilder.postProcessHit((Hit)list.get(j), System.currentTimeMillis());
                    }
                    if (TextUtils.isEmpty(s))
                    {
                        s1 = "Hit couldn't be read, wouldn't be sent:";
                    } else
                    if (s.length() <= 2036)
                    {
                        s1 = "GET would be sent:";
                    } else
                    if (s.length() > 8192)
                    {
                        s1 = "Would be too big:";
                    } else
                    {
                        s1 = "POST would be sent:";
                    }
                    Log.iDebug((new StringBuilder()).append(s1).append(s).toString());
                }
                j++;
            }
            return i;
        } while (true);
    }

    public boolean okToDispatch()
    {
        return true;
    }
}
