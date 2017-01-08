// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.b.f;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.f.j;

// Referenced classes of package com.aadhk.restpos.c:
//            bf, bg, bh

public final class be extends e
    implements android.view.View.OnClickListener
{

    private Button f;
    private Button g;
    private Button h;
    private Button i;
    private Button j;
    private Button k;
    private EditText l;
    private EditText m;
    private TextView n;
    private TextView o;
    private Company p;
    private Order q;
    private String r;
    private double s;
    private int t;
    private double u;
    private int v;

    public be(Context context, Order order, double d1)
    {
        super(context, 0x7f03003e);
        setTitle(0x7f0902aa);
        p = ((POSApp)context.getApplicationContext()).b();
        r = p.getCurrencySign();
        v = p.getDecimalPlace();
        u = d1;
        q = order;
        n = (TextView)findViewById(0x7f0b00db);
        l = (EditText)findViewById(0x7f0b00dc);
        m = (EditText)findViewById(0x7f0b00dd);
        o = (TextView)findViewById(0x7f0b00bc);
        o.setText(r);
        h = (Button)findViewById(0x7f0b00de);
        h.setOnClickListener(this);
        i = (Button)findViewById(0x7f0b00df);
        i.setOnClickListener(this);
        j = (Button)findViewById(0x7f0b00e0);
        j.setOnClickListener(this);
        k = (Button)findViewById(0x7f0b00e1);
        k.setOnClickListener(this);
        f = (Button)findViewById(0x7f0b00e2);
        g = (Button)findViewById(0x7f0b00e3);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        l.setOnFocusChangeListener(new bf(this));
        m.setOnFocusChangeListener(new bg(this));
        l.setOnFocusChangeListener(new bh(this));
        s = q.getServiceAmt();
        t = p.getServiceFee();
        if (s > 0.0D)
        {
            m.setText(com.aadhk.product.library.c.h.b(s));
            l.setText(com.aadhk.product.library.c.h.b(com.aadhk.restpos.f.h.b(s, u)));
        } else
        if (p.getServiceFee() == 0)
        {
            l.setText("");
        } else
        {
            s = com.aadhk.restpos.f.h.a(u, t, v);
            l.setText(com.aadhk.product.library.c.h.b(t));
            m.setText(com.aadhk.product.library.c.h.b(s));
        }
        n.setText(com.aadhk.restpos.f.j.a(v, u, r));
    }

    static double a(be be1, double d1)
    {
        be1.s = d1;
        return d1;
    }

    static int a(be be1, int i1)
    {
        be1.t = i1;
        return i1;
    }

    static EditText a(be be1)
    {
        return be1.m;
    }

    private void a(int i1)
    {
        s = com.aadhk.restpos.f.h.a(u, i1, v);
        if (i1 == 0)
        {
            l.setText("");
            m.setText("");
            return;
        } else
        {
            l.setText(com.aadhk.product.library.c.h.b(i1));
            m.setText(com.aadhk.product.library.c.h.b(s));
            return;
        }
    }

    static double b(be be1)
    {
        return be1.s;
    }

    static double c(be be1)
    {
        return be1.u;
    }

    static EditText d(be be1)
    {
        return be1.l;
    }

    static int e(be be1)
    {
        return be1.t;
    }

    static int f(be be1)
    {
        return be1.v;
    }

    public final void onClick(View view)
    {
        boolean flag = false;
        view.getId();
        JVM INSTR lookupswitch 8: default 80
    //                   2131427550: 200
    //                   2131427551: 206
    //                   2131427552: 213
    //                   2131427553: 220
    //                   2131427554: 86
    //                   2131427555: 81
    //                   2131427708: 80
    //                   2131427710: 80;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L1 _L1
_L1:
        return;
_L7:
        dismiss();
        return;
_L6:
        l.clearFocus();
        m.clearFocus();
        if (t > 100)
        {
            l.setError(c.getString(0x7f0902ba));
        } else
        if (s > u)
        {
            m.setError(c.getString(0x7f0902ba));
            flag = false;
        } else
        {
            q.setServiceAmt(s);
            flag = true;
        }
        if (flag)
        {
            if (a != null)
            {
                a.a(null);
            }
            dismiss();
            return;
        }
          goto _L1
_L2:
        a(0);
        return;
_L3:
        a(10);
        return;
_L4:
        a(15);
        return;
_L5:
        a(20);
        return;
    }
}
