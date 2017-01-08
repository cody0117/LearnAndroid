// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;

final class an extends android.view.View.DragShadowBuilder
{

    private static Drawable a;

    public an(View view)
    {
        super(view);
        a = new ColorDrawable(0xffcccccc);
    }

    public final void onDrawShadow(Canvas canvas)
    {
        a.draw(canvas);
    }

    public final void onProvideShadowMetrics(Point point, Point point1)
    {
        int i = getView().getWidth() / 2;
        int j = getView().getHeight() / 2;
        a.setBounds(0, 0, i, j);
        point.set(i, j);
        point1.set(i / 2, j / 2);
    }
}
