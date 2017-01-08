// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
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
import com.aadhk.restpos.util.m;
import com.aadhk.restpos.util.p;

// Referenced classes of package com.aadhk.restpos.c:
//            ce, cf, cg

public final class cd extends e
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
    private String t;
    private double u;
    private int v;
    private double w;

    public cd(Context context, Order order, boolean flag, boolean flag1)
    {
        super(context, 0x7f03004a);
        setTitle(0x7f080308);
        p = ((POSApp)context.getApplicationContext()).b();
        r = p.getCurrencySign();
        v = p.getDecimalPlace();
        q = order;
        w = order.getSubTotal();
        if (!flag) goto _L2; else goto _L1
_L1:
        w = (w + order.getTax1Amt() + order.getTax2Amt() + order.getTax3Amt()) - order.getDiscountAmt();
_L4:
        n = (TextView)findViewById(0x7f09010f);
        l = (EditText)findViewById(0x7f090110);
        m = (EditText)findViewById(0x7f090111);
        o = (TextView)findViewById(0x7f0900df);
        o.setText(r);
        h = (Button)findViewById(0x7f090113);
        h = (Button)findViewById(0x7f090113);
        h.setOnClickListener(this);
        i = (Button)findViewById(0x7f090114);
        i.setOnClickListener(this);
        j = (Button)findViewById(0x7f090115);
        j.setOnClickListener(this);
        k = (Button)findViewById(0x7f090116);
        k.setOnClickListener(this);
        f = (Button)findViewById(0x7f0900db);
        g = (Button)findViewById(0x7f09005b);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        l.setOnFocusChangeListener(new ce(this));
        m.setOnFocusChangeListener(new cf(this));
        l.setOnFocusChangeListener(new cg(this));
        u = q.getGratuity();
        s = com.aadhk.restpos.util.m.b(u, w);
        t = com.aadhk.product.library.c.h.d(s);
        l.setText(t);
        m.setText(com.aadhk.product.library.c.h.b(u));
        n.setText(com.aadhk.restpos.util.p.b(v, w, r));
        return;
_L2:
        if (!flag1)
        {
            w = w - order.getDiscountAmt();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    static double a(cd cd1, double d1)
    {
        cd1.u = d1;
        return d1;
    }

    static EditText a(cd cd1)
    {
        return cd1.m;
    }

    static String a(cd cd1, String s1)
    {
        cd1.t = s1;
        return s1;
    }

    private void a(double d1)
    {
        u = com.aadhk.restpos.util.m.a(w, d1, v);
        s = com.aadhk.restpos.util.m.b(u, w);
        t = com.aadhk.product.library.c.h.d(s);
        l.setText(t);
        m.setText(com.aadhk.product.library.c.h.c(u));
    }

    static double b(cd cd1)
    {
        return cd1.u;
    }

    static double b(cd cd1, double d1)
    {
        cd1.s = d1;
        return d1;
    }

    static double c(cd cd1)
    {
        return cd1.w;
    }

    static double d(cd cd1)
    {
        return cd1.s;
    }

    static String e(cd cd1)
    {
        return cd1.t;
    }

    static EditText f(cd cd1)
    {
        return cd1.l;
    }

    static int g(cd cd1)
    {
        return cd1.v;
    }

    public final void onClick(View view)
    {
        boolean flag = false;
        view.getId();
        JVM INSTR lookupswitch 6: default 64
    //                   2131296347: 65
    //                   2131296475: 70
    //                   2131296531: 220
    //                   2131296532: 226
    //                   2131296533: 234
    //                   2131296534: 242;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L7:
        break MISSING_BLOCK_LABEL_242;
_L1:
        return;
_L2:
        dismiss();
        return;
_L3:
        l.clearFocus();
        m.clearFocus();
        if (s > 100D)
        {
            l.setError(c.getString(0x7f080318));
        } else
        if (u > w)
        {
            m.setError(c.getString(0x7f080318));
            flag = false;
        } else
        {
            String s1 = m.getText().toString();
            if (!TextUtils.isEmpty(s1))
            {
                u = com.aadhk.product.library.c.h.d(s1);
            } else
            {
                u = 0.0D;
            }
            q.setGratuity(u);
            flag = true;
        }
_L8:
        if (flag)
        {
            if (a != null)
            {
                a.a(null);
            }
            dismiss();
            return;
        }
        if (true) goto _L1; else goto _L4
_L4:
        a(0.0D);
        return;
_L5:
        a(10D);
        return;
_L6:
        a(15D);
        return;
        a(20D);
        return;
          goto _L8
    }
}
