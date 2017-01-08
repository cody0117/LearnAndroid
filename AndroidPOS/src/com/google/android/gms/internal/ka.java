// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            la, lb, fh, fj, 
//            lt, me, t, q, 
//            kb, ke, kf, kd, 
//            cf, cg, lu, kc, 
//            lz, ts, s

public final class ka
    implements Callable
{

    private final Context a;
    private final lz b;
    private final ts c;
    private final s d;
    private final Object e = new Object();
    private final lb f;
    private boolean g;
    private int h;
    private List i;

    public ka(Context context, ts ts, s s, lz lz1, lb lb1)
    {
        a = context;
        c = ts;
        b = lz1;
        d = s;
        f = lb1;
        g = false;
        h = -2;
        i = null;
    }

    private la a(cg cg1)
    {
        Object obj = e;
        obj;
        JVM INSTR monitorenter ;
        int j = h;
        if (cg1 != null)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        if (h == -2)
        {
            j = 0;
        }
        obj;
        JVM INSTR monitorexit ;
        Exception exception;
        cg cg2;
        if (j != -2)
        {
            cg2 = null;
        } else
        {
            cg2 = cg1;
        }
        return new la(f.a.c, null, f.b.d, j, f.b.f, i, f.b.l, f.b.k, f.a.i, false, null, null, null, null, null, 0L, f.d, f.b.g, f.f, f.g, f.b.o, f.h, cg2);
        exception;
        throw exception;
    }

    private static String[] a(JSONObject jsonobject, String s)
    {
        JSONArray jsonarray = jsonobject.optJSONArray(s);
        if (jsonarray == null)
        {
            return null;
        }
        String as[] = new String[jsonarray.length()];
        for (int j = 0; j < jsonarray.length(); j++)
        {
            as[j] = jsonarray.getString(j);
        }

        return as;
    }

    private la b()
    {
        if (!a()) goto _L2; else goto _L1
_L1:
        q q1 = null;
_L16:
        if (!a()) goto _L4; else goto _L3
_L3:
        JSONObject jsonobject = null;
_L9:
        if (!a()) goto _L6; else goto _L5
_L5:
        Object obj = null;
_L10:
        if (!a()) goto _L8; else goto _L7
_L7:
        cg cg1 = null;
_L11:
        return a(cg1);
_L2:
        q q2;
        s s1 = d;
        Context context = a;
        gs gs = f.a.k;
        lt lt2 = new lt();
        me.a.post(new t(s1, context, gs, lt2, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html"));
        q2 = (q)lt2.get();
        q2.a(c, c, c, c, c);
        q1 = q2;
        continue; /* Loop/switch isn't completed */
_L4:
        lt lt1 = new lt();
        q1.a("/nativeAdPreProcess", new kb(this, q1, lt1));
        q1.a("google.afma.nativeAds.preProcessJsonGmsg", new JSONObject(f.b.c));
        jsonobject = (JSONObject)lt1.get();
          goto _L9
_L6:
        String s;
label0:
        {
            s = jsonobject.getString("template_id");
            if (!"2".equals(s))
            {
                break label0;
            }
            obj = new ke();
        }
          goto _L10
label1:
        {
            if (!"1".equals(s))
            {
                break label1;
            }
            obj = new kf();
        }
          goto _L10
        a(0);
        obj = null;
          goto _L10
_L8:
        String as[] = a(jsonobject.getJSONObject("tracking_urls_and_actions"), "impression_tracking_urls");
        List list;
        if (as != null)
        {
            break MISSING_BLOCK_LABEL_334;
        }
        list = null;
_L12:
        i = list;
        cg1 = ((kd) (obj)).a(this, jsonobject);
        if (cg1 != null)
        {
            break MISSING_BLOCK_LABEL_344;
        }
        cg1 = null;
          goto _L11
        list = Arrays.asList(as);
          goto _L12
        cg1.a(new cf(c, q1, jsonobject));
          goto _L11
        CancellationException cancellationexception;
        cancellationexception;
_L14:
        if (!g)
        {
            a(0);
        }
        return a(((cg) (null)));
        TimeoutException timeoutexception;
        timeoutexception;
        continue; /* Loop/switch isn't completed */
        JSONException jsonexception;
        jsonexception;
        continue; /* Loop/switch isn't completed */
        InterruptedException interruptedexception;
        interruptedexception;
        continue; /* Loop/switch isn't completed */
        ExecutionException executionexception;
        executionexception;
        if (true) goto _L14; else goto _L13
_L13:
        if (true) goto _L16; else goto _L15
_L15:
    }

    public final Future a(JSONObject jsonobject, String s, boolean flag)
    {
        JSONObject jsonobject1;
        String s1;
        if (flag)
        {
            jsonobject1 = jsonobject.getJSONObject(s);
        } else
        {
            jsonobject1 = jsonobject.optJSONObject(s);
        }
        if (jsonobject1 == null)
        {
            jsonobject1 = new JSONObject();
        }
        if (flag)
        {
            s1 = jsonobject1.getString("url");
        } else
        {
            s1 = jsonobject1.optString("url");
        }
        if (TextUtils.isEmpty(s1))
        {
            a(0, flag);
            return new lu();
        } else
        {
            return b.a(s1, new kc(this, flag));
        }
    }

    public final void a(int j)
    {
        synchronized (e)
        {
            g = true;
            h = j;
        }
    }

    public final void a(int j, boolean flag)
    {
        if (flag)
        {
            a(j);
        }
    }

    public final boolean a()
    {
        boolean flag;
        synchronized (e)
        {
            flag = g;
        }
        return flag;
    }

    public final Object call()
    {
        return b();
    }
}
