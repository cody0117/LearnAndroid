// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.text.TextUtils;
import android.widget.EditText;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Item;

// Referenced classes of package com.aadhk.restpos.d:
//            z

final class ae
    implements f
{

    final z a;

    ae(z z1)
    {
        a = z1;
        super();
    }

    public final void a(Object obj)
    {
        boolean aflag[] = (boolean[])obj;
        String s = "";
        if (aflag[0])
        {
            z.k(a).setTax1Id(1);
            s = z.m(a).getTax1Name();
        } else
        {
            z.k(a).setTax1Id(0);
        }
        if (aflag[1])
        {
            if (!TextUtils.isEmpty(s))
            {
                s = (new StringBuilder()).append(s).append(", ").append(z.m(a).getTax2Name()).toString();
            } else
            {
                s = z.m(a).getTax2Name();
            }
            z.k(a).setTax2Id(2);
        } else
        {
            z.k(a).setTax2Id(0);
        }
        z.n(a).setText(s);
    }
}
