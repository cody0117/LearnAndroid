// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            lq, mg, fd, br, 
//            fc

public final class fe
{

    DisplayMetrics a;
    int b;
    int c;
    private final mg d;
    private final Context e;
    private final WindowManager f;
    private final br g;
    private float h;
    private int i;
    private int j;
    private int k;
    private int l[];

    public fe(mg mg1, Context context, br br1)
    {
        b = -1;
        c = -1;
        j = -1;
        k = -1;
        l = new int[2];
        d = mg1;
        e = context;
        g = br1;
        f = (WindowManager)context.getSystemService("window");
        a = new DisplayMetrics();
        Display display = f.getDefaultDisplay();
        display.getMetrics(a);
        h = a.density;
        i = display.getRotation();
        int i1 = lq.c(e);
        float f1 = 160F / (float)a.densityDpi;
        b = Math.round(f1 * (float)a.widthPixels);
        c = Math.round(f1 * (float)(a.heightPixels - i1));
        d.getLocationOnScreen(l);
        d.measure(0, 0);
        float f2 = 160F / (float)a.densityDpi;
        j = Math.round(f2 * (float)d.getMeasuredWidth());
        k = Math.round(f2 * (float)d.getMeasuredHeight());
    }

    public final void a()
    {
        fd fd1;
        fc fc1;
        try
        {
            JSONObject jsonobject1 = (new JSONObject()).put("width", b).put("height", c).put("density", h).put("rotation", i);
            d.b("onScreenInfoChanged", jsonobject1);
        }
        catch (JSONException jsonexception) { }
        fd1 = (new fd()).b(g.a()).a(g.b()).c(g.d()).d(g.c());
        br _tmp = g;
        fc1 = new fc(fd1.a(), (byte)0);
        d.b("onDeviceFeaturesReceived", fc1.a());
        try
        {
            JSONObject jsonobject = (new JSONObject()).put("x", l[0]).put("y", l[1]).put("width", j).put("height", k);
            d.b("onDefaultPositionReceived", jsonobject);
        }
        catch (JSONException jsonexception1) { }
        d.b("onReadyEventReceived", new JSONObject());
    }
}
