// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.Discount;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            bw

public final class bv extends e
    implements android.widget.AdapterView.OnItemClickListener
{

    private ListView f;
    private List g;
    private String h;
    private int i;
    private Discount j;

    public bv(Context context, String s, int k, List list, Discount discount)
    {
        super(context, 0x7f030056);
        h = s;
        i = k;
        j = discount;
        g = list;
        f = (ListView)findViewById(0x7f0b0120);
        f.setAdapter(new bw(this, context));
        f.setOnItemClickListener(this);
    }

    static List a(bv bv1)
    {
        return bv1.g;
    }

    static int b(bv bv1)
    {
        return bv1.i;
    }

    static String c(bv bv1)
    {
        return bv1.h;
    }

    static Discount d(bv bv1)
    {
        return bv1.j;
    }

    public final void onItemClick(AdapterView adapterview, View view, int k, long l)
    {
        Discount discount = (Discount)g.get(k);
        if (j != null && j.getId() == discount.getId())
        {
            a.a(null);
        } else
        {
            a.a(discount);
        }
        dismiss();
    }
}
