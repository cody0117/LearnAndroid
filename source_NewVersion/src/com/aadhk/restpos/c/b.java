// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.TextView;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.f.j;

// Referenced classes of package com.aadhk.restpos.c:
//            a

final class b
    implements TextWatcher
{

    final a a;
    private TextView b;
    private EditText c;

    public b(a a1, EditText edittext, TextView textview)
    {
        a = a1;
        super();
        c = edittext;
        b = textview;
    }

    public final void afterTextChanged(Editable editable)
    {
    }

    public final void beforeTextChanged(CharSequence charsequence, int i, int k, int l)
    {
    }

    public final void onTextChanged(CharSequence charsequence, int i, int k, int l)
    {
        double d;
        switch (c.getId())
        {
        case 2131427468: 
        case 2131427470: 
        case 2131427472: 
        case 2131427474: 
        case 2131427476: 
        case 2131427478: 
        case 2131427480: 
        case 2131427482: 
        case 2131427484: 
        case 2131427486: 
        case 2131427488: 
        case 2131427490: 
        case 2131427492: 
        case 2131427494: 
        default:
            return;

        case 2131427467: 
            double d14 = 1.0D * h.d(c.getText().toString());
            b.setText(j.a(d14));
            com.aadhk.restpos.c.a.a(a);
            return;

        case 2131427469: 
            double d13 = 2D * h.d(c.getText().toString());
            b.setText(j.a(d13));
            com.aadhk.restpos.c.a.a(a);
            return;

        case 2131427471: 
            double d12 = 5D * h.d(c.getText().toString());
            b.setText(j.a(d12));
            com.aadhk.restpos.c.a.a(a);
            return;

        case 2131427473: 
            double d11 = 10D * h.d(c.getText().toString());
            b.setText(j.a(d11));
            com.aadhk.restpos.c.a.a(a);
            return;

        case 2131427475: 
            double d10 = 20D * h.d(c.getText().toString());
            b.setText(j.a(d10));
            com.aadhk.restpos.c.a.a(a);
            return;

        case 2131427477: 
            double d9 = 50D * h.d(c.getText().toString());
            b.setText(j.a(d9));
            com.aadhk.restpos.c.a.a(a);
            return;

        case 2131427479: 
            double d8 = 100D * h.d(c.getText().toString());
            b.setText(j.a(d8));
            com.aadhk.restpos.c.a.a(a);
            return;

        case 2131427481: 
            double d7 = 0.10000000000000001D * h.d(c.getText().toString());
            b.setText(j.a(d7));
            com.aadhk.restpos.c.a.a(a);
            return;

        case 2131427483: 
            double d6 = 0.20000000000000001D * h.d(c.getText().toString());
            b.setText(j.a(d6));
            com.aadhk.restpos.c.a.a(a);
            return;

        case 2131427485: 
            double d5 = 0.25D * h.d(c.getText().toString());
            b.setText(j.a(d5));
            com.aadhk.restpos.c.a.a(a);
            return;

        case 2131427487: 
            double d4 = 0.5D * h.d(c.getText().toString());
            b.setText(j.a(d4));
            com.aadhk.restpos.c.a.a(a);
            return;

        case 2131427489: 
            double d3 = 0.01D * h.d(c.getText().toString());
            b.setText(j.a(d3));
            com.aadhk.restpos.c.a.a(a);
            return;

        case 2131427491: 
            double d2 = 0.02D * h.d(c.getText().toString());
            b.setText(j.a(d2));
            com.aadhk.restpos.c.a.a(a);
            return;

        case 2131427493: 
            double d1 = 0.025000000000000001D * h.d(c.getText().toString());
            b.setText(j.a(d1));
            com.aadhk.restpos.c.a.a(a);
            return;

        case 2131427495: 
            d = 0.050000000000000003D * h.d(c.getText().toString());
            break;
        }
        b.setText(j.a(d));
        com.aadhk.restpos.c.a.a(a);
    }
}
