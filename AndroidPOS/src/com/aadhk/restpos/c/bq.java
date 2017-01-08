// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.b.f;
import com.aadhk.product.library.b.g;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.PayInOutActivity;
import com.aadhk.restpos.bean.CashRegister;
import com.aadhk.restpos.util.o;

// Referenced classes of package com.aadhk.restpos.c:
//            br, g, bs, dr, 
//            bt

public final class bq extends e
    implements android.view.View.OnClickListener
{

    public Button f;
    public Button g;
    public Button h;
    private EditText i;
    private EditText j;
    private EditText k;
    private EditText l;
    private CharSequence m;
    private boolean n;
    private CashRegister o;
    private int p;
    private PayInOutActivity q;
    private String r;
    private String s;
    private String t;

    public bq(PayInOutActivity payinoutactivity, CashRegister cashregister, int i1)
    {
        super(payinoutactivity, 0x7f030059);
        q = payinoutactivity;
        n = true;
        p = i1;
        if (i1 == 1)
        {
            setTitle(0x7f0800fc);
        } else
        {
            setTitle(0x7f0800fd);
        }
        f = (Button)findViewById(0x7f09005a);
        g = (Button)findViewById(0x7f09005b);
        i = (EditText)findViewById(0x7f090132);
        j = (EditText)findViewById(0x7f090133);
        k = (EditText)findViewById(0x7f090134);
        l = (EditText)findViewById(0x7f090135);
        if (cashregister == null)
        {
            o = new CashRegister();
            r = com.aadhk.restpos.util.o.e();
            o.setDate(r);
            o.setTime(com.aadhk.restpos.util.o.f());
        } else
        {
            o = cashregister;
            r = cashregister.getDate();
        }
        t = payinoutactivity.q();
        i.setText(com.aadhk.product.library.c.h.b(o.getAmount()));
        j.setText(com.aadhk.restpos.util.o.e(o.getDate(), t));
        k.setText(o.getTime());
        l.setText(o.getNote());
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        j.setOnClickListener(this);
        k.setOnClickListener(this);
        i.setOnFocusChangeListener(new br(this));
        m = c.getString(0x7f080085);
    }

    static String a(bq bq1)
    {
        return bq1.t;
    }

    static String a(bq bq1, String s1)
    {
        bq1.r = s1;
        return s1;
    }

    static EditText b(bq bq1)
    {
        return bq1.j;
    }

    static String b(bq bq1, String s1)
    {
        bq1.s = s1;
        return s1;
    }

    static EditText c(bq bq1)
    {
        return bq1.k;
    }

    public final void b()
    {
        h = (Button)findViewById(0x7f0900dc);
        h.setOnClickListener(this);
        h.setVisibility(0);
    }

    public final void onClick(View view)
    {
        if (view != f) goto _L2; else goto _L1
_L1:
        if (!TextUtils.isEmpty(i.getText().toString())) goto _L4; else goto _L3
_L3:
        i.setError(m);
_L6:
        return;
_L4:
        if (a != null)
        {
            o.setAmount(com.aadhk.product.library.c.h.d(i.getText().toString()));
            o.setDate(r);
            o.setTime(k.getText().toString());
            o.setNote(l.getText().toString());
            o.setTranxType(p);
            a.a(o);
            dismiss();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (view == g)
        {
            dismiss();
            return;
        }
        if (view != h)
        {
            break; /* Loop/switch isn't completed */
        }
        if (b != null)
        {
            b.a();
            dismiss();
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
        if (view == j)
        {
            com.aadhk.restpos.c.g g1 = new com.aadhk.restpos.c.g(q, r);
            g1.a = new bs(this);
            g1.show();
            return;
        }
        if (view == k)
        {
            dr dr1 = new dr(q, s);
            dr1.a = new bt(this);
            dr1.show();
            return;
        }
        if (view == l && n && "".equals(l.getText().toString()))
        {
            l.setError(m);
            return;
        }
        if (true) goto _L6; else goto _L7
_L7:
    }
}
