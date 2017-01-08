// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.printer;

import android.graphics.Bitmap;
import android.graphics.Color;
import java.util.BitSet;

// Referenced classes of package com.aadhk.printer:
//            a

public final class b
{

    public static a a(Bitmap bitmap)
    {
        int i;
        int j;
        BitSet bitset;
        int k;
        int l;
        i = bitmap.getWidth();
        j = bitmap.getHeight();
        bitset = new BitSet();
        k = 0;
        l = 0;
_L2:
        if (k >= j)
        {
            a a1 = new a();
            a1.a(bitmap.getHeight());
            a1.b(bitmap.getWidth());
            a1.a(bitset);
            return a1;
        }
        int i1 = l;
        int j1 = 0;
        do
        {
label0:
            {
                if (j1 < i)
                {
                    break label0;
                }
                k++;
                l = i1;
            }
            if (true)
            {
                continue;
            }
            int k1 = bitmap.getPixel(j1, k);
            int l1 = Color.red(k1);
            int i2 = Color.green(k1);
            int j2 = Color.blue(k1);
            if ((int)(0.29899999999999999D * (double)l1 + 0.58699999999999997D * (double)i2 + 0.114D * (double)j2) < 55)
            {
                bitset.set(i1);
            }
            i1++;
            j1++;
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }
}
