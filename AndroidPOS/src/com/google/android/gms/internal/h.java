// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            v, f, ay, la, 
//            q, i, m, n, 
//            o, cp, j, k, 
//            qx, p, lf, qr, 
//            e, l, gs

public final class h
    implements android.view.ViewTreeObserver.OnGlobalLayoutListener, android.view.ViewTreeObserver.OnScrollChangedListener
{

    private final Object a;
    private final WeakReference b;
    private WeakReference c;
    private final WeakReference d;
    private final f e;
    private final Context f;
    private final q g;
    private boolean h;
    private final WindowManager i;
    private final PowerManager j;
    private final KeyguardManager k;
    private p l;
    private boolean m;
    private boolean n;
    private final BlockingQueue o;
    private long p;
    private boolean q;
    private boolean r;
    private BroadcastReceiver s;
    private final HashSet t;

    public h(Context context, ay ay1, la la1, View view, gs gs)
    {
        this(ay1, la1, gs, view, ((q) (new v(context, gs))));
    }

    private h(ay ay1, la la1, gs gs, View view, q q1)
    {
        a = new Object();
        m = false;
        n = false;
        o = new ArrayBlockingQueue(2);
        p = 0x8000000000000000L;
        t = new HashSet();
        b = new WeakReference(la1);
        d = new WeakReference(view);
        c = new WeakReference(null);
        q = true;
        e = new f(UUID.randomUUID().toString(), gs, ay1.b, la1.j);
        g = q1;
        i = (WindowManager)view.getContext().getSystemService("window");
        j = (PowerManager)view.getContext().getApplicationContext().getSystemService("power");
        k = (KeyguardManager)view.getContext().getSystemService("keyguard");
        f = view.getContext().getApplicationContext();
        q1.a("https://googleads.g.doubleclick.net/mads/static/sdk/native/sdk-core-v40.html");
        g.a(new i(this, view));
        q q2 = g;
        q2.a("/updateActiveView", new m(this));
        q2.a("/untrackActiveViewUnit", new n(this));
        q2.a("/visibilityChanged", new o(this));
        q2.a("/viewabilityChanged", cp.a);
        try
        {
            JSONObject jsonobject = a(view);
            o.add(new j(this, jsonobject));
        }
        catch (Throwable throwable) { }
        o.add(new k(this));
        (new StringBuilder("Tracking ad unit: ")).append(e.d());
    }

    private static int a(int i1, DisplayMetrics displaymetrics)
    {
        float f1 = displaymetrics.density;
        return (int)((float)i1 / f1);
    }

    private JSONObject a(View view)
    {
        int ai[] = new int[2];
        int ai1[] = new int[2];
        view.getLocationOnScreen(ai);
        view.getLocationInWindow(ai1);
        JSONObject jsonobject = k();
        DisplayMetrics displaymetrics = view.getContext().getResources().getDisplayMetrics();
        Rect rect = new Rect();
        rect.left = ai[0];
        rect.top = ai[1];
        rect.right = rect.left + view.getWidth();
        rect.bottom = rect.top + view.getHeight();
        Rect rect1 = new Rect();
        rect1.right = i.getDefaultDisplay().getWidth();
        rect1.bottom = i.getDefaultDisplay().getHeight();
        Rect rect2 = new Rect();
        boolean flag = view.getGlobalVisibleRect(rect2, null);
        Rect rect3 = new Rect();
        boolean flag1 = view.getLocalVisibleRect(rect3);
        Rect rect4 = new Rect();
        view.getHitRect(rect4);
        JSONObject jsonobject1 = jsonobject.put("viewBox", (new JSONObject()).put("top", a(rect1.top, displaymetrics)).put("bottom", a(rect1.bottom, displaymetrics)).put("left", a(rect1.left, displaymetrics)).put("right", a(rect1.right, displaymetrics))).put("adBox", (new JSONObject()).put("top", a(rect.top, displaymetrics)).put("bottom", a(rect.bottom, displaymetrics)).put("left", a(rect.left, displaymetrics)).put("right", a(rect.right, displaymetrics))).put("globalVisibleBox", (new JSONObject()).put("top", a(rect2.top, displaymetrics)).put("bottom", a(rect2.bottom, displaymetrics)).put("left", a(rect2.left, displaymetrics)).put("right", a(rect2.right, displaymetrics))).put("globalVisibleBoxVisible", flag).put("localVisibleBox", (new JSONObject()).put("top", a(rect3.top, displaymetrics)).put("bottom", a(rect3.bottom, displaymetrics)).put("left", a(rect3.left, displaymetrics)).put("right", a(rect3.right, displaymetrics))).put("localVisibleBoxVisible", flag1).put("hitBox", (new JSONObject()).put("top", a(rect4.top, displaymetrics)).put("bottom", a(rect4.bottom, displaymetrics)).put("left", a(rect4.left, displaymetrics)).put("right", a(rect4.right, displaymetrics))).put("windowVisibility", view.getWindowVisibility()).put("screenDensity", displaymetrics.density);
        boolean flag2;
        if (view.getVisibility() == 0 && view.isShown() && j.isScreenOn() && !k.inKeyguardRestrictedInputMode())
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        jsonobject1.put("isVisible", flag2).put("isStopped", n).put("isPaused", m);
        if (qx.c())
        {
            jsonobject.put("isAttachedToWindow", view.isAttachedToWindow());
        }
        return jsonobject;
    }

    static boolean a(h h1)
    {
        h1.h = true;
        return true;
    }

    static f b(h h1)
    {
        return h1.e;
    }

    private void j()
    {
        if (l != null)
        {
            l.a(this);
        }
    }

    private JSONObject k()
    {
        JSONObject jsonobject = new JSONObject();
        jsonobject.put("afmaVersion", e.b()).put("activeViewJSON", e.c()).put("timestamp", lf.a().b().b()).put("adFormat", e.a()).put("hashCode", e.d());
        return jsonobject;
    }

    protected final void a()
    {
        ArrayList arraylist = new ArrayList();
        o.drainTo(arraylist);
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); ((Runnable)iterator.next()).run()) { }
    }

    public final void a(e e1)
    {
        t.add(e1);
    }

    public final void a(p p1)
    {
        synchronized (a)
        {
            l = p1;
        }
    }

    protected final void a(JSONObject jsonobject)
    {
        try
        {
            JSONArray jsonarray = new JSONArray();
            JSONObject jsonobject1 = new JSONObject();
            jsonarray.put(jsonobject);
            jsonobject1.put("units", jsonarray);
            g.a("AFMA_updateActiveView", jsonobject1);
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    protected final void a(boolean flag)
    {
        for (Iterator iterator = t.iterator(); iterator.hasNext(); ((e)iterator.next()).a(flag)) { }
    }

    protected final boolean a(Map map)
    {
        if (map == null)
        {
            return false;
        }
        String s1 = (String)map.get("hashCode");
        return !TextUtils.isEmpty(s1) && s1.equals(e.d());
    }

    protected final void b()
    {
label0:
        {
            IntentFilter intentfilter;
            synchronized (a)
            {
                if (s == null)
                {
                    break label0;
                }
            }
            return;
        }
        intentfilter = new IntentFilter();
        intentfilter.addAction("android.intent.action.SCREEN_ON");
        intentfilter.addAction("android.intent.action.SCREEN_OFF");
        s = new l(this);
        f.registerReceiver(s, intentfilter);
        obj;
        JVM INSTR monitorexit ;
    }

    protected final void b(boolean flag)
    {
        long l1;
label0:
        {
            synchronized (a)
            {
                if (h && q)
                {
                    break label0;
                }
            }
            return;
        }
        l1 = lf.a().b().b();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        if (200L + p <= l1)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        obj;
        JVM INSTR monitorexit ;
        return;
        la la1;
        View view;
        p = l1;
        la1 = (la)b.get();
        view = (View)d.get();
        boolean flag1;
        JSONException jsonexception;
        View view1;
        ViewTreeObserver viewtreeobserver;
        ViewTreeObserver viewtreeobserver1;
        if (view != null && la1 != null)
        {
            flag1 = false;
        } else
        {
            flag1 = true;
        }
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_124;
        }
        d();
        obj;
        JVM INSTR monitorexit ;
        return;
        try
        {
            a(a(view));
        }
        // Misplaced declaration of an exception variable
        catch (JSONException jsonexception) { }
        view1 = (View)d.get();
        if (view1 == null)
        {
            break MISSING_BLOCK_LABEL_202;
        }
        viewtreeobserver = (ViewTreeObserver)c.get();
        viewtreeobserver1 = view1.getViewTreeObserver();
        if (viewtreeobserver1 == viewtreeobserver)
        {
            break MISSING_BLOCK_LABEL_202;
        }
        c = new WeakReference(viewtreeobserver1);
        viewtreeobserver1.addOnScrollChangedListener(this);
        viewtreeobserver1.addOnGlobalLayoutListener(this);
        j();
        obj;
        JVM INSTR monitorexit ;
    }

    protected final void c()
    {
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        ViewTreeObserver viewtreeobserver = (ViewTreeObserver)c.get();
        if (viewtreeobserver == null)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        if (viewtreeobserver.isAlive())
        {
            break MISSING_BLOCK_LABEL_85;
        }
_L2:
        synchronized (a)
        {
            if (s != null)
            {
                f.unregisterReceiver(s);
                s = null;
            }
        }
        q = false;
        Exception exception;
        try
        {
            g.c();
        }
        catch (Throwable throwable) { }
        j();
        obj;
        JVM INSTR monitorexit ;
        return;
        viewtreeobserver.removeOnScrollChangedListener(this);
        viewtreeobserver.removeGlobalOnLayoutListener(this);
        if (true) goto _L2; else goto _L1
_L1:
        exception;
        throw exception;
        exception1;
        obj1;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    public final void d()
    {
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        if (!q)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        r = true;
        Exception exception;
        try
        {
            JSONObject jsonobject = k();
            jsonobject.put("doneReasonCode", "u");
            a(jsonobject);
        }
        catch (JSONException jsonexception) { }
        (new StringBuilder("Untracking ad unit: ")).append(e.d());
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected final void e()
    {
        b(false);
    }

    public final boolean f()
    {
        boolean flag;
        synchronized (a)
        {
            flag = q;
        }
        return flag;
    }

    public final void g()
    {
        synchronized (a)
        {
            n = true;
            b(false);
            g.a();
        }
    }

    public final void h()
    {
        synchronized (a)
        {
            m = true;
            b(false);
            g.a();
        }
    }

    public final void i()
    {
        synchronized (a)
        {
            g.b();
            m = false;
            b(false);
        }
    }

    public final void onGlobalLayout()
    {
        b(false);
    }

    public final void onScrollChanged()
    {
        b(true);
    }
}
