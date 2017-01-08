// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.content.res.Resources;
import android.text.InputFilter;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.RadioButton;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.b.f;
import com.aadhk.product.library.b.g;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.bean.Modifier;
import com.aadhk.restpos.f.n;

public final class t extends e
    implements android.view.View.OnClickListener
{

    private ImageButton f;
    private ImageButton g;
    private Button h;
    private Button i;
    private Button j;
    private EditText k;
    private EditText l;
    private RadioButton m;
    private RadioButton n;
    private Modifier o;
    private int p;

    public t(Context context, Modifier modifier, int i1)
    {
        super(context, 0x7f030038);
        p = i1;
        EditText edittext;
        InputFilter ainputfilter[];
        if (modifier == null)
        {
            o = new Modifier();
        } else
        {
            o = modifier;
        }
        h = (Button)findViewById(0x7f0b0056);
        h.setOnClickListener(this);
        i = (Button)findViewById(0x7f0b0057);
        i.setOnClickListener(this);
        j = (Button)findViewById(0x7f0b00c9);
        j.setOnClickListener(this);
        f = (ImageButton)findViewById(0x7f0b00d4);
        f.setOnClickListener(this);
        g = (ImageButton)findViewById(0x7f0b00d5);
        g.setOnClickListener(this);
        k = (EditText)findViewById(0x7f0b00d2);
        k.setOnClickListener(this);
        l = (EditText)findViewById(0x7f0b00d3);
        l.setOnClickListener(this);
        m = (RadioButton)findViewById(0x7f0b00cf);
        n = (RadioButton)findViewById(0x7f0b00d0);
        k.setSelectAllOnFocus(true);
        l.setSelectAllOnFocus(true);
        edittext = l;
        ainputfilter = new InputFilter[2];
        ainputfilter[0] = new android.text.InputFilter.LengthFilter(13);
        ainputfilter[1] = new com.aadhk.restpos.f.e(p);
        edittext.setFilters(ainputfilter);
        k.setText(o.getName());
        l.setText(com.aadhk.product.library.c.h.c(o.getPrice()));
        if (o.getType() == 2)
        {
            n.setChecked(true);
            return;
        } else
        {
            m.setChecked(true);
            return;
        }
    }

    public final void b()
    {
        j.setVisibility(0);
    }

    public final void onClick(View view)
    {
        boolean flag = false;
        if (view != f) goto _L2; else goto _L1
_L1:
        com.aadhk.restpos.f.n.a(l);
_L9:
        return;
_L2:
        if (view == g)
        {
            com.aadhk.restpos.f.n.b(l);
            return;
        }
        if (view != h) goto _L4; else goto _L3
_L3:
        if ("".equals(k.getText().toString()))
        {
            k.setError(c.getString(0x7f090055));
        } else
        if ("".equals(l.getText().toString()))
        {
            l.setError(c.getString(0x7f090055));
            flag = false;
        } else
        {
            flag = true;
        }
        if (!flag)
        {
            continue; /* Loop/switch isn't completed */
        }
        o.setName(k.getText().toString());
        o.setPrice(com.aadhk.product.library.c.h.d(l.getText().toString()));
        if (!m.isChecked()) goto _L6; else goto _L5
_L5:
        o.setType(1);
_L7:
        if (a != null)
        {
            a.a(o);
        }
        dismiss();
        return;
_L6:
        if (n.isChecked())
        {
            o.setType(2);
        }
        if (true) goto _L7; else goto _L4
_L4:
        if (view == j)
        {
            if (b != null)
            {
                b.a();
            }
            dismiss();
            return;
        }
        if (view == i)
        {
            dismiss();
            return;
        }
        if (view == k)
        {
            k.selectAll();
            return;
        }
        if (view == l)
        {
            l.selectAll();
            return;
        }
        if (true) goto _L9; else goto _L8
_L8:
    }
}
