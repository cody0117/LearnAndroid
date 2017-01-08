// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.soundcloud.android.crop;

import android.graphics.Rect;
import android.graphics.RectF;
import java.util.ArrayList;

// Referenced classes of package com.soundcloud.android.crop:
//            i, CropImageActivity, n, ac, 
//            CropImageView

final class j
    implements Runnable
{

    final i a;

    j(i k)
    {
        a = k;
        super();
    }

    public final void run()
    {
        i k = a;
        if (CropImageActivity.a(k.a) != null)
        {
            n n1 = new n(CropImageActivity.b(k.a));
            int l = CropImageActivity.a(k.a).e();
            int i1 = CropImageActivity.a(k.a).d();
            Rect rect = new Rect(0, 0, l, i1);
            int j1 = (4 * Math.min(l, i1)) / 5;
            int k1;
            int l1;
            int i2;
            RectF rectf;
            android.graphics.Matrix matrix;
            boolean flag;
            if (CropImageActivity.c(k.a) != 0 && CropImageActivity.d(k.a) != 0)
            {
                if (CropImageActivity.c(k.a) > CropImageActivity.d(k.a))
                {
                    k1 = (j1 * CropImageActivity.d(k.a)) / CropImageActivity.c(k.a);
                } else
                {
                    int j2 = (j1 * CropImageActivity.c(k.a)) / CropImageActivity.d(k.a);
                    int k2 = j1;
                    j1 = j2;
                    k1 = k2;
                }
            } else
            {
                k1 = j1;
            }
            l1 = (l - j1) / 2;
            i2 = (i1 - k1) / 2;
            rectf = new RectF(l1, i2, j1 + l1, k1 + i2);
            matrix = CropImageActivity.b(k.a).b();
            if (CropImageActivity.c(k.a) != 0 && CropImageActivity.d(k.a) != 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            n1.a(matrix, rect, rectf, flag);
            CropImageActivity.b(k.a).a(n1);
        }
        CropImageActivity.b(a.a).invalidate();
        if (CropImageActivity.b(a.a).a.size() == 1)
        {
            CropImageActivity.a(a.a, (n)CropImageActivity.b(a.a).a.get(0));
            CropImageActivity.f(a.a).c();
        }
    }
}
