// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.res.Resources;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.b.f;
import com.aadhk.product.library.b.g;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.PayInOutActivity;
import com.aadhk.restpos.bean.CashRegister;
import com.aadhk.restpos.f.i;

// Referenced classes of package com.aadhk.restpos.c:
//            ba, j, bb, cg, 
//            bc

public final class az extends e
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

    public az(PayInOutActivity payinoutactivity, CashRegister cashregister, int i1)
    {
        super(payinoutactivity, 0x7f03004a);
        q = payinoutactivity;
        n = true;
        p = i1;
        if (i1 == 1)
        {
            setTitle(0x7f0900cd);
        } else
        {
            setTitle(0x7f0900ce);
        }
        f = (Button)findViewById(0x7f0b0056);
        g = (Button)findViewById(0x7f0b0057);
        i = (EditText)findViewById(0x7f0b00f4);
        j = (EditText)findViewById(0x7f0b00f5);
        k = (EditText)findViewById(0x7f0b00f6);
        l = (EditText)findViewById(0x7f0b00f7);
        if (cashregister == null)
        {
            o = new CashRegister();
            r = com.aadhk.restpos.f.i.e();
            o.setDate(r);
            o.setTime(com.aadhk.restpos.f.i.f());
        } else
        {
            o = cashregister;
            r = cashregister.getDate();
        }
        t = payinoutactivity.j();
        i.setText(com.aadhk.product.library.c.h.b(o.getAmount()));
        j.setText(com.aadhk.restpos.f.i.d(o.getDate(), t));
        k.setText(o.getTime());
        l.setText(o.getNote());
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        i.setSelectAllOnFocus(true);
        i.setOnClickListener(this);
        j.setOnClickListener(this);
        k.setOnClickListener(this);
        i.setOnFocusChangeListener(new ba(this));
        m = c.getString(0x7f090055);
    }

    static String a(az az1)
    {
        return az1.t;
    }

    static String a(az az1, String s1)
    {
        az1.r = s1;
        return s1;
    }

    static EditText b(az az1)
    {
        return az1.j;
    }

    static String b(az az1, String s1)
    {
        az1.s = s1;
        return s1;
    }

    static EditText c(az az1)
    {
        return az1.k;
    }

    public final void b()
    {
        h = (Button)findViewById(0x7f0b00c9);
        h.setOnClickListener(this);
        h.setVisibility(0);
    }

    public final void onClick(View view)
    {
        if (view != f) goto _L2; else goto _L1
_L1:
        String s1 = i.getText().toString();
        if (!"0".equals(s1) && !"".equals(s1)) goto _L4; else goto _L3
_L3:
        i.setError(m);
_L6:
        return;
_L4:
        if (a != null)
        {
            o.setAmount(Double.parseDouble(i.getText().toString()));
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
        if (view == i)
        {
            i.selectAll();
            return;
        }
        if (view == j)
        {
            j j1 = new j(q, r);
            j1.a = new bb(this);
            j1.show();
            return;
        }
        if (view == k)
        {
            cg cg1 = new cg(q, s);
            cg1.a = new bc(this);
            cg1.show();
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
