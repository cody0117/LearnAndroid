// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Handler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.HashMap;

// Referenced classes of package com.google.android.gms.internal:
//            fe, mg, br, cz, 
//            lq, fi, ay, dr, 
//            db, tz, cn, cp, 
//            de, dd, me, mj, 
//            mk, qn, qa, do, 
//            tr, fp, co, da, 
//            dc, fu

public class mi extends WebViewClient
{

    protected final mg a;
    private final HashMap b;
    private final Object c;
    private tr d;
    private fp e;
    private mk f;
    private co g;
    private boolean h;
    private da i;
    private dc j;
    private boolean k;
    private fu l;
    private final fe m;
    private tz n;

    public mi(mg mg1, boolean flag)
    {
        this(mg1, flag, new fe(mg1, mg1.getContext(), new br(mg1.getContext())));
    }

    private mi(mg mg1, boolean flag, fe fe1)
    {
        b = new HashMap();
        c = new Object();
        h = false;
        a = mg1;
        k = flag;
        m = fe1;
    }

    private void a(Uri uri)
    {
        String s = uri.getPath();
        cz cz1 = (cz)b.get(s);
        if (cz1 != null)
        {
            java.util.Map map = lq.a(uri);
            cz1.a(a, map);
            return;
        } else
        {
            (new StringBuilder("No GMSG handler found for GMSG: ")).append(uri);
            return;
        }
    }

    private void a(dr dr1)
    {
        fi.a(a.getContext(), dr1);
    }

    public final tz a()
    {
        return n;
    }

    public final void a(do do1)
    {
        boolean flag = a.j();
        tr tr;
        fp fp;
        if (flag && !a.e().e)
        {
            tr = null;
        } else
        {
            tr = d;
        }
        fp = null;
        if (!flag)
        {
            fp = e;
        }
        a(new dr(do1, tr, fp, l, a.i()));
    }

    public final void a(mk mk1)
    {
        f = mk1;
    }

    public final void a(tr tr, co co, fu fu, da da, dc dc, tz tz1)
    {
        a(tr, null, co, fu, true, da, tz1);
        a("/setInterstitialProperties", ((cz) (new db(dc))));
        j = dc;
    }

    public final void a(tr tr, fp fp, co co, fu fu, boolean flag, da da, tz tz1)
    {
        if (tz1 == null)
        {
            tz1 = new tz((byte)0);
        }
        a("/appEvent", ((cz) (new cn(co))));
        a("/canOpenURLs", cp.b);
        a("/canOpenIntents", cp.c);
        a("/click", cp.d);
        a("/close", cp.e);
        a("/customClose", cp.f);
        a("/httpTrack", cp.g);
        a("/log", cp.h);
        a("/open", ((cz) (new de(da, tz1))));
        a("/touch", cp.i);
        a("/video", cp.j);
        a("/mraid", ((cz) (new dd())));
        d = tr;
        e = fp;
        g = co;
        i = da;
        l = fu;
        n = tz1;
        h = flag;
    }

    public final void a(String s, cz cz1)
    {
        b.put(s, cz1);
    }

    public final void a(boolean flag, int i1)
    {
        tr tr;
        if (a.j() && !a.e().e)
        {
            tr = null;
        } else
        {
            tr = d;
        }
        a(new dr(tr, e, l, a, flag, i1, a.i()));
    }

    public final void a(boolean flag, int i1, String s)
    {
        boolean flag1 = a.j();
        tr tr;
        fp fp;
        if (flag1 && !a.e().e)
        {
            tr = null;
        } else
        {
            tr = d;
        }
        fp = null;
        if (!flag1)
        {
            fp = e;
        }
        a(new dr(tr, fp, g, l, a, flag, i1, s, a.i(), i));
    }

    public final void a(boolean flag, int i1, String s, String s1)
    {
        boolean flag1 = a.j();
        tr tr;
        fp fp;
        if (flag1 && !a.e().e)
        {
            tr = null;
        } else
        {
            tr = d;
        }
        if (flag1)
        {
            fp = null;
        } else
        {
            fp = e;
        }
        a(new dr(tr, fp, g, l, a, flag, i1, s, s1, a.i(), i));
    }

    public final boolean b()
    {
        boolean flag;
        synchronized (c)
        {
            flag = k;
        }
        return flag;
    }

    public final void c()
    {
        if (b())
        {
            m.a();
        }
    }

    public final void d()
    {
        synchronized (c)
        {
            b.clear();
            d = null;
            e = null;
            f = null;
            g = null;
            h = false;
            k = false;
            i = null;
            l = null;
        }
    }

    public final void e()
    {
        h = false;
    }

    public final void f()
    {
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
        fi fi1;
        h = false;
        k = true;
        fi1 = a.d();
        if (fi1 == null)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        if (me.b())
        {
            break MISSING_BLOCK_LABEL_54;
        }
        me.a.post(new mj(this, fi1));
_L2:
        obj;
        JVM INSTR monitorexit ;
        return;
        fi1.k();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public final void onLoadResource(WebView webview, String s)
    {
        (new StringBuilder("Loading resource: ")).append(s);
        Uri uri = Uri.parse(s);
        if ("gmsg".equalsIgnoreCase(uri.getScheme()) && "mobileads.google.com".equalsIgnoreCase(uri.getHost()))
        {
            a(uri);
        }
    }

    public final void onPageFinished(WebView webview, String s)
    {
        if (f != null)
        {
            f.a(a);
            f = null;
        }
    }

    public final boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        Uri uri;
        (new StringBuilder("AdWebView shouldOverrideUrlLoading: ")).append(s);
        uri = Uri.parse(s);
        if (!"gmsg".equalsIgnoreCase(uri.getScheme()) || !"mobileads.google.com".equalsIgnoreCase(uri.getHost())) goto _L2; else goto _L1
_L1:
        a(uri);
_L5:
        return true;
_L2:
        if (h && webview == a)
        {
            String s1 = uri.getScheme();
            boolean flag;
            if ("http".equalsIgnoreCase(s1) || "https".equalsIgnoreCase(s1))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag)
            {
                return super.shouldOverrideUrlLoading(webview, s);
            }
        }
        if (a.willNotDraw())
        {
            break MISSING_BLOCK_LABEL_259;
        }
        qa qa1 = a.h();
        if (qa1 == null)
        {
            break MISSING_BLOCK_LABEL_176;
        }
        Uri uri2;
        if (!qa1.a(uri))
        {
            break MISSING_BLOCK_LABEL_176;
        }
        uri2 = qa1.a(uri, a.getContext());
        uri = uri2;
        Uri uri1 = uri;
_L3:
        qn qn1;
        if (n == null || n.b())
        {
            a(new do("android.intent.action.VIEW", uri1.toString(), null, null, null, null, null));
        } else
        {
            n.a(s);
        }
        continue; /* Loop/switch isn't completed */
        qn1;
        (new StringBuilder("Unable to append parameter to URL: ")).append(s);
        uri1 = uri;
          goto _L3
        (new StringBuilder("AdWebView unable to handle URL: ")).append(s);
        if (true) goto _L5; else goto _L4
_L4:
    }
}
