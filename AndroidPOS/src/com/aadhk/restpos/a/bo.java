// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.widget.TextView;

// Referenced classes of package com.aadhk.restpos.a:
//            bn

final class bo
{

    final bn a;
    private TextView b;

    bo(bn bn)
    {
        a = bn;
        super();
    }

    static TextView a(bo bo1)
    {
        return bo1.b;
    }

    static TextView a(bo bo1, TextView textview)
    {
        bo1.b = textview;
        return textview;
    }
}
