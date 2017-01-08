// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.EditText;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.Item;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            bu

final class bz
    implements f
{

    final String a[];
    final bu b;

    bz(bu bu1, String as[])
    {
        b = bu1;
        a = as;
        super();
    }

    public final void a(Object obj)
    {
        int i = ((Integer)obj).intValue();
        com.aadhk.restpos.d.bu.f(b).setText(a[i]);
        if (i == 0)
        {
            bu.g(b).setPrinterId(0);
            return;
        } else
        {
            int j = i - 1;
            bu.g(b).setPrinterId(((Integer)bu.h(b).get(j)).intValue());
            return;
        }
    }
}
