// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Context;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            bt, nx, ah, aa, 
//            mg, qx, af, ac, 
//            ab, hz, ae

public final class ad extends Thread
{

    private boolean a;
    private boolean b;
    private boolean c;
    private final Object d = new Object();
    private final ac e;
    private final ab f;
    private final hz g;
    private final int h;
    private final int i;
    private final int j;
    private final int k;
    private final int l;

    public ad(ac ac1, ab ab1, Bundle bundle, hz hz1)
    {
        a = false;
        b = false;
        c = false;
        e = ac1;
        f = ab1;
        g = hz1;
        i = bundle.getInt(bt.j.a());
        j = bundle.getInt(bt.k.a());
        k = bundle.getInt(bt.l.a());
        l = bundle.getInt(bt.m.a());
        h = bundle.getInt(bt.n.a(), 10);
        setName("ContentFetchTask");
    }

    private ah a(View view, aa aa1)
    {
        int i1 = 0;
        if (view == null)
        {
            return new ah(this, 0, 0);
        }
        if ((view instanceof TextView) && !(view instanceof EditText))
        {
            aa1.b(((TextView)view).getText().toString());
            return new ah(this, 1, 0);
        }
        if ((view instanceof WebView) && !(view instanceof mg))
        {
            aa1.e();
            WebView webview = (WebView)view;
            boolean flag;
            if (!qx.c())
            {
                flag = false;
            } else
            {
                aa1.e();
                webview.post(new af(this, aa1, webview));
                flag = true;
            }
            if (flag)
            {
                return new ah(this, 0, 1);
            } else
            {
                return new ah(this, 0, 0);
            }
        }
        if (view instanceof ViewGroup)
        {
            ViewGroup viewgroup = (ViewGroup)view;
            int j1 = 0;
            int k1 = 0;
            for (; i1 < viewgroup.getChildCount(); i1++)
            {
                ah ah1 = a(viewgroup.getChildAt(i1), aa1);
                k1 += ah1.a;
                j1 += ah1.b;
            }

            return new ah(this, k1, j1);
        } else
        {
            return new ah(this, 0, 0);
        }
    }

    private boolean e()
    {
        Context context;
        ActivityManager activitymanager;
        KeyguardManager keyguardmanager;
        PowerManager powermanager;
        List list;
        Iterator iterator;
        android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo;
        boolean flag;
        try
        {
            context = e.b();
        }
        catch (Throwable throwable)
        {
            return false;
        }
        if (context == null)
        {
            return false;
        }
        activitymanager = (ActivityManager)context.getSystemService("activity");
        keyguardmanager = (KeyguardManager)context.getSystemService("keyguard");
        powermanager = (PowerManager)context.getSystemService("power");
        if (activitymanager == null || keyguardmanager == null || powermanager == null)
        {
            break MISSING_BLOCK_LABEL_155;
        }
        list = activitymanager.getRunningAppProcesses();
        if (list == null)
        {
            return false;
        }
        iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_150;
            }
            runningappprocessinfo = (android.app.ActivityManager.RunningAppProcessInfo)iterator.next();
        } while (Process.myPid() != runningappprocessinfo.pid);
        if (runningappprocessinfo.importance != 100 || keyguardmanager.inKeyguardRestrictedInputMode())
        {
            break MISSING_BLOCK_LABEL_150;
        }
        flag = powermanager.isScreenOn();
        if (flag)
        {
            return true;
        }
        return false;
        return false;
    }

    public final void a()
    {
label0:
        {
            synchronized (d)
            {
                if (!a)
                {
                    break label0;
                }
            }
            return;
        }
        a = true;
        obj;
        JVM INSTR monitorexit ;
        start();
        return;
        exception;
        throw exception;
    }

    final void a(View view)
    {
        aa aa1;
        ah ah1;
        aa1 = new aa(i, j, k, l);
        ah1 = a(view, aa1);
        aa1.f();
        if (ah1.a == 0 && ah1.b == 0)
        {
            return;
        }
        try
        {
            if ((ah1.b != 0 || aa1.h() != 0) && (ah1.b != 0 || !f.a(aa1)))
            {
                f.c(aa1);
                return;
            }
        }
        catch (Exception exception)
        {
            g.a(exception);
        }
        return;
    }

    final void a(aa aa1, WebView webview, String s)
    {
        aa1.d();
        String s1;
        if (!TextUtils.isEmpty(s))
        {
            s1 = (new JSONObject(s)).optString("text");
            if (TextUtils.isEmpty(webview.getTitle()))
            {
                break MISSING_BLOCK_LABEL_85;
            }
            aa1.a((new StringBuilder()).append(webview.getTitle()).append("\n").append(s1).toString());
        }
_L2:
        if (aa1.a())
        {
            f.b(aa1);
            return;
        }
        break MISSING_BLOCK_LABEL_108;
        aa1.a(s1);
        if (true) goto _L2; else goto _L1
_L1:
        JSONException jsonexception;
        jsonexception;
        return;
        Throwable throwable;
        throwable;
        g.a(throwable);
    }

    public final aa b()
    {
        return f.a();
    }

    public final void c()
    {
        synchronized (d)
        {
            b = false;
            Object _tmp = d;
        }
    }

    public final boolean d()
    {
        return b;
    }

    public final void run()
    {
_L9:
        if (c)
        {
            break; /* Loop/switch isn't completed */
        }
        if (!e()) goto _L2; else goto _L1
_L1:
        Activity activity = e.a();
        if (activity == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (activity == null)
        {
            break MISSING_BLOCK_LABEL_108;
        }
        Window window = activity.getWindow();
        View view;
        view = null;
        if (window == null)
        {
            break MISSING_BLOCK_LABEL_82;
        }
        View view1 = activity.getWindow().getDecorView();
        view = null;
        if (view1 == null)
        {
            break MISSING_BLOCK_LABEL_82;
        }
        view = activity.getWindow().getDecorView().findViewById(0x1020002);
        if (view == null || view == null)
        {
            break MISSING_BLOCK_LABEL_108;
        }
        view.post(new ae(this, view));
_L6:
        Thread.sleep(1000 * h);
_L7:
        Object obj = d;
        obj;
        JVM INSTR monitorenter ;
_L5:
        boolean flag = b;
        if (!flag) goto _L4; else goto _L3
_L3:
        Throwable throwable;
        Exception exception;
        try
        {
            d;
        }
        catch (InterruptedException interruptedexception) { }
        finally
        {
            obj;
        }
        if (true) goto _L5; else goto _L4
_L2:
        synchronized (d)
        {
            b = true;
            (new StringBuilder("ContentFetchThread: paused, mPause = ")).append(b);
        }
          goto _L6
        exception1;
        obj1;
        JVM INSTR monitorexit ;
        throw exception1;
        throwable;
        g.a(throwable);
          goto _L7
_L4:
        obj;
        JVM INSTR monitorexit ;
        if (true) goto _L9; else goto _L8
_L8:
        if (false) goto _L11; else goto _L10
_L11:
        JVM INSTR monitorexit ;
        throw exception;
_L10:
    }
}
