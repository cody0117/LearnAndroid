// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import com.aadhk.product.library.b.e;
import com.aadhk.restpos.bean.Order;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            dg, d, df

public final class de extends e
    implements android.widget.AdapterView.OnItemClickListener
{

    private List f;
    private GridView g;
    private Context h;
    private boolean i;
    private LayoutInflater j;

    public de(Context context, List list, boolean flag)
    {
        super(context, 0x7f03006a);
        h = context;
        i = flag;
        f = list;
        j = LayoutInflater.from(context);
        g = (GridView)findViewById(0x7f090163);
        g.setOnItemClickListener(this);
        g.setAdapter(new dg(this, (byte)0));
    }

    static List a(de de1)
    {
        return de1.f;
    }

    static LayoutInflater b(de de1)
    {
        return de1.j;
    }

    public final void onItemClick(AdapterView adapterview, View view, int k, long l)
    {
        Order order = (Order)f.get(k);
        d d1 = new d(h);
        if (i)
        {
            String s1 = h.getString(0x7f080263);
            Object aobj1[] = new Object[1];
            aobj1[0] = order.getTableName();
            d1.setTitle(String.format(s1, aobj1));
        } else
        {
            String s = h.getString(0x7f080267);
            Object aobj[] = new Object[1];
            aobj[0] = order.getTableName();
            d1.setTitle(String.format(s, aobj));
        }
        d1.a(new df(this, order));
        d1.show();
    }
}
