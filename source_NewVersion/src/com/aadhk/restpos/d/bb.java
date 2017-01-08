// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.aadhk.restpos.bean.Modifier;
import com.aadhk.restpos.f.j;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            au, bc

final class bb extends BaseAdapter
{

    final au a;

    private bb(au au1)
    {
        a = au1;
        super();
    }

    bb(au au1, byte byte0)
    {
        this(au1);
    }

    public final int getCount()
    {
        return au.a(a).size();
    }

    public final Object getItem(int i)
    {
        return au.a(a).get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        bc bc1;
        Modifier modifier;
        if (view == null)
        {
            view = au.g(a).inflate(0x7f0300a2, null);
            bc1 = new bc(this, (byte)0);
            bc1.a = (TextView)view.findViewById(0x7f0b0241);
            bc1.b = (TextView)view.findViewById(0x7f0b012c);
            bc1.c = (TextView)view.findViewById(0x7f0b00d3);
            view.setTag(bc1);
        } else
        {
            bc1 = (bc)view.getTag();
        }
        modifier = (Modifier)getItem(i);
        bc1.b.setText(modifier.getName());
        bc1.c.setText(j.a(au.h(a), modifier.getPrice(), au.i(a)));
        if (modifier.getType() == 1)
        {
            bc1.a.setText("+");
        } else
        if (modifier.getType() == 2)
        {
            bc1.a.setText("-");
            return view;
        }
        return view;
    }
}
