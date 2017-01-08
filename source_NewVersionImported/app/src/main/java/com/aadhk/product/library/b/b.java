// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.b;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.aadhk.product.library.c;

// Referenced classes of package com.aadhk.product.library.b:
//            c, a

final class b extends BaseAdapter
{

    final a a;
    private final String b[];
    private final Context c;
    private final LayoutInflater d;

    public b(a a1, Context context, String as[])
    {
        a = a1;
        super();
        c = context;
        b = as;
        d = LayoutInflater.from(context);
    }

    public final int getCount()
    {
        return b.length;
    }

    public final Object getItem(int i)
    {
        return Integer.valueOf(b.length);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        com.aadhk.product.library.b.c c1;
        com.aadhk.product.library.bean.b b1;
        if (view == null)
        {
            view = d.inflate(c.e, null);
            com.aadhk.product.library.b.c c2 = new com.aadhk.product.library.b.c(this, (byte)0);
            c2.a = (TextView)view.findViewById(com.aadhk.product.library.b.g);
            view.setTag(c2);
            c1 = c2;
        } else
        {
            c1 = (com.aadhk.product.library.b.c)view.getTag();
        }
        b1 = new com.aadhk.product.library.bean.b();
        b1.a(b[i]);
        c1.a.setText(b1.a());
        return view;
    }
}
