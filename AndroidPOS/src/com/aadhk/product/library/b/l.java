// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.b;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RadioButton;
import android.widget.TextView;
import com.aadhk.product.library.b;
import com.aadhk.product.library.c;

// Referenced classes of package com.aadhk.product.library.b:
//            k, m

final class l extends BaseAdapter
{

    final k a;
    private Context b;

    public l(k k1, Context context)
    {
        a = k1;
        super();
        b = context;
    }

    public final int getCount()
    {
        return k.a(a).length;
    }

    public final Object getItem(int i)
    {
        return k.a(a)[i];
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = ((LayoutInflater)b.getSystemService("layout_inflater")).inflate(c.e, null);
        }
        String s = k.a(a)[i];
        TextView textview = (TextView)view.findViewById(b.g);
        RadioButton radiobutton = (RadioButton)view.findViewById(b.h);
        textview.setText(s);
        if (i == com.aadhk.product.library.b.k.b(a))
        {
            radiobutton.setChecked(true);
        } else
        {
            radiobutton.setChecked(false);
        }
        view.setOnClickListener(new m(this, i));
        return view;
    }
}
