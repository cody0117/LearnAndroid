// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.plus;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.util.TypedValue;
import android.widget.Button;
import android.widget.FrameLayout;

// Referenced classes of package com.google.android.gms.plus:
//            e, g, f, d

public final class c extends FrameLayout
{

    public c(Context context, int i)
    {
        int j;
        Button button;
        Point point;
        j = 24;
        super(context);
        button = new Button(context);
        button.setEnabled(false);
        Object obj = new e(getContext(), (byte)0);
        if (!((g) (obj)).a())
        {
            obj = new f(getContext(), (byte)0);
        }
        if (!((g) (obj)).a())
        {
            obj = new d(getContext(), (byte)0);
        }
        button.setBackgroundDrawable(((g) (obj)).a(i));
        point = new Point();
        i;
        JVM INSTR tableswitch 0 2: default 136
    //                   0 238
    //                   1 228
    //                   2 245;
           goto _L1 _L2 _L3 _L4
_L1:
        int k;
        int l = j;
        j = 38;
        k = l;
_L6:
        android.util.DisplayMetrics displaymetrics = getResources().getDisplayMetrics();
        float f1 = TypedValue.applyDimension(1, j, displaymetrics);
        float f2 = TypedValue.applyDimension(1, k, displaymetrics);
        point.x = (int)(0.5D + (double)f1);
        point.y = (int)(0.5D + (double)f2);
        addView(button, new android.widget.FrameLayout.LayoutParams(point.x, point.y, 17));
        return;
_L3:
        j = 32;
        k = 20;
        continue; /* Loop/switch isn't completed */
_L2:
        k = 14;
        continue; /* Loop/switch isn't completed */
_L4:
        j = 50;
        k = 20;
        if (true) goto _L6; else goto _L5
_L5:
    }
}
