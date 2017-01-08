// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.EditText;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.Item;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            z

final class ad
    implements f
{

    final String a[];
    final z b;

    ad(z z1, String as[])
    {
        b = z1;
        a = as;
        super();
    }

    public final void a(Object obj)
    {
        int i = ((Integer)obj).intValue();
        z.j(b).setText(a[i]);
        if (i == 0)
        {
            z.k(b).setPrinterId(0);
            return;
        } else
        {
            int j = i - 1;
            z.k(b).setPrinterId(((Integer)z.l(b).get(j)).intValue());
            return;
        }
    }
}
