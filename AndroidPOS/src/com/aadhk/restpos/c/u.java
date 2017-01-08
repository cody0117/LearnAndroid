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
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.bean.Modifier;
import com.aadhk.restpos.util.g;
import com.aadhk.restpos.util.w;

public final class u extends e
    implements android.view.View.OnClickListener
{

    private ImageButton f;
    private ImageButton g;
    private ImageButton h;
    private ImageButton i;
    private Button j;
    private Button k;
    private Button l;
    private EditText m;
    private EditText n;
    private EditText o;
    private RadioButton p;
    private RadioButton q;
    private Modifier r;
    private int s;

    public u(Context context, Modifier modifier, int i1)
    {
        super(context, 0x7f030041);
        s = i1;
        EditText edittext;
        InputFilter ainputfilter[];
        EditText edittext1;
        InputFilter ainputfilter1[];
        if (modifier == null)
        {
            r = new Modifier();
        } else
        {
            r = modifier;
        }
        j = (Button)findViewById(0x7f09005a);
        j.setOnClickListener(this);
        k = (Button)findViewById(0x7f09005b);
        k.setOnClickListener(this);
        l = (Button)findViewById(0x7f0900dc);
        l.setOnClickListener(this);
        f = (ImageButton)findViewById(0x7f0900f4);
        f.setOnClickListener(this);
        g = (ImageButton)findViewById(0x7f0900f5);
        g.setOnClickListener(this);
        h = (ImageButton)findViewById(0x7f0900f7);
        h.setOnClickListener(this);
        i = (ImageButton)findViewById(0x7f0900f8);
        i.setOnClickListener(this);
        m = (EditText)findViewById(0x7f0900f2);
        n = (EditText)findViewById(0x7f0900f3);
        o = (EditText)findViewById(0x7f0900f6);
        p = (RadioButton)findViewById(0x7f0900ef);
        q = (RadioButton)findViewById(0x7f0900f0);
        edittext = n;
        ainputfilter = new InputFilter[2];
        ainputfilter[0] = new android.text.InputFilter.LengthFilter(13);
        ainputfilter[1] = new g(s);
        edittext.setFilters(ainputfilter);
        edittext1 = o;
        ainputfilter1 = new InputFilter[2];
        ainputfilter1[0] = new android.text.InputFilter.LengthFilter(13);
        ainputfilter1[1] = new g(s);
        edittext1.setFilters(ainputfilter1);
        m.setText(r.getName());
        n.setText(com.aadhk.product.library.c.h.c(r.getPrice()));
        o.setText(com.aadhk.product.library.c.h.c(r.getCost()));
        if (r.getType() == 2)
        {
            q.setChecked(true);
            return;
        } else
        {
            p.setChecked(true);
            return;
        }
    }

    public final void b()
    {
        l.setVisibility(0);
    }

    public final void onClick(View view)
    {
        boolean flag = false;
        if (view != f) goto _L2; else goto _L1
_L1:
        w.a(n);
_L9:
        return;
_L2:
        if (view == g)
        {
            w.b(n);
            return;
        }
        if (view == h)
        {
            w.a(o);
            return;
        }
        if (view == i)
        {
            w.b(o);
            return;
        }
        if (view != j) goto _L4; else goto _L3
_L3:
        if ("".equals(m.getText().toString()))
        {
            m.setError(c.getString(0x7f080085));
        } else
        if ("".equals(n.getText().toString()))
        {
            n.setError(c.getString(0x7f080085));
            flag = false;
        } else
        if ("".equals(o.getText().toString()))
        {
            o.setError(c.getString(0x7f080085));
            flag = false;
        } else
        {
            flag = true;
        }
        if (!flag)
        {
            continue; /* Loop/switch isn't completed */
        }
        r.setName(m.getText().toString());
        r.setPrice(com.aadhk.product.library.c.h.d(n.getText().toString()));
        r.setCost(com.aadhk.product.library.c.h.d(o.getText().toString()));
        if (!p.isChecked()) goto _L6; else goto _L5
_L5:
        r.setType(1);
_L7:
        if (a != null)
        {
            a.a(r);
        }
        dismiss();
        return;
_L6:
        if (q.isChecked())
        {
            r.setType(2);
        }
        if (true) goto _L7; else goto _L4
_L4:
        if (view == l)
        {
            if (b != null)
            {
                b.a();
            }
            dismiss();
            return;
        }
        if (view == k)
        {
            dismiss();
            return;
        }
        if (true) goto _L9; else goto _L8
_L8:
    }
}
