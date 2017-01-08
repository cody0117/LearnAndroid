// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.soundcloud.android.crop;

import android.graphics.Bitmap;
import android.graphics.Matrix;

final class ac
{

    private Bitmap a;
    private int b;

    public ac(Bitmap bitmap, int i)
    {
        a = bitmap;
        b = i % 360;
    }

    private boolean g()
    {
        return (b / 90) % 2 != 0;
    }

    public final int a()
    {
        return b;
    }

    public final void a(int i)
    {
        b = i;
    }

    public final void a(Bitmap bitmap)
    {
        a = bitmap;
    }

    public final Bitmap b()
    {
        return a;
    }

    public final Matrix c()
    {
        Matrix matrix = new Matrix();
        if (a != null && b != 0)
        {
            int i = a.getWidth() / 2;
            int j = a.getHeight() / 2;
            matrix.preTranslate(-i, -j);
            matrix.postRotate(b);
            matrix.postTranslate(e() / 2, d() / 2);
        }
        return matrix;
    }

    public final int d()
    {
        if (a == null)
        {
            return 0;
        }
        if (g())
        {
            return a.getWidth();
        } else
        {
            return a.getHeight();
        }
    }

    public final int e()
    {
        if (a == null)
        {
            return 0;
        }
        if (g())
        {
            return a.getHeight();
        } else
        {
            return a.getWidth();
        }
    }

    public final void f()
    {
        if (a != null)
        {
            a.recycle();
            a = null;
        }
    }
}
