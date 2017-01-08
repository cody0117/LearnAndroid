// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            gs, lq, ly, mv, 
//            mw, mi, ml, mh, 
//            ay, fi, qa

public final class mg extends WebView
    implements DownloadListener
{

    private final mi a;
    private final mh b;
    private final Object c = new Object();
    private final qa d;
    private final gs e;
    private fi f;
    private ay g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private final WindowManager l = (WindowManager)getContext().getSystemService("window");

    private mg(mh mh1, ay ay1, boolean flag, boolean flag1, qa qa1, gs gs1)
    {
        super(mh1);
        b = mh1;
        g = ay1;
        h = flag;
        d = qa1;
        e = gs1;
        setBackgroundColor(0);
        WebSettings websettings = getSettings();
        websettings.setJavaScriptEnabled(true);
        websettings.setSavePassword(false);
        websettings.setSupportMultipleWindows(true);
        websettings.setJavaScriptCanOpenWindowsAutomatically(true);
        lq.a(mh1, gs1.b, websettings);
        if (android.os.Build.VERSION.SDK_INT >= 17)
        {
            ly.a(getContext(), websettings);
            websettings.setMediaPlaybackRequiresUserGesture(false);
        } else
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            ly.a(getContext(), websettings);
        }
        setDownloadListener(this);
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            a = new mv(this, flag1);
        } else
        {
            a = new mi(this, flag1);
        }
        setWebViewClient(a);
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            setWebChromeClient(new mw(this));
        } else
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            setWebChromeClient(new ml(this));
        }
        l();
    }

    public static mg a(Context context, ay ay1, boolean flag, boolean flag1, qa qa1, gs gs1)
    {
        return new mg(new mh(context), ay1, flag, flag1, qa1, gs1);
    }

    private void a(String s)
    {
        synchronized (c)
        {
            if (!o())
            {
                loadUrl(s);
            }
        }
    }

    private void l()
    {
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
        if (!h && !g.e) goto _L2; else goto _L1
_L1:
        if (android.os.Build.VERSION.SDK_INT >= 14) goto _L4; else goto _L3
_L3:
        m();
_L5:
        return;
_L4:
        n();
          goto _L5
        Exception exception;
        exception;
        throw exception;
_L2:
label0:
        {
            if (android.os.Build.VERSION.SDK_INT >= 18)
            {
                break label0;
            }
            m();
        }
          goto _L5
        n();
          goto _L5
    }

    private void m()
    {
        synchronized (c)
        {
            if (!i && android.os.Build.VERSION.SDK_INT >= 11)
            {
                setLayerType(1, null);
            }
            i = true;
        }
    }

    private void n()
    {
        synchronized (c)
        {
            if (i && android.os.Build.VERSION.SDK_INT >= 11)
            {
                setLayerType(0, null);
            }
            i = false;
        }
    }

    private boolean o()
    {
        boolean flag;
        synchronized (c)
        {
            flag = j;
        }
        return flag;
    }

    public final void a()
    {
        if (!a.b())
        {
            return;
        }
        DisplayMetrics displaymetrics = new DisplayMetrics();
        Display display = l.getDefaultDisplay();
        display.getMetrics(displaymetrics);
        int i1 = lq.c(getContext());
        float f1 = 160F / (float)displaymetrics.densityDpi;
        int j1 = Math.round(f1 * (float)displaymetrics.widthPixels);
        int k1 = Math.round(f1 * (float)(displaymetrics.heightPixels - i1));
        try
        {
            b("onScreenInfoChanged", (new JSONObject()).put("width", j1).put("height", k1).put("density", displaymetrics.density).put("rotation", display.getRotation()));
            return;
        }
        catch (JSONException jsonexception)
        {
            return;
        }
    }

    public final void a(Context context)
    {
        b.setBaseContext(context);
    }

    public final void a(Context context, ay ay1)
    {
        synchronized (c)
        {
            b.setBaseContext(context);
            f = null;
            g = ay1;
            h = false;
            k = false;
            lq.b(this);
            loadUrl("about:blank");
            a.d();
            setOnTouchListener(null);
            setOnClickListener(null);
        }
    }

    public final void a(ay ay1)
    {
        synchronized (c)
        {
            g = ay1;
            requestLayout();
        }
    }

    public final void a(fi fi1)
    {
        synchronized (c)
        {
            f = fi1;
        }
    }

    public final void a(String s, Map map)
    {
        JSONObject jsonobject;
        try
        {
            jsonobject = lq.a(map);
        }
        catch (JSONException jsonexception)
        {
            return;
        }
        b(s, jsonobject);
    }

    public final void a(String s, JSONObject jsonobject)
    {
        if (jsonobject == null)
        {
            jsonobject = new JSONObject();
        }
        String s1 = jsonobject.toString();
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append((new StringBuilder("javascript:")).append(s).append("(").toString());
        stringbuilder.append(s1);
        stringbuilder.append(");");
        a(stringbuilder.toString());
    }

    public final void a(boolean flag)
    {
        synchronized (c)
        {
            h = flag;
            l();
        }
    }

    public final void b()
    {
        HashMap hashmap = new HashMap(1);
        hashmap.put("version", e.b);
        a("onhide", hashmap);
    }

    public final void b(String s, JSONObject jsonobject)
    {
        if (jsonobject == null)
        {
            jsonobject = new JSONObject();
        }
        String s1 = jsonobject.toString();
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("javascript:AFMA_ReceiveMessage('");
        stringbuilder.append(s);
        stringbuilder.append("'");
        stringbuilder.append(",");
        stringbuilder.append(s1);
        stringbuilder.append(");");
        (new StringBuilder("Dispatching AFMA event: ")).append(stringbuilder);
        a(stringbuilder.toString());
    }

    public final void b(boolean flag)
    {
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
        if (f == null)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        f.a(flag);
_L2:
        return;
        k = flag;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public final void c()
    {
        HashMap hashmap = new HashMap(1);
        hashmap.put("version", e.b);
        a("onshow", hashmap);
    }

    public final fi d()
    {
        fi fi1;
        synchronized (c)
        {
            fi1 = f;
        }
        return fi1;
    }

    public final void destroy()
    {
        synchronized (c)
        {
            if (f != null)
            {
                f.a();
            }
            j = true;
            super.destroy();
        }
    }

    public final ay e()
    {
        ay ay1;
        synchronized (c)
        {
            ay1 = g;
        }
        return ay1;
    }

    public final void evaluateJavascript(String s, ValueCallback valuecallback)
    {
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
        if (!o())
        {
            break MISSING_BLOCK_LABEL_28;
        }
        if (valuecallback == null)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        valuecallback.onReceiveValue(null);
        obj;
        JVM INSTR monitorexit ;
        return;
        super.evaluateJavascript(s, valuecallback);
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final mi f()
    {
        return a;
    }

    public final boolean g()
    {
        return k;
    }

    public final qa h()
    {
        return d;
    }

    public final gs i()
    {
        return e;
    }

    public final boolean j()
    {
        boolean flag;
        synchronized (c)
        {
            flag = h;
        }
        return flag;
    }

    public final Context k()
    {
        return b.a();
    }

    public final void onDownloadStart(String s, String s1, String s2, String s3, long l1)
    {
        try
        {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(s), s3);
            getContext().startActivity(intent);
            return;
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            (new StringBuilder("Couldn't find an Activity to view url/mimetype: ")).append(s).append(" / ").append(s3);
        }
    }

    protected final void onMeasure(int i1, int j1)
    {
        int k1;
        int i2;
        int j2;
        int k2;
label0:
        {
            k1 = 0x7fffffff;
            int l1;
            float f1;
            synchronized (c)
            {
                if (!isInEditMode() && !h)
                {
                    break label0;
                }
                super.onMeasure(i1, j1);
            }
            return;
        }
        l1 = android.view.View.MeasureSpec.getMode(i1);
        i2 = android.view.View.MeasureSpec.getSize(i1);
        j2 = android.view.View.MeasureSpec.getMode(j1);
        k2 = android.view.View.MeasureSpec.getSize(j1);
        break MISSING_BLOCK_LABEL_61;
_L3:
        if (g.g <= l2 && g.d <= k1)
        {
            break MISSING_BLOCK_LABEL_235;
        }
        f1 = b.getResources().getDisplayMetrics().density;
        (new StringBuilder("Not enough space to show ad. Needs ")).append((int)((float)g.g / f1)).append("x").append((int)((float)g.d / f1)).append(" dp, but only has ").append((int)((float)i2 / f1)).append("x").append((int)((float)k2 / f1)).append(" dp.");
        if (getVisibility() != 8)
        {
            setVisibility(4);
        }
        setMeasuredDimension(0, 0);
_L1:
        obj;
        JVM INSTR monitorexit ;
        return;
        if (getVisibility() != 8)
        {
            setVisibility(0);
        }
        setMeasuredDimension(g.g, g.d);
          goto _L1
        int l2;
        if (l1 != 0x80000000 && l1 != 0x40000000)
        {
            l2 = k1;
        } else
        {
            l2 = i2;
        }
        if (j2 == 0x80000000 || j2 == 0x40000000)
        {
            k1 = k2;
        }
        if (true) goto _L3; else goto _L2
_L2:
    }

    public final boolean onTouchEvent(MotionEvent motionevent)
    {
        if (d != null)
        {
            d.a(motionevent);
        }
        return super.onTouchEvent(motionevent);
    }
}
