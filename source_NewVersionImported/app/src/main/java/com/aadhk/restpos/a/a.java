// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.content.res.Resources;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.aadhk.restpos.PayInOutActivity;
import com.aadhk.restpos.bean.CashRegister;
import com.aadhk.restpos.f.i;
import com.aadhk.restpos.f.j;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            aa, b

public final class a extends aa
{

    private List h;
    private PayInOutActivity i;
    private String j;
    private String k;

    public a(PayInOutActivity payinoutactivity, List list, String s)
    {
        super(payinoutactivity);
        i = payinoutactivity;
        h = list;
        k = s;
        j = payinoutactivity.j();
    }

    public final int getCount()
    {
        return h.size();
    }

    public final Object getItem(int l)
    {
        return h.get(l);
    }

    public final long getItemId(int l)
    {
        return (long)l;
    }

    public final View getView(int l, View view, ViewGroup viewgroup)
    {
        b b1;
        CashRegister cashregister;
        String s;
        String s1;
        String s2;
        String s3;
        if (view == null)
        {
            view = b.inflate(0x7f03001b, null);
            b1 = new b(this, (byte)0);
            b1.a = (TextView)view.findViewById(0x7f0b0045);
            b1.b = (TextView)view.findViewById(0x7f0b0046);
            b1.c = (TextView)view.findViewById(0x7f0b0048);
            b1.d = (TextView)view.findViewById(0x7f0b0047);
            b1.e = (TextView)view.findViewById(0x7f0b0049);
            view.setTag(b1);
        } else
        {
            b1 = (b)view.getTag();
        }
        cashregister = (CashRegister)getItem(l);
        s = cashregister.getDate();
        s1 = cashregister.getTime();
        s2 = (new StringBuilder()).append(s).append(" ").append(s1).toString();
        if (!TextUtils.isEmpty(s2) && !TextUtils.isEmpty(k))
        {
            if (s2.compareTo(k) > 0)
            {
                view.setBackgroundResource(0);
            } else
            {
                view.setBackgroundResource(0x7f080041);
            }
        }
        if (TextUtils.isEmpty(cashregister.getNote()))
        {
            b1.c.setVisibility(8);
        }
        b1.a.setText(com.aadhk.restpos.f.i.d(cashregister.getDate(), j));
        b1.b.setText(cashregister.getTime());
        b1.c.setText(cashregister.getNote());
        if (cashregister.getTranxType() == 1)
        {
            s3 = i.getResources().getString(0x7f0900d5);
        } else
        if (cashregister.getTranxType() == 2)
        {
            s3 = i.getResources().getString(0x7f0900d6);
        } else
        {
            s3 = i.getResources().getString(0x7f0900d7);
        }
        b1.d.setText(s3);
        b1.e.setText(String.valueOf(com.aadhk.restpos.f.j.a(g, cashregister.getAmount(), d)));
        return view;
    }
}
