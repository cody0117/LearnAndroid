// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.b;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.TextView;
import com.aadhk.product.library.b;
import com.aadhk.product.library.c;

// Referenced classes of package com.aadhk.product.library.b:
//            h, j

final class i extends BaseAdapter
{

    final h a;
    private Context b;

    public i(h h1, Context context)
    {
        a = h1;
        super();
        b = context;
    }

    public final int getCount()
    {
        return h.a(a).length;
    }

    public final Object getItem(int k)
    {
        return h.a(a)[k];
    }

    public final long getItemId(int k)
    {
        return (long)k;
    }

    public final View getView(int k, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = ((LayoutInflater)b.getSystemService("layout_inflater")).inflate(c.d, null);
        }
        String s = h.a(a)[k];
        TextView textview = (TextView)view.findViewById(b.g);
        CheckBox checkbox = (CheckBox)view.findViewById(b.c);
        textview.setText(s);
        checkbox.setChecked(com.aadhk.product.library.b.h.b(a)[k]);
        view.setOnClickListener(new j(this, k));
        return view;
    }
}
