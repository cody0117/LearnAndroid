// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Spinner;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.b.f;
import com.aadhk.product.library.b.g;
import com.aadhk.restpos.bean.PaymentMethod;

// Referenced classes of package com.aadhk.restpos.c:
//            bj

public final class bi extends e
    implements android.view.View.OnClickListener
{

    private Button f;
    private Button g;
    private Button h;
    private EditText i;
    private Spinner j;
    private CheckBox k;
    private CharSequence l;
    private String m[];
    private PaymentMethod n;
    private int o;

    public bi(Context context, PaymentMethod paymentmethod)
    {
        super(context, 0x7f03004c);
        f = (Button)findViewById(0x7f0b0056);
        g = (Button)findViewById(0x7f0b0057);
        i = (EditText)findViewById(0x7f0b00c8);
        j = (Spinner)findViewById(0x7f0b00fb);
        k = (CheckBox)findViewById(0x7f0b00fc);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        i.setSelectAllOnFocus(true);
        i.setOnClickListener(this);
        l = c.getString(0x7f090055);
        m = context.getResources().getStringArray(0x7f07000e);
        j.setAdapter(new ArrayAdapter(context, 0x1090009, m));
        j.setOnItemSelectedListener(new bj(this));
        if (paymentmethod != null)
        {
            n = paymentmethod;
            i.setText(n.getName());
            j.setSelection(n.getType());
            k.setChecked(n.isOpenDrawer());
            return;
        } else
        {
            n = new PaymentMethod();
            return;
        }
    }

    static int a(bi bi1, int i1)
    {
        bi1.o = i1;
        return i1;
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
        if (!"".equals(i.getText().toString())) goto _L4; else goto _L3
_L3:
        i.setError(l);
_L6:
        return;
_L4:
        if (a == null) goto _L6; else goto _L5
_L5:
        n.setName(i.getText().toString());
        n.setType(o);
        n.setOpenDrawer(k.isChecked());
        a.a(n);
        dismiss();
        return;
_L2:
        if (view == g)
        {
            dismiss();
            return;
        }
        if (view != h)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (b == null) goto _L6; else goto _L7
_L7:
        b.a();
        dismiss();
        return;
        if (view != i) goto _L6; else goto _L8
_L8:
        i.selectAll();
        return;
    }
}
