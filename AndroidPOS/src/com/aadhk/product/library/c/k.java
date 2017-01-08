// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.c;

import android.text.InputFilter;
import android.text.Spanned;

public final class k
    implements InputFilter
{

    private int a;
    private int b;

    public k(String s, String s1)
    {
        a = Integer.parseInt(s);
        b = Integer.parseInt(s1);
    }

    public final CharSequence filter(CharSequence charsequence, int i, int j, Spanned spanned, int l, int i1)
    {
        boolean flag = true;
        int j1;
        int k1;
        int l1;
        j1 = Integer.parseInt((new StringBuilder()).append(spanned.toString()).append(charsequence.toString()).toString());
        k1 = a;
        l1 = b;
        if (l1 <= k1) goto _L2; else goto _L1
_L1:
        if (j1 < k1 || j1 > l1)
        {
            flag = false;
        }
_L4:
        if (flag)
        {
            return null;
        }
        break; /* Loop/switch isn't completed */
_L2:
        if (j1 < l1 || j1 > k1)
        {
            flag = false;
        }
        if (true) goto _L4; else goto _L3
        NumberFormatException numberformatexception;
        numberformatexception;
_L3:
        return "";
    }
}
