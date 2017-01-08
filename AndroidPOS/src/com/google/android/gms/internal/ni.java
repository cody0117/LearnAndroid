// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            hp, hj

public final class ni
{

    private final String a;
    private String b;
    private boolean c;
    private int d;
    private boolean e;
    private String f;
    private final List g = new ArrayList();
    private BitSet h;
    private String i;

    public ni(String s)
    {
        a = s;
        d = 1;
    }

    public final ni a()
    {
        c = true;
        return this;
    }

    public final ni a(String s)
    {
        b = s;
        return this;
    }

    public final hp b()
    {
        int j = 0;
        BitSet bitset = h;
        int ai[] = null;
        if (bitset != null)
        {
            ai = new int[h.cardinality()];
            for (int k = h.nextSetBit(0); k >= 0;)
            {
                int l = j + 1;
                ai[j] = k;
                k = h.nextSetBit(k + 1);
                j = l;
            }

        }
        return new hp(a, b, c, d, e, f, (hj[])g.toArray(new hj[g.size()]), ai, i);
    }
}
