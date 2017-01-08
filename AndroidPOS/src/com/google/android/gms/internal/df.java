// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            cz, me, mg, fi, 
//            fq

public final class df
    implements cz
{

    public df()
    {
    }

    private static int a(DisplayMetrics displaymetrics, Map map, String s, int i)
    {
        String s1 = (String)map.get(s);
        if (s1 != null)
        {
            int j;
            try
            {
                j = me.a(displaymetrics, Integer.parseInt(s1));
            }
            catch (NumberFormatException numberformatexception)
            {
                (new StringBuilder("Could not parse ")).append(s).append(" in a video GMSG: ").append(s1);
                return i;
            }
            i = j;
        }
        return i;
    }

    public final void a(mg mg1, Map map)
    {
        String s = (String)map.get("action");
        if (s != null) goto _L2; else goto _L1
_L1:
        fi fi1;
        return;
_L2:
        fq fq1;
        if ((fi1 = mg1.d()) == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        boolean flag = "new".equalsIgnoreCase(s);
        boolean flag1 = "position".equalsIgnoreCase(s);
        if (flag || flag1)
        {
            DisplayMetrics displaymetrics = mg1.getContext().getResources().getDisplayMetrics();
            int i = a(displaymetrics, map, "x", 0);
            int j = a(displaymetrics, map, "y", 0);
            int k = a(displaymetrics, map, "w", -1);
            int l = a(displaymetrics, map, "h", -1);
            if (flag && fi1.b() == null)
            {
                fi1.b(i, j, k, l);
                return;
            } else
            {
                fi1.a(i, j, k, l);
                return;
            }
        }
        fq1 = fi1.b();
        if (fq1 == null)
        {
            fq.a(mg1, "no_video_view", null);
            return;
        }
        if ("click".equalsIgnoreCase(s))
        {
            DisplayMetrics displaymetrics1 = mg1.getContext().getResources().getDisplayMetrics();
            int i1 = a(displaymetrics1, map, "x", 0);
            int j1 = a(displaymetrics1, map, "y", 0);
            long l1 = SystemClock.uptimeMillis();
            MotionEvent motionevent = MotionEvent.obtain(l1, l1, 0, i1, j1, 0);
            fq1.a(motionevent);
            motionevent.recycle();
            return;
        }
        if (!"controls".equalsIgnoreCase(s))
        {
            break; /* Loop/switch isn't completed */
        }
        String s2 = (String)map.get("enabled");
        if (s2 != null)
        {
            fq1.a(Boolean.parseBoolean(s2));
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        if ("currentTime".equalsIgnoreCase(s))
        {
            String s1 = (String)map.get("time");
            if (s1 != null)
            {
                try
                {
                    fq1.a((int)(1000F * Float.parseFloat(s1)));
                    return;
                }
                catch (NumberFormatException numberformatexception)
                {
                    (new StringBuilder("Could not parse time parameter from currentTime video GMSG: ")).append(s1);
                }
                return;
            }
        } else
        {
            if ("hide".equalsIgnoreCase(s))
            {
                fq1.setVisibility(4);
                return;
            }
            if ("load".equalsIgnoreCase(s))
            {
                fq1.b();
                return;
            }
            if ("pause".equalsIgnoreCase(s))
            {
                fq1.c();
                return;
            }
            if ("play".equalsIgnoreCase(s))
            {
                fq1.d();
                return;
            }
            if ("show".equalsIgnoreCase(s))
            {
                fq1.setVisibility(0);
                return;
            }
            if ("src".equalsIgnoreCase(s))
            {
                fq1.a((String)map.get("src"));
                return;
            } else
            {
                (new StringBuilder("Unknown video action: ")).append(s);
                return;
            }
        }
        if (true) goto _L1; else goto _L4
_L4:
    }
}
