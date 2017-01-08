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
import android.widget.Toast;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.b.f;
import com.aadhk.product.library.b.g;
import com.aadhk.restpos.bean.PaymentMethod;

// Referenced classes of package com.aadhk.restpos.c:
//            co

public final class cn extends e
    implements android.view.View.OnClickListener
{

    private Button f;
    private Button g;
    private Button h;
    private EditText i;
    private Spinner j;
    private CheckBox k;
    private CheckBox l;
    private CharSequence m;
    private String n[];
    private PaymentMethod o;
    private Context p;
    private int q;

    public cn(Context context, PaymentMethod paymentmethod)
    {
        super(context, 0x7f03005c);
        p = context;
        f = (Button)findViewById(0x7f09005a);
        g = (Button)findViewById(0x7f09005b);
        i = (EditText)findViewById(0x7f0900da);
        j = (Spinner)findViewById(0x7f09013f);
        k = (CheckBox)findViewById(0x7f090140);
        l = (CheckBox)findViewById(0x7f090141);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        m = c.getString(0x7f080085);
        n = context.getResources().getStringArray(0x7f0e000e);
        j.setAdapter(new ArrayAdapter(context, 0x1090009, n));
        j.setOnItemSelectedListener(new co(this));
        if (paymentmethod != null)
        {
            o = paymentmethod;
            i.setText(o.getName());
            j.setSelection(o.getType());
            k.setChecked(o.isOpenDrawer());
            l.setChecked(o.isBeDefault());
            return;
        } else
        {
            o = new PaymentMethod();
            return;
        }
    }

    static int a(cn cn1, int i1)
    {
        cn1.q = i1;
        return i1;
    }

    public final void b()
    {
        h = (Button)findViewById(0x7f0900dc);
        h.setOnClickListener(this);
        h.setVisibility(0);
    }

    public final void onClick(View view)
    {
        boolean flag = true;
        if (view != f) goto _L2; else goto _L1
_L1:
        if (!"".equals(i.getText().toString())) goto _L4; else goto _L3
_L3:
        i.setError(m);
_L8:
        return;
_L4:
        if (a == null) goto _L6; else goto _L5
_L5:
        o.setName(i.getText().toString());
        o.setType(q);
        o.setOpenDrawer(k.isChecked());
        if (o.isBeDefault() && !l.isChecked())
        {
            Toast.makeText(p, p.getString(0x7f0802da), 0).show();
            flag = false;
        }
        if (flag)
        {
            o.setBeDefault(l.isChecked());
            a.a(o);
            dismiss();
            return;
        }
_L6:
        if (false)
        {
            break MISSING_BLOCK_LABEL_89;
        } else
        {
            continue; /* Loop/switch isn't completed */
        }
_L2:
        if (view == g)
        {
            dismiss();
            return;
        }
        if (view == h && b != null)
        {
            if (o.isBeDefault())
            {
                Toast.makeText(p, p.getString(0x7f0802da), 0).show();
                return;
            } else
            {
                b.a();
                dismiss();
                return;
            }
        }
        if (true) goto _L8; else goto _L7
_L7:
    }
}
