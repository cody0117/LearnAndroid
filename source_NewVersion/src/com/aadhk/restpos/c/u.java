// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.res.Resources;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.b.f;
import com.aadhk.product.library.b.g;
import com.aadhk.restpos.DiscountActivity;
import com.aadhk.restpos.bean.Discount;
import com.aadhk.restpos.f.j;

public final class u extends e
    implements android.view.View.OnClickListener
{

    private DiscountActivity f;
    private Button g;
    private Button h;
    private Button i;
    private TextView j;
    private ToggleButton k;
    private EditText l;
    private EditText m;
    private Discount n;

    public u(DiscountActivity discountactivity, Discount discount)
    {
        super(discountactivity, 0x7f030035);
        f = discountactivity;
        g = (Button)findViewById(0x7f0b0056);
        h = (Button)findViewById(0x7f0b0057);
        j = (TextView)findViewById(0x7f0b00bc);
        k = (ToggleButton)findViewById(0x7f0b00cb);
        l = (EditText)findViewById(0x7f0b00ca);
        m = (EditText)findViewById(0x7f0b00cc);
        k.setOnClickListener(this);
        g.setOnClickListener(this);
        h.setOnClickListener(this);
        l.setSelectAllOnFocus(true);
        l.setOnClickListener(this);
        m.setSelectAllOnFocus(true);
        m.setOnClickListener(this);
        if (discount == null)
        {
            n = new Discount();
            n.setPer(true);
        } else
        {
            n = discount;
        }
        l.setText(n.getReason());
        if (n.isPer())
        {
            j.setText(0x7f0901a6);
        } else
        {
            j.setText(discountactivity.k());
        }
        m.setText(com.aadhk.restpos.f.j.b(n.getAmount()));
        k.setChecked(n.isPer());
    }

    public final void b()
    {
        i = (Button)findViewById(0x7f0b00c9);
        i.setOnClickListener(this);
        i.setVisibility(0);
    }

    public final void onClick(View view)
    {
        boolean flag = false;
        if (view != k) goto _L2; else goto _L1
_L1:
        boolean flag1 = k.isChecked();
        if (flag1)
        {
            j.setText(0x7f0901a6);
            m.setHint(0x7f090304);
        } else
        {
            j.setText(f.k());
            m.setHint(0x7f090303);
        }
        n.setPer(flag1);
_L9:
        return;
_L2:
        if (view != g) goto _L4; else goto _L3
_L3:
        double d = com.aadhk.restpos.f.j.d(m.getText().toString());
        if (!"".equals(l.getText().toString())) goto _L6; else goto _L5
_L5:
        l.setError(c.getString(0x7f090055));
_L7:
        if (flag && a != null)
        {
            n.setReason(l.getText().toString());
            n.setAmount(com.aadhk.restpos.f.j.d(m.getText().toString()));
            a.a(n);
            dismiss();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if (n.isPer())
        {
            if (d <= 0.0D || d > 100D)
            {
                m.setError(c.getString(0x7f09028c));
                flag = false;
                continue; /* Loop/switch isn't completed */
            }
        } else
        if (!n.isPer() && d <= 0.0D)
        {
            m.setError(c.getString(0x7f09028d));
            flag = false;
            continue; /* Loop/switch isn't completed */
        }
        flag = true;
        if (true) goto _L7; else goto _L4
_L4:
        if (view == h)
        {
            dismiss();
            return;
        }
        if (view == i && b != null)
        {
            b.a();
            dismiss();
            return;
        }
        if (true) goto _L9; else goto _L8
_L8:
    }
}
