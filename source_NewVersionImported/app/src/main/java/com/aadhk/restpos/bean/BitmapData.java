// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;

import java.util.BitSet;

public class BitmapData
{

    private BitSet dots;
    private int height;
    private int width;

    public BitmapData()
    {
    }

    public BitSet getDots()
    {
        return dots;
    }

    public int getHeight()
    {
        return height;
    }

    public int getWidth()
    {
        return width;
    }

    public void setDots(BitSet bitset)
    {
        dots = bitset;
    }

    public void setHeight(int i)
    {
        height = i;
    }

    public void setWidth(int i)
    {
        width = i;
    }
}
