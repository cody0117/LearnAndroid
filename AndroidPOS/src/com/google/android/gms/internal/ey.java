// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import com.google.android.gms.ads.d;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            mg, ay, lq, me

public final class ey
{

    static final Set a = new HashSet(Arrays.asList(new String[] {
        "top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center"
    }));
    private int b;
    private int c;
    private int d;
    private int e;
    private boolean f;
    private String g;
    private final mg h;
    private final Map i;
    private final Context j;

    public ey(mg mg1, Map map)
    {
        b = -1;
        c = -1;
        d = 0;
        e = 0;
        f = true;
        g = "top-right";
        h = mg1;
        i = map;
        j = mg1.k();
    }

    public final void a()
    {
        if (j != null && !h.e().e && !h.j())
        {
            int ai[] = com.google.android.gms.internal.lq.d(j);
            boolean flag;
            if (!TextUtils.isEmpty((CharSequence)i.get("width")))
            {
                int k1 = lq.b((String)i.get("width"));
                int l1 = ai[0];
                String s;
                WindowManager windowmanager;
                DisplayMetrics displaymetrics;
                int k;
                int l;
                android.view.ViewParent viewparent;
                LinearLayout linearlayout;
                PopupWindow popupwindow;
                JSONException jsonexception1;
                JSONObject jsonobject;
                JSONObject jsonobject1;
                int i1;
                int j1;
                boolean flag3;
                if (k1 >= 50 && k1 < l1)
                {
                    flag3 = true;
                } else
                {
                    flag3 = false;
                }
                if (flag3)
                {
                    b = k1;
                }
            }
            if (!TextUtils.isEmpty((CharSequence)i.get("height")))
            {
                i1 = lq.b((String)i.get("height"));
                j1 = ai[1];
                boolean flag2;
                if (i1 >= 50 && i1 < j1)
                {
                    flag2 = true;
                } else
                {
                    flag2 = false;
                }
                if (flag2)
                {
                    c = i1;
                }
            }
            if (!TextUtils.isEmpty((CharSequence)i.get("offsetX")))
            {
                d = lq.b((String)i.get("offsetX"));
            }
            if (!TextUtils.isEmpty((CharSequence)i.get("offsetY")))
            {
                e = lq.b((String)i.get("offsetY"));
            }
            if (!TextUtils.isEmpty((CharSequence)i.get("allowOffscreen")))
            {
                f = Boolean.parseBoolean((String)i.get("allowOffscreen"));
            }
            s = (String)i.get("customClosePosition");
            if (!TextUtils.isEmpty(s) && a.contains(s))
            {
                g = s;
            }
            if (b >= 0 && c >= 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag)
            {
                windowmanager = (WindowManager)j.getSystemService("window");
                displaymetrics = new DisplayMetrics();
                windowmanager.getDefaultDisplay().getMetrics(displaymetrics);
                k = 16 + me.a(displaymetrics, b);
                l = 16 + me.a(displaymetrics, c);
                viewparent = h.getParent();
                if (viewparent != null && (viewparent instanceof ViewGroup))
                {
                    ((ViewGroup)viewparent).removeView(h);
                }
                linearlayout = new LinearLayout(j);
                linearlayout.setBackgroundColor(0);
                popupwindow = new PopupWindow(j);
                popupwindow.setHeight(l);
                popupwindow.setWidth(k);
                boolean flag1;
                if (!f)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                popupwindow.setClippingEnabled(flag1);
                popupwindow.setContentView(linearlayout);
                linearlayout.addView(h, -1, -1);
                popupwindow.showAtLocation(((Activity)j).getWindow().getDecorView(), 0, d, e);
                h.a(new ay(j, new d(b, c)));
                try
                {
                    jsonobject1 = (new JSONObject()).put("x", d).put("y", e).put("width", b).put("height", c);
                    h.b("onSizeChanged", jsonobject1);
                }
                catch (JSONException jsonexception) { }
                try
                {
                    jsonobject = (new JSONObject()).put("state", "resized");
                    h.b("onStateChanged", jsonobject);
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (JSONException jsonexception1)
                {
                    return;
                }
            }
        }
    }

}
