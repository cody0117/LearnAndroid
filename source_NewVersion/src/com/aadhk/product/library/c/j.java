// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.c;

import android.text.InputFilter;
import android.text.Spanned;

public final class j
    implements InputFilter
{

    public j()
    {
    }

    public final CharSequence filter(CharSequence charsequence, int i, int k, Spanned spanned, int l, int i1)
    {
        for (; i < k; i++)
        {
            char c = charsequence.charAt(i);
            if (!Character.isLetter(c) && !Character.isWhitespace(c))
            {
                return "";
            }
        }

        return null;
    }
}
