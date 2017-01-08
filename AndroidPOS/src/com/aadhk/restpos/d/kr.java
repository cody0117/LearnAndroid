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
//            kq, ks

final class kr extends BaseAdapter
{

    final kq a;

    private kr(kq kq1)
    {
        a = kq1;
        super();
    }

    kr(kq kq1, byte byte0)
    {
        this(kq1);
    }

    public final int getCount()
    {
        return kq.a(a).size();
    }

    public final Object getItem(int i)
    {
        return kq.a(a).get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        ks ks1;
        User user;
        if (view == null)
        {
            view = kq.b(a).inflate(0x7f0300aa, null);
            ks1 = new ks(this, (byte)0);
            ks1.a = (TextView)view.findViewById(0x7f09028a);
            ks1.b = (TextView)view.findViewById(0x7f09028b);
            ks1.c = (RelativeLayout)view.findViewById(0x7f09028f);
            view.setTag(ks1);
        } else
        {
            ks1 = (ks)view.getTag();
        }
        if (kq.c(a) == i)
        {
            ks1.c.setBackgroundResource(0x7f07007d);
        } else
        {
            ks1.c.setBackgroundResource(0x7f07003b);
        }
        user = (User)getItem(i);
        ks1.a.setText(user.getAccount());
        ks1.b.setText(kq.d(a)[-1 + user.getRole()]);
        return view;
    }
}
