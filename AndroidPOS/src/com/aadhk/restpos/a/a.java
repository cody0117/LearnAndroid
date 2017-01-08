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
import com.aadhk.restpos.util.o;
import com.aadhk.restpos.util.p;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            ag, b

public final class a extends ag
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
        j = payinoutactivity.q();
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
            view = b.inflate(0x7f03001c, null);
            b1 = new b(this, (byte)0);
            b1.a = (TextView)view.findViewById(0x7f090049);
            b1.b = (TextView)view.findViewById(0x7f09004a);
            b1.c = (TextView)view.findViewById(0x7f09004c);
            b1.d = (TextView)view.findViewById(0x7f09004b);
            b1.e = (TextView)view.findViewById(0x7f09004d);
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
                view.setBackgroundResource(0x7f070053);
            }
        }
        if (TextUtils.isEmpty(cashregister.getNote()))
        {
            b1.c.setVisibility(8);
        }
        b1.a.setText(o.e(cashregister.getDate(), j));
        b1.b.setText(cashregister.getTime());
        b1.c.setText(cashregister.getNote());
        if (cashregister.getTranxType() == 1)
        {
            s3 = i.getResources().getString(0x7f080104);
        } else
        if (cashregister.getTranxType() == 2)
        {
            s3 = i.getResources().getString(0x7f080105);
        } else
        {
            s3 = i.getResources().getString(0x7f080106);
        }
        b1.d.setText(s3);
        b1.e.setText(String.valueOf(p.a(g, cashregister.getAmount(), d)));
        return view;
    }
}
