// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.d;
import com.google.android.gms.ads.f;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            at, me

public final class ay
    implements SafeParcelable
{

    public static final at CREATOR = new at();
    public final int a;
    public final String b;
    public final int c;
    public final int d;
    public final boolean e;
    public final int f;
    public final int g;
    public final ay h[];

    public ay()
    {
        this(2, "interstitial_mb", 0, 0, true, 0, 0, null);
    }

    ay(int i, String s, int j, int k, boolean flag, int l, int i1, 
            ay aay[])
    {
        a = i;
        b = s;
        c = j;
        d = k;
        e = flag;
        f = l;
        g = i1;
        h = aay;
    }

    public ay(Context context, d d1)
    {
        this(context, new d[] {
            d1
        });
    }

    public ay(Context context, d ad[])
    {
        int i = 0;
        super();
        d d1 = ad[0];
        a = 2;
        e = false;
        f = d1.b();
        c = d1.a();
        boolean flag;
        boolean flag1;
        DisplayMetrics displaymetrics;
        int k;
        int l;
        if (f == -1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (c == -2)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        displaymetrics = context.getResources().getDisplayMetrics();
        if (flag)
        {
            g = displaymetrics.widthPixels;
            k = (int)((float)g / displaymetrics.density);
        } else
        {
            int j = f;
            g = me.a(displaymetrics, f);
            k = j;
        }
        if (flag1)
        {
            l = c(displaymetrics);
        } else
        {
            l = c;
        }
        d = me.a(displaymetrics, l);
        if (flag || flag1)
        {
            b = (new StringBuilder()).append(k).append("x").append(l).append("_as").toString();
        } else
        {
            b = d1.toString();
        }
        if (ad.length > 1)
        {
            h = new ay[ad.length];
            for (; i < ad.length; i++)
            {
                h[i] = new ay(context, ad[i]);
            }

        } else
        {
            h = null;
        }
    }

    public ay(ay ay1, ay aay[])
    {
        this(2, ay1.b, ay1.c, ay1.d, ay1.e, ay1.f, ay1.g, aay);
    }

    public static int a(DisplayMetrics displaymetrics)
    {
        return displaymetrics.widthPixels;
    }

    public static int b(DisplayMetrics displaymetrics)
    {
        return (int)((float)c(displaymetrics) * displaymetrics.density);
    }

    private static int c(DisplayMetrics displaymetrics)
    {
        int i = (int)((float)displaymetrics.heightPixels / displaymetrics.density);
        if (i <= 400)
        {
            return 32;
        }
        return i > 720 ? 90 : 50;
    }

    public final d a()
    {
        return com.google.android.gms.ads.f.a(f, c, b);
    }

    public final int describeContents()
    {
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        at.a(this, parcel, i);
    }

}
