// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.Window;
import com.google.android.gms.a.c;
import com.google.android.gms.a.f;
import java.util.ArrayList;
import java.util.HashSet;

// Referenced classes of package com.google.android.gms.internal:
//            bd, co, da, dc, 
//            dv, fp, fu, gp, 
//            ic, jb, lh, tr, 
//            uc, ty, tt, b, 
//            g, lq, lf, ay, 
//            tx, lc, jr, ax, 
//            la, gs, du, ec, 
//            dt, eh, mg, px, 
//            gq, gg, av, lv, 
//            dw, li, mi, a, 
//            h, ce, cd, lb, 
//            fj, tz, ub, tu, 
//            tv, bu, bz, jx, 
//            s, lk, jc, bi, 
//            gi, ho, ea, gj, 
//            gw, gl, me, tw, 
//            ad, aa, iu, y, 
//            dr, fi, ee, gk

public final class ts extends bd
    implements co, da, dc, dv, fp, fu, gp, ic, jb, lh, tr, uc
{

    private av a;
    private final ee b;
    private final ty c;
    private final b d;
    private final g e;
    private boolean f;
    private final ComponentCallbacks g;

    public ts(Context context, ay ay1, String s1, ee ee, gs gs1)
    {
        this(new ty(context, ay1, s1, gs1), ee);
    }

    private ts(ty ty1, ee ee)
    {
        g = new tt(this);
        c = ty1;
        b = ee;
        d = new b(this);
        e = new g();
        lq.b(c.c);
        lf.a(c.c, c.e);
        if (android.os.Build.VERSION.SDK_INT >= 14 && c != null && c.c != null)
        {
            c.c.registerComponentCallbacks(g);
        }
    }

    private jr a(av av1, Bundle bundle)
    {
        ApplicationInfo applicationinfo = c.c.getApplicationInfo();
        android.content.pm.PackageInfo packageinfo1 = c.c.getPackageManager().getPackageInfo(applicationinfo.packageName, 0);
        android.content.pm.PackageInfo packageinfo = packageinfo1;
_L2:
        boolean flag = c.i.e;
        Bundle bundle1 = null;
        if (!flag)
        {
            android.view.ViewParent viewparent = c.a.getParent();
            bundle1 = null;
            if (viewparent != null)
            {
                int ai[] = new int[2];
                c.a.getLocationOnScreen(ai);
                int i1 = ai[0];
                int j1 = ai[1];
                DisplayMetrics displaymetrics = c.c.getResources().getDisplayMetrics();
                int k1 = c.a.getWidth();
                int l1 = c.a.getHeight();
                boolean flag1 = c.a.isShown();
                int i2 = 0;
                if (flag1)
                {
                    int j2 = i1 + k1;
                    i2 = 0;
                    if (j2 > 0)
                    {
                        int k2 = j1 + l1;
                        i2 = 0;
                        if (k2 > 0)
                        {
                            int l2 = displaymetrics.widthPixels;
                            i2 = 0;
                            if (i1 <= l2)
                            {
                                int i3 = displaymetrics.heightPixels;
                                i2 = 0;
                                if (j1 <= i3)
                                {
                                    i2 = 1;
                                }
                            }
                        }
                    }
                }
                bundle1 = new Bundle(5);
                bundle1.putInt("x", i1);
                bundle1.putInt("y", j1);
                bundle1.putInt("width", k1);
                bundle1.putInt("height", l1);
                bundle1.putInt("visible", i2);
            }
        }
        String s1 = com.google.android.gms.internal.lf.c();
        c.l = new lc(s1, c.b);
        c.l.a(av1);
        Bundle bundle2 = lf.a(c.c, this, s1);
        return new jr(bundle1, av1, c.i, c.b, applicationinfo, packageinfo, s1, lf.a, c.e, bundle2, c.s, bundle, com.google.android.gms.internal.lf.f());
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        packageinfo = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    static ty a(ts ts1)
    {
        return ts1.c;
    }

    private void a(int i1)
    {
        (new StringBuilder("Failed to load ad: ")).append(i1);
        if (c.f == null)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        c.f.a(i1);
        return;
        RemoteException remoteexception;
        remoteexception;
    }

    private void b(View view)
    {
        android.view.ViewGroup.LayoutParams layoutparams = new android.view.ViewGroup.LayoutParams(-2, -2);
        c.a.addView(view, layoutparams);
    }

    private void b(boolean flag)
    {
        if (c.j != null)
        {
            c.l.a();
            if (c.j.e != null)
            {
                lq.a(c.c, c.e.b, c.j.e);
            }
            if (c.j.o != null && c.j.o.d != null)
            {
                ec.a(c.c, c.e.b, c.j, c.b, flag, c.j.o.d);
            }
            if (c.j.l != null && c.j.l.f != null)
            {
                ec.a(c.c, c.e.b, c.j, c.b, flag, c.j.l.f);
                return;
            }
        }
    }

    private boolean b(la la1)
    {
        if (la1.k)
        {
            View view1;
            View view2;
            try
            {
                view1 = (View)com.google.android.gms.a.f.a(la1.m.a());
            }
            catch (RemoteException remoteexception1)
            {
                return false;
            }
            view2 = c.a.getNextView();
            if (view2 != null)
            {
                c.a.removeView(view2);
            }
            try
            {
                b(view1);
            }
            catch (Throwable throwable)
            {
                return false;
            }
        } else
        if (la1.r != null)
        {
            la1.b.a(la1.r);
            c.a.removeAllViews();
            c.a.setMinimumWidth(la1.r.g);
            c.a.setMinimumHeight(la1.r.d);
            b(((View) (la1.b)));
        }
        if (c.a.getChildCount() > 1)
        {
            c.a.showNext();
        }
        if (c.j != null)
        {
            View view = c.a.getNextView();
            if (view instanceof mg)
            {
                ((mg)view).a(c.c, c.i);
            } else
            if (view != null)
            {
                c.a.removeView(view);
            }
            if (c.j.m != null)
            {
                try
                {
                    c.j.m.c();
                }
                catch (RemoteException remoteexception) { }
            }
        }
        c.a.setVisibility(0);
        return true;
    }

    private void v()
    {
        if (c.f == null)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        c.f.c();
        return;
        RemoteException remoteexception;
        remoteexception;
    }

    private void w()
    {
        if (c.j != null)
        {
            if (c.w == 0)
            {
                c.j.b.destroy();
            }
            c.j = null;
            c.y = false;
        }
    }

    public final c a()
    {
        px.b("getAdFrame must be called on the main UI thread.");
        return com.google.android.gms.a.f.a(c.a);
    }

    public final void a(View view)
    {
        c.v = view;
        a(new la(c.k, null));
    }

    public final void a(ax ax1)
    {
        px.b("setAdListener must be called on the main UI thread.");
        c.f = ax1;
    }

    public final void a(ay ay1)
    {
        px.b("setAdSize must be called on the main UI thread.");
        c.i = ay1;
        if (c.j != null && c.w == 0)
        {
            c.j.b.a(ay1);
        }
        if (c.a.getChildCount() > 1)
        {
            c.a.removeView(c.a.getNextView());
        }
        c.a.setMinimumWidth(ay1.g);
        c.a.setMinimumHeight(ay1.d);
        c.a.requestLayout();
    }

    public final void a(bi bi1)
    {
        px.b("setAppEventListener must be called on the main UI thread.");
        c.m = bi1;
    }

    public final void a(bz bz1)
    {
        px.b("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        c.r = bz1;
    }

    public final void a(gw gw1)
    {
        px.b("setInAppPurchaseListener must be called on the main UI thread.");
        c.o = gw1;
    }

    public final void a(ho ho1, String s1)
    {
        px.b("setPlayStorePurchaseParams must be called on the main UI thread.");
        c.t = new gq(s1);
        c.n = ho1;
        if (!lf.e() && ho1 != null)
        {
            (new gg(c.c, c.n, c.t)).e();
        }
    }

    public final void a(la la1)
    {
        boolean flag;
        c.h = null;
        if (la1.w != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (la1.d != -2 && la1.d != 3)
        {
            lf.a(c.a());
        }
        if (la1.d != -1) goto _L2; else goto _L1
_L1:
        return;
_L2:
        av av1;
        boolean flag2;
        boolean flag1;
        if (a != null)
        {
            av av2 = a;
            a = null;
            av1 = av2;
            flag1 = false;
        } else
        {
            av1 = la1.a;
            if (av1.c != null)
            {
                flag1 = av1.c.getBoolean("_noRefresh", false);
            } else
            {
                flag1 = false;
            }
        }
        flag2 = flag1 | flag;
        if (!c.i.e) goto _L4; else goto _L3
_L3:
        if (c.w == 0)
        {
            lq.a(la1.b);
        }
_L6:
        d.d();
        if (la1.d == 3 && la1.o != null && la1.o.e != null)
        {
            ec.a(c.c, c.e.b, la1, c.b, false, la1.o.e);
        }
        if (la1.d != -2)
        {
            a(la1.d);
            return;
        }
        break; /* Loop/switch isn't completed */
_L4:
        if (!flag2 && c.w == 0)
        {
            if (la1.h > 0L)
            {
                d.a(av1, la1.h);
            } else
            if (la1.o != null && la1.o.g > 0L)
            {
                d.a(av1, la1.o.g);
            } else
            if (!la1.k && la1.d == 2)
            {
                d.a(av1);
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
        if (!c.i.e && !flag && c.w == 0)
        {
            if (!b(la1))
            {
                a(0);
                return;
            }
            if (c.a != null)
            {
                tx.a(c.a).a(la1.v);
            }
        }
        if (c.j != null && c.j.p != null)
        {
            c.j.p.a(null);
        }
        if (la1.p != null)
        {
            la1.p.a(this);
        }
        e.a(c.j);
        c.j = la1;
        c.l.a(la1.t);
        c.l.b(la1.u);
        c.l.a(c.i.e);
        c.l.b(la1.k);
        if (!c.i.e && !flag && c.w == 0)
        {
            b(false);
        }
        if (c.u == null)
        {
            c.u = new li(c.b);
        }
        int i1;
        int j1;
        cg cg;
        RemoteException remoteexception;
        RemoteException remoteexception1;
        if (la1.o != null)
        {
            j1 = la1.o.h;
            i1 = la1.o.i;
        } else
        {
            i1 = 0;
            j1 = 0;
        }
        c.u.a(j1, i1);
        if (c.w != 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (!c.i.e && la1.b != null && (la1.b.f().b() || la1.j != null))
        {
            h h1 = e.a(c.i, c.j);
            if (la1.b.f().b() && h1 != null)
            {
                h1.a(new a(la1.b));
            }
        }
        if (c.j.b != null)
        {
            c.j.b.a();
            c.j.b.f().c();
        }
        if (!flag) goto _L8; else goto _L7
_L7:
        cg = la1.w;
        if (!(cg instanceof ce) || c.q == null) goto _L10; else goto _L9
_L9:
        try
        {
            if ((c.j.w instanceof ce) && c.q != null)
            {
                c.q;
                c.j.w;
            }
        }
        // Misplaced declaration of an exception variable
        catch (RemoteException remoteexception1) { }
_L8:
        v();
        return;
_L10:
        if (!(cg instanceof cd) || c.p == null)
        {
            break MISSING_BLOCK_LABEL_940;
        }
        if (!(c.j.w instanceof cd) || c.p == null) goto _L8; else goto _L11
_L11:
        c.p;
        c.j.w;
          goto _L8
        a(0);
        return;
        if (c.v == null || la1.j == null) goto _L1; else goto _L12
_L12:
        e.a(c.c, c.i, c.j, c.v, c.e);
        return;
        remoteexception;
          goto _L8
    }

    public final void a(lb lb1)
    {
        boolean flag;
        mg mg1;
        c.g = null;
        c.k = lb1;
        px.b("setNativeTemplates must be called on the main UI thread.");
        c.s = null;
        flag = lb1.b.t;
        mg1 = null;
        if (flag) goto _L2; else goto _L1
_L1:
        tz tz1 = new tz();
        if (!c.i.e) goto _L4; else goto _L3
_L3:
        mg mg2;
        mg mg3 = mg.a(c.c, c.i, false, false, c.d, c.e);
        mg3.f().a(this, this, this, this, this, tz1);
        mg2 = mg3;
_L6:
        tz1.a(new ub(lb1, mg2));
        mg2.setOnTouchListener(new tu(this, tz1));
        mg2.setOnClickListener(new tv(this, tz1));
        mg1 = mg2;
_L2:
        if (lb1.d != null)
        {
            c.i = lb1.d;
        }
        if (lb1.e != -2)
        {
            a(new la(lb1, mg1));
            return;
        }
        break MISSING_BLOCK_LABEL_348;
_L4:
        View view;
        view = c.a.getNextView();
        if (!(view instanceof mg))
        {
            break; /* Loop/switch isn't completed */
        }
        mg2 = (mg)view;
        mg2.a(c.c, c.i);
_L7:
        mg2.f().a(this, this, this, this, false, this, tz1);
        if (true) goto _L6; else goto _L5
_L5:
        if (view != null)
        {
            c.a.removeView(view);
        }
        mg2 = mg.a(c.c, c.i, false, false, c.d, c.e);
        if (c.i.h == null)
        {
            b(mg2);
        }
          goto _L7
        if (true) goto _L6; else goto _L8
_L8:
        if (!lb1.b.h && lb1.b.s)
        {
            String s1 = lb1.b.b;
            String s2 = null;
            if (s1 != null)
            {
                s2 = Uri.parse(lb1.b.b).buildUpon().query(null).build().toString();
            }
            bu bu1 = new bu(this, s2, lb1.b.c);
            try
            {
                if (c.r != null)
                {
                    c.w = 1;
                    c.r.a(bu1);
                    return;
                }
            }
            catch (RemoteException remoteexception) { }
        }
        c.w = 0;
        ty ty1 = c;
        Context context = c.c;
        ee ee = b;
        Object obj;
        if (lb1.b.t)
        {
            obj = new jx(context, this, new s(), lb1, this);
        } else
        {
            obj = new jc(context, lb1, mg1, ee, this);
        }
        ((lk) (obj)).e();
        ty1.h = ((lk) (obj));
        return;
    }

    public final void a(String s1, String s2)
    {
        if (c.m == null)
        {
            break MISSING_BLOCK_LABEL_24;
        }
        c.m.a(s1, s2);
        return;
        RemoteException remoteexception;
        remoteexception;
    }

    public final void a(String s1, ArrayList arraylist)
    {
        gi gi1 = new gi(s1, arraylist, c.c, c.e.b);
        if (c.o == null)
        {
            while (com.google.android.gms.common.f.a(c.c) != 0 || c.n == null || c.t == null || c.x) 
            {
                return;
            }
            c.x = true;
            try
            {
                if (!c.n.a(s1))
                {
                    c.x = false;
                    return;
                }
            }
            catch (RemoteException remoteexception1)
            {
                c.x = false;
                return;
            }
            gj.a(c.c, c.e.e, new ea(c.c, c.t, gi1, this));
            return;
        }
        try
        {
            c.o.a(gi1);
            return;
        }
        catch (RemoteException remoteexception)
        {
            return;
        }
    }

    public final void a(String s1, boolean flag, int i1, Intent intent, gk gk)
    {
        try
        {
            if (c.n != null)
            {
                c.n.a(new gl(c.c, s1, flag, i1, intent, gk));
            }
        }
        catch (RemoteException remoteexception) { }
        me.a.postDelayed(new tw(this, intent), 500L);
    }

    public final void a(HashSet hashset)
    {
        c.a(hashset);
    }

    public final void a(boolean flag)
    {
        c.y = flag;
    }

    public final boolean a(av av1)
    {
        px.b("loadAd must be called on the main UI thread.");
        if (c.g == null && c.h == null) goto _L2; else goto _L1
_L1:
        a;
        a = av1;
_L4:
        return false;
_L2:
        if (c.i.e && c.j != null) goto _L4; else goto _L3
_L3:
        boolean flag;
        ad ad1;
        Bundle bundle;
        jr jr1;
        ty ty1;
        iu iu1;
        aa aa1;
        String s1;
        String s2;
        if (!lq.a(c.c.getPackageManager(), c.c.getPackageName(), "android.permission.INTERNET"))
        {
            if (!c.i.e)
            {
                me.a(c.a, c.i, "Missing internet permission in AndroidManifest.xml.");
            }
            flag = false;
        } else
        {
            flag = true;
        }
        if (!lq.a(c.c))
        {
            if (!c.i.e)
            {
                me.a(c.a, c.i, "Missing AdActivity with android:configChanges in AndroidManifest.xml.");
            }
            flag = false;
        }
        if (!flag && !c.i.e)
        {
            c.a.setVisibility(0);
        }
        if (!flag) goto _L4; else goto _L5
_L5:
        if (!av1.f)
        {
            (new StringBuilder("Use AdRequest.Builder.addTestDevice(\"")).append(me.a(c.c)).append("\") to get test ads on this device.");
        }
        ad1 = lf.a().a(c.c);
        if (ad1 == null) goto _L7; else goto _L6
_L6:
        if (ad1.d())
        {
            ad1.c();
        }
        aa1 = ad1.b();
        if (aa1 != null)
        {
            s2 = aa1.b();
            (new StringBuilder("In AdManger: loadAd, ")).append(aa1.toString());
            s1 = s2;
        } else
        {
            s1 = null;
        }
        if (s1 == null) goto _L7; else goto _L8
_L8:
        bundle = new Bundle(1);
        bundle.putString("fingerprint", s1);
        bundle.putInt("v", 1);
_L10:
        d.a();
        c.w = 0;
        jr1 = a(av1, bundle);
        ty1 = c;
        iu1 = new iu(c.c, jr1, c.d, this);
        iu1.e();
        ty1.g = iu1;
        return true;
_L7:
        bundle = null;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public final void b()
    {
        px.b("destroy must be called on the main UI thread.");
        if (android.os.Build.VERSION.SDK_INT >= 14 && c != null && c.c != null)
        {
            c.c.unregisterComponentCallbacks(g);
        }
        c.f = null;
        c.m = null;
        c.n = null;
        c.o = null;
        c.r = null;
        d.a();
        e.a();
        g();
        if (c.a != null)
        {
            c.a.removeAllViews();
        }
        if (c.j != null && c.j.b != null)
        {
            c.j.b.destroy();
        }
        if (c.j == null || c.j.m == null)
        {
            break MISSING_BLOCK_LABEL_197;
        }
        c.j.m.c();
        return;
        RemoteException remoteexception;
        remoteexception;
    }

    public final void b(av av1)
    {
        android.view.ViewParent viewparent = c.a.getParent();
        if ((viewparent instanceof View) && ((View)viewparent).isShown() && lq.a() && !f)
        {
            a(av1);
            return;
        } else
        {
            d.a(av1);
            return;
        }
    }

    public final boolean c()
    {
        px.b("isLoaded must be called on the main UI thread.");
        return c.g == null && c.h == null && c.j != null;
    }

    public final void d()
    {
        px.b("pause must be called on the main UI thread.");
        if (c.j != null && c.w == 0)
        {
            lq.a(c.j.b);
        }
        if (c.j != null && c.j.m != null)
        {
            try
            {
                c.j.m.d();
            }
            catch (RemoteException remoteexception) { }
        }
        e.b();
        d.b();
    }

    public final void e()
    {
        px.b("resume must be called on the main UI thread.");
        if (c.j != null && c.w == 0)
        {
            lq.b(c.j.b);
        }
        if (c.j != null && c.j.m != null)
        {
            try
            {
                c.j.m.e();
            }
            catch (RemoteException remoteexception) { }
        }
        d.c();
        e.c();
    }

    public final void f()
    {
        px.b("showInterstitial must be called on the main UI thread.");
        while (!c.i.e || c.j == null || c.w == 1 || c.j.b.j()) 
        {
            return;
        }
        c.j.b.a(true);
        if (c.j.b.f().b() || c.j.j != null)
        {
            h h1 = e.a(c.i, c.j);
            if (c.j.b.f().b() && h1 != null)
            {
                h1.a(new a(c.j.b));
            }
        }
        if (c.j.k)
        {
            try
            {
                c.j.m.b();
                return;
            }
            catch (RemoteException remoteexception)
            {
                w();
            }
            return;
        }
        y y1 = new y(c.y, false);
        if (c.c instanceof Activity)
        {
            Window window = ((Activity)c.c).getWindow();
            Rect rect = new Rect();
            Rect rect1 = new Rect();
            window.getDecorView().getGlobalVisibleRect(rect);
            window.getDecorView().getWindowVisibleDisplayFrame(rect1);
            if (rect.bottom != 0 && rect1.bottom != 0)
            {
                boolean flag = c.y;
                dr dr1;
                boolean flag1;
                if (rect.top == rect1.top)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                y1 = new y(flag, flag1);
            }
        }
        dr1 = new dr(this, this, this, c.j.b, c.j.g, c.e, c.j.v, y1);
        fi.a(c.c, dr1);
    }

    public final void g()
    {
        px.b("stopLoading must be called on the main UI thread.");
        if (c.j != null && c.w == 0)
        {
            c.j.b.stopLoading();
            c.j = null;
        }
        if (c.g != null)
        {
            c.g.f();
        }
        if (c.h != null)
        {
            c.h.f();
        }
    }

    public final void h()
    {
        px.b("recordManualImpression must be called on the main UI thread.");
        while (c.j == null || c.j.f == null) 
        {
            return;
        }
        lq.a(c.c, c.e.b, c.j.f);
    }

    public final ay i()
    {
        px.b("getAdSize must be called on the main UI thread.");
        return c.i;
    }

    public final String j()
    {
        if (c.j != null)
        {
            return c.j.n;
        } else
        {
            return null;
        }
    }

    public final void k()
    {
        t();
    }

    public final void l()
    {
        p();
    }

    public final void m()
    {
        r();
    }

    public final void n()
    {
        q();
    }

    public final void o()
    {
        if (c.j != null)
        {
            (new StringBuilder("Mediation adapter ")).append(c.j.n).append(" refreshed, but mediation adapters should never refresh.");
        }
        b(true);
        v();
    }

    public final void p()
    {
        e.a(c.j);
        if (c.i.e)
        {
            w();
        }
        f = false;
        if (c.f != null)
        {
            try
            {
                c.f.a();
            }
            catch (RemoteException remoteexception) { }
        }
        c.l.c();
    }

    public final void q()
    {
        if (c.i.e)
        {
            b(false);
        }
        f = true;
        if (c.f == null)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        c.f.d();
        return;
        RemoteException remoteexception;
        remoteexception;
    }

    public final void r()
    {
        if (c.f == null)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        c.f.b();
        return;
        RemoteException remoteexception;
        remoteexception;
    }

    public final void s()
    {
        t();
    }

    public final void t()
    {
        if (c.j != null)
        {
            c.l.b();
            if (c.j.c != null)
            {
                lq.a(c.c, c.e.b, c.j.c);
            }
            if (c.j.o != null && c.j.o.c != null)
            {
                ec.a(c.c, c.e.b, c.j, c.b, false, c.j.o.c);
                return;
            }
        }
    }

    public final void u()
    {
        b(false);
    }
}
