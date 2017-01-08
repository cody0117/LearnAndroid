// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.text.TextUtils;

// Referenced classes of package com.google.android.gms.internal:
//            ua, lb, fj, mg, 
//            gs, lq

public final class ub
    implements ua
{

    private final lb a;
    private final mg b;

    public ub(lb lb1, mg mg1)
    {
        a = lb1;
        b = mg1;
    }

    public final void a(String s)
    {
        android.net.Uri.Builder builder = new android.net.Uri.Builder();
        builder.scheme("https");
        builder.path("//pagead2.googlesyndication.com/pagead/gen_204");
        builder.appendQueryParameter("id", "gmob-apps-blocked-navigation");
        if (!TextUtils.isEmpty(s))
        {
            builder.appendQueryParameter("navigationURL", s);
        }
        if (a != null && a.b != null && !TextUtils.isEmpty(a.b.o))
        {
            builder.appendQueryParameter("debugDialog", a.b.o);
        }
        lq.a(b.getContext(), b.i().b, builder.toString());
    }
}
