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
//            bu

final class ca
    implements f
{

    final bu a;

    ca(bu bu1)
    {
        a = bu1;
        super();
    }

    public final void a(Object obj)
    {
        boolean aflag[] = (boolean[])obj;
        String s = "";
        if (aflag[0])
        {
            bu.g(a).setTax1Id(1);
            s = bu.i(a).getTax1Name();
        } else
        {
            bu.g(a).setTax1Id(0);
        }
        if (aflag[1])
        {
            if (!TextUtils.isEmpty(s))
            {
                s = (new StringBuilder()).append(s).append(", ").append(bu.i(a).getTax2Name()).toString();
            } else
            {
                s = bu.i(a).getTax2Name();
            }
            bu.g(a).setTax2Id(2);
        } else
        {
            bu.g(a).setTax2Id(0);
        }
        if (aflag[2])
        {
            if (!TextUtils.isEmpty(s))
            {
                s = (new StringBuilder()).append(s).append(", ").append(bu.i(a).getTax3Name()).toString();
            } else
            {
                s = bu.i(a).getTax3Name();
            }
            bu.g(a).setTax3Id(3);
        } else
        {
            bu.g(a).setTax3Id(0);
        }
        bu.j(a).setText(s);
    }
}
