// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal;


class 
    implements CharSequence
{

    char chars[];

    public final char charAt(int i)
    {
        return chars[i];
    }

    public final int length()
    {
        return chars.length;
    }

    public CharSequence subSequence(int i, int j)
    {
        return new String(chars, i, j - i);
    }

    ()
    {
    }
}
