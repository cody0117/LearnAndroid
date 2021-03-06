// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.google.android.gms.ads.d;

public final class bb
{

    private final d a[];
    private final String b;

    public bb(Context context, AttributeSet attributeset)
    {
        boolean flag = true;
        super();
        TypedArray typedarray = context.getResources().obtainAttributes(attributeset, com.google.android.gms.R.styleable.AdsAttrs);
        String s = typedarray.getString(com.google.android.gms.R.styleable.AdsAttrs_adSize);
        String s1 = typedarray.getString(com.google.android.gms.R.styleable.AdsAttrs_adSizes);
        boolean flag1;
        if (!TextUtils.isEmpty(s))
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if (TextUtils.isEmpty(s1))
        {
            flag = false;
        }
        if (flag1 && !flag)
        {
            a = a(s);
        } else
        if (!flag1 && flag)
        {
            a = a(s1);
        } else
        if (flag1)
        {
            throw new IllegalArgumentException("Either XML attribute \"adSize\" or XML attribute \"supportedAdSizes\" should be specified, but not both.");
        } else
        {
            throw new IllegalArgumentException("Required XML attribute \"adSize\" was missing.");
        }
        b = typedarray.getString(com.google.android.gms.R.styleable.AdsAttrs_adUnitId);
        if (TextUtils.isEmpty(b))
        {
            throw new IllegalArgumentException("Required XML attribute \"adUnitId\" was missing.");
        } else
        {
            return;
        }
    }

    private static d[] a(String s)
    {
        String as[];
        d ad[];
        int i;
        as = s.split("\\s*,\\s*");
        ad = new d[as.length];
        i = 0;
_L9:
        String s1;
        String as1[];
        if (i >= as.length)
        {
            break MISSING_BLOCK_LABEL_338;
        }
        s1 = as[i].trim();
        if (!s1.matches("^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$"))
        {
            break MISSING_BLOCK_LABEL_180;
        }
        as1 = s1.split("[xX]");
        as1[0] = as1[0].trim();
        as1[1] = as1[1].trim();
        if (!"FULL_WIDTH".equals(as1[0])) goto _L2; else goto _L1
_L1:
        int j = -1;
_L5:
        boolean flag;
        int k;
        int l;
        try
        {
            flag = "AUTO_HEIGHT".equals(as1[1]);
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new IllegalArgumentException((new StringBuilder("Could not parse XML attribute \"adSize\": ")).append(s1).toString());
        }
        if (!flag) goto _L4; else goto _L3
_L3:
        l = -2;
_L6:
        ad[i] = new d(j, l);
_L7:
        i++;
        continue; /* Loop/switch isn't completed */
_L2:
        j = Integer.parseInt(as1[0]);
          goto _L5
_L4:
        k = Integer.parseInt(as1[1]);
        l = k;
          goto _L6
        if ("BANNER".equals(s1))
        {
            ad[i] = d.a;
        } else
        if ("LARGE_BANNER".equals(s1))
        {
            ad[i] = d.c;
        } else
        if ("FULL_BANNER".equals(s1))
        {
            ad[i] = d.b;
        } else
        if ("LEADERBOARD".equals(s1))
        {
            ad[i] = d.d;
        } else
        if ("MEDIUM_RECTANGLE".equals(s1))
        {
            ad[i] = d.e;
        } else
        if ("SMART_BANNER".equals(s1))
        {
            ad[i] = d.g;
        } else
        if ("WIDE_SKYSCRAPER".equals(s1))
        {
            ad[i] = d.f;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder("Could not parse XML attribute \"adSize\": ")).append(s1).toString());
        }
          goto _L7
        if (ad.length == 0)
        {
            throw new IllegalArgumentException((new StringBuilder("Could not parse XML attribute \"adSize\": ")).append(s).toString());
        }
        return ad;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public final String a()
    {
        return b;
    }

    public final d[] a(boolean flag)
    {
        if (!flag && a.length != 1)
        {
            throw new IllegalArgumentException("The adSizes XML attribute is only allowed on PublisherAdViews.");
        } else
        {
            return a;
        }
    }
}
