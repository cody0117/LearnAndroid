// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.aadhk.restpos.bean.PriceSchedule;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            db, dd

final class dc extends BaseAdapter
{

    final db a;

    private dc(db db1)
    {
        a = db1;
        super();
    }

    dc(db db1, byte byte0)
    {
        this(db1);
    }

    public final int getCount()
    {
        return db.a(a).size();
    }

    public final Object getItem(int i)
    {
        return db.a(a).get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        dd dd1;
        PriceSchedule priceschedule;
        if (view == null)
        {
            view = db.b(a).inflate(0x7f0300b0, null);
            dd1 = new dd(this, (byte)0);
            dd1.a = (TextView)view.findViewById(0x7f0b011f);
            dd1.b = (ImageView)view.findViewById(0x7f0b0256);
            dd1.c = (LinearLayout)view.findViewById(0x7f0b013b);
            view.setTag(dd1);
        } else
        {
            dd1 = (dd)view.getTag();
        }
        if (db.c(a) == i)
        {
            dd1.c.setBackgroundResource(0x7f080067);
        } else
        {
            dd1.c.setBackgroundResource(0x7f080039);
        }
        priceschedule = (PriceSchedule)getItem(i);
        dd1.a.setText(priceschedule.getName());
        if (priceschedule.isEnable())
        {
            dd1.b.setBackgroundResource(0x7f0200a8);
            return view;
        } else
        {
            dd1.b.setBackgroundResource(0x7f0200a1);
            return view;
        }
    }
}
