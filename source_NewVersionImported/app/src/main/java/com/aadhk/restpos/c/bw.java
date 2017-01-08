// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.aadhk.restpos.bean.Discount;
import com.aadhk.restpos.f.j;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            bv, bx

final class bw extends BaseAdapter
{

    final bv a;
    private LayoutInflater b;
    private Context c;

    public bw(bv bv1, Context context)
    {
        a = bv1;
        super();
        c = context;
        b = LayoutInflater.from(context);
    }

    public final int getCount()
    {
        return bv.a(a).size();
    }

    public final Object getItem(int i)
    {
        return bv.a(a).get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        bx bx1;
label0:
        {
            Discount discount;
            if (view == null)
            {
                view = b.inflate(0x7f030097, null);
                bx1 = new bx(this, (byte)0);
                bx1.b = (TextView)view.findViewById(0x7f0b011f);
                bx1.c = (TextView)view.findViewById(0x7f0b0237);
                bx1.a = (LinearLayout)view.findViewById(0x7f0b0236);
                view.setTag(bx1);
            } else
            {
                bx1 = (bx)view.getTag();
            }
            discount = (Discount)getItem(i);
            bx1.b.setText(discount.getReason());
            if (discount.isPer())
            {
                bx1.c.setText((new StringBuilder()).append(j.b(discount.getAmount())).append("%").toString());
            } else
            {
                bx1.c.setText(j.a(bv.b(a), discount.getAmount(), bv.c(a)));
            }
            if (bv.d(a) != null)
            {
                if (bv.d(a).getId() != discount.getId())
                {
                    break label0;
                }
                bx1.a.setBackgroundColor(c.getResources().getColor(0x7f080069));
            }
            return view;
        }
        bx1.a.setBackgroundResource(0x7f020069);
        return view;
    }
}
