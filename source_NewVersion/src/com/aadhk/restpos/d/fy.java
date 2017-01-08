// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.aadhk.restpos.bean.User;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            fx, fz

final class fy extends BaseAdapter
{

    final fx a;

    private fy(fx fx1)
    {
        a = fx1;
        super();
    }

    fy(fx fx1, byte byte0)
    {
        this(fx1);
    }

    public final int getCount()
    {
        return fx.a(a).size();
    }

    public final Object getItem(int i)
    {
        return fx.a(a).get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        fz fz1;
        User user;
        if (view == null)
        {
            view = fx.b(a).inflate(0x7f03008d, null);
            fz1 = new fz(this, (byte)0);
            fz1.a = (TextView)view.findViewById(0x7f0b0223);
            fz1.b = (TextView)view.findViewById(0x7f0b0224);
            fz1.c = (RelativeLayout)view.findViewById(0x7f0b0228);
            view.setTag(fz1);
        } else
        {
            fz1 = (fz)view.getTag();
        }
        if (fx.c(a) == i)
        {
            fz1.c.setBackgroundResource(0x7f080067);
        } else
        {
            fz1.c.setBackgroundResource(0x7f080039);
        }
        user = (User)getItem(i);
        fz1.a.setText(user.getAccount());
        fz1.b.setText(fx.d(a)[-1 + user.getRole()]);
        return view;
    }
}
