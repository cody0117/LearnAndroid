// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.f;

import android.text.InputFilter;
import android.text.Spanned;

public final class e
    implements InputFilter
{

    private final int a;

    public e(int i)
    {
        a = i;
    }

    public final CharSequence filter(CharSequence charsequence, int i, int j, Spanned spanned, int k, int l)
    {
        int i1 = spanned.length();
        int j1 = 0;
        do
        {
            if (j1 < i1)
            {
label0:
                {
                    char c = spanned.charAt(j1);
                    if (c == '.' || c == ',')
                    {
                        break label0;
                    } else
                    {
                        j1++;
                        continue;
                    }
                }
            }
            j1 = -1;
            while (true) 
            {
                if (j1 <= 0 || l <= j1 || i1 - j1 <= a)
                {
                    return null;
                } else
                {
                    return "";
                }
            }
        } while (true);
    }
}
