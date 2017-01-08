// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.TextView;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.PaymentActivity;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Discount;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.util.m;
import com.aadhk.restpos.util.p;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            ca, bx, by, bz, 
//            cc

public final class bw extends e
    implements android.view.View.OnClickListener, android.widget.AdapterView.OnItemClickListener
{

    private cc f;
    private EditText g;
    private EditText h;
    private EditText i;
    private TextView j;
    private TextView k;
    private Button l;
    private Button m;
    private GridView n;
    private double o;
    private double p;
    private String q;
    private List r;
    private Company s;
    private Order t;
    private String u;
    private int v;
    private PaymentActivity w;
    private double x;

    public bw(PaymentActivity paymentactivity, List list, Order order, boolean flag)
    {
        super(paymentactivity, 0x7f03005b);
        setTitle(0x7f0802b5);
        s = ((POSApp)e.getApplicationContext()).b();
        u = s.getCurrencySign();
        v = s.getDecimalPlace();
        w = paymentactivity;
        r = list;
        t = order;
        x = order.getSubTotal();
        if (flag)
        {
            x = x + order.getTax1Amt() + order.getTax2Amt() + order.getTax3Amt();
        }
        list.add(0, new Discount());
        l = (Button)findViewById(0x7f0900db);
        m = (Button)findViewById(0x7f09005b);
        l.setOnClickListener(this);
        m.setOnClickListener(this);
        n = (GridView)findViewById(0x7f09013e);
        n.setOnItemClickListener(this);
        n.setAdapter(new ca(this, (byte)0));
        j = (TextView)findViewById(0x7f09013a);
        k = (TextView)findViewById(0x7f0900df);
        g = (EditText)findViewById(0x7f09013c);
        h = (EditText)findViewById(0x7f09013b);
        i = (EditText)findViewById(0x7f09013d);
        k.setText(u);
        j.setText(com.aadhk.restpos.util.p.b(v, x, u));
        o = t.getDiscountAmt();
        g.setText(com.aadhk.product.library.c.h.b(o));
        p = com.aadhk.restpos.util.m.b(o, x);
        q = com.aadhk.product.library.c.h.d(p);
        h.setText(q);
        i.setText(t.getDiscountReason());
        g.addTextChangedListener(new bx(this));
        h.addTextChangedListener(new by(this));
        h.setOnFocusChangeListener(new bz(this));
    }

    static double a(bw bw1, double d1)
    {
        bw1.o = d1;
        return d1;
    }

    static EditText a(bw bw1)
    {
        return bw1.g;
    }

    static String a(bw bw1, String s1)
    {
        bw1.q = s1;
        return s1;
    }

    static double b(bw bw1)
    {
        return bw1.o;
    }

    static double b(bw bw1, double d1)
    {
        bw1.p = d1;
        return d1;
    }

    static double c(bw bw1)
    {
        return bw1.x;
    }

    static double d(bw bw1)
    {
        return bw1.p;
    }

    static String e(bw bw1)
    {
        return bw1.q;
    }

    static EditText f(bw bw1)
    {
        return bw1.h;
    }

    static int g(bw bw1)
    {
        return bw1.v;
    }

    static List h(bw bw1)
    {
        return bw1.r;
    }

    static PaymentActivity i(bw bw1)
    {
        return bw1.w;
    }

    public final void a(cc cc1)
    {
        f = cc1;
    }

    public final void onClick(View view)
    {
        boolean flag = false;
        view.getId();
        JVM INSTR lookupswitch 2: default 32
    //                   2131296347: 164
    //                   2131296475: 33;
           goto _L1 _L2 _L3
_L1:
        return;
_L3:
        h.clearFocus();
        g.clearFocus();
        if (p > 100D)
        {
            h.setError(c.getString(0x7f080318));
        } else
        if (o > x)
        {
            g.setError(c.getString(0x7f080318));
            flag = false;
        } else
        {
            String s1 = i.getText().toString();
            t.setDiscountReason(s1);
            flag = true;
        }
        if (flag)
        {
            if (f != null)
            {
                f.a(o, p);
            }
            dismiss();
            return;
        }
          goto _L1
_L2:
        dismiss();
        return;
    }

    public final void onItemClick(AdapterView adapterview, View view, int i1, long l1)
    {
        Discount discount = (Discount)r.get(i1);
        i.setText(discount.getReason());
        if (discount.isPercentage())
        {
            o = com.aadhk.restpos.util.m.a(x, discount.getAmount(), v);
            p = discount.getAmount();
            q = com.aadhk.product.library.c.h.d(p);
        } else
        {
            o = discount.getAmount();
            p = com.aadhk.restpos.util.m.b(o, x);
            q = com.aadhk.product.library.c.h.d(p);
        }
        h.setText(q);
        g.setText(com.aadhk.product.library.c.h.b(o));
    }
}
