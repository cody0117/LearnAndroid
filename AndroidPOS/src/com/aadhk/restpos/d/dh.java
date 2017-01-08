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
import com.aadhk.restpos.util.p;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            db, di

final class dh extends BaseAdapter
{

    final db a;

    private dh(db db1)
    {
        a = db1;
        super();
    }

    dh(db db1, byte byte0)
    {
        this(db1);
    }

    public final int getCount()
    {
        return db.d(a).size();
    }

    public final Object getItem(int i)
    {
        return db.d(a).get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        di di1;
        Modifier modifier;
        if (view == null)
        {
            view = db.g(a).inflate(0x7f0300c0, null);
            di1 = new di(this, (byte)0);
            di1.a = (TextView)view.findViewById(0x7f0902b5);
            di1.b = (TextView)view.findViewById(0x7f090171);
            di1.c = (TextView)view.findViewById(0x7f0900f3);
            view.setTag(di1);
        } else
        {
            di1 = (di)view.getTag();
        }
        modifier = (Modifier)getItem(i);
        di1.b.setText(modifier.getName());
        di1.c.setText(p.a(db.h(a), modifier.getPrice(), db.i(a)));
        if (modifier.getType() == 1)
        {
            di1.a.setText("+");
        } else
        if (modifier.getType() == 2)
        {
            di1.a.setText("-");
            return view;
        }
        return view;
    }
}
