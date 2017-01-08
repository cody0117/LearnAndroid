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
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.b.f;
import com.aadhk.product.library.b.g;
import com.aadhk.product.library.c.h;

public final class m extends e
    implements android.view.View.OnClickListener
{

    private Button f;
    private Button g;
    private Button h;
    private EditText i;
    private double j;
    private double k;

    public m(Context context, double d, double d1, int l)
    {
        super(context, 0x7f030034);
        j = d;
        k = d1;
        f = (Button)findViewById(0x7f0b00b3);
        i = (EditText)findViewById(0x7f0b00c8);
        g = (Button)findViewById(0x7f0b0057);
        h = (Button)findViewById(0x7f0b00c9);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        h.setOnClickListener(this);
        i.setText(com.aadhk.product.library.c.h.b(d));
        i.setSelectAllOnFocus(true);
        i.setOnClickListener(this);
        EditText edittext = i;
        InputFilter ainputfilter[] = new InputFilter[2];
        ainputfilter[0] = new android.text.InputFilter.LengthFilter(13);
        ainputfilter[1] = new com.aadhk.restpos.f.e(l);
        edittext.setFilters(ainputfilter);
    }

    public final void b()
    {
        h.setVisibility(8);
    }

    public final void onClick(View view)
    {
        if (view != f) goto _L2; else goto _L1
_L1:
        j = com.aadhk.product.library.c.h.d(i.getText().toString());
        if (j != 0.0D) goto _L4; else goto _L3
_L3:
        i.setError(c.getString(0x7f090055));
_L6:
        return;
_L4:
        if (j > k)
        {
            String s = c.getString(0x7f0901ee);
            Object aobj[] = new Object[1];
            aobj[0] = com.aadhk.product.library.c.h.a(k);
            String s1 = String.format(s, aobj);
            i.setError(s1);
            return;
        }
        if (a == null) goto _L6; else goto _L5
_L5:
        double d = com.aadhk.product.library.c.h.d(i.getText().toString());
        a.a(Double.valueOf(d));
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
