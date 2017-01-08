// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.TextView;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.util.p;

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

    public final void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public final void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        double d;
        switch (c.getId())
        {
        case 2131296426: 
        case 2131296428: 
        case 2131296430: 
        case 2131296432: 
        case 2131296434: 
        case 2131296436: 
        case 2131296438: 
        case 2131296440: 
        case 2131296442: 
        case 2131296444: 
        case 2131296446: 
        case 2131296448: 
        case 2131296450: 
        case 2131296452: 
        default:
            return;

        case 2131296425: 
            double d14 = 1.0D * h.d(c.getText().toString());
            b.setText(p.a(d14));
            com.aadhk.restpos.c.a.a(a);
            return;

        case 2131296427: 
            double d13 = 2D * h.d(c.getText().toString());
            b.setText(p.a(d13));
            com.aadhk.restpos.c.a.a(a);
            return;

        case 2131296429: 
            double d12 = 5D * h.d(c.getText().toString());
            b.setText(p.a(d12));
            com.aadhk.restpos.c.a.a(a);
            return;

        case 2131296431: 
            double d11 = 10D * h.d(c.getText().toString());
            b.setText(p.a(d11));
            com.aadhk.restpos.c.a.a(a);
            return;

        case 2131296433: 
            double d10 = 20D * h.d(c.getText().toString());
            b.setText(p.a(d10));
            com.aadhk.restpos.c.a.a(a);
            return;

        case 2131296435: 
            double d9 = 50D * h.d(c.getText().toString());
            b.setText(p.a(d9));
            com.aadhk.restpos.c.a.a(a);
            return;

        case 2131296437: 
            double d8 = 100D * h.d(c.getText().toString());
            b.setText(p.a(d8));
            com.aadhk.restpos.c.a.a(a);
            return;

        case 2131296439: 
            double d7 = 0.10000000000000001D * h.d(c.getText().toString());
            b.setText(p.a(d7));
            com.aadhk.restpos.c.a.a(a);
            return;

        case 2131296441: 
            double d6 = 0.20000000000000001D * h.d(c.getText().toString());
            b.setText(p.a(d6));
            com.aadhk.restpos.c.a.a(a);
            return;

        case 2131296443: 
            double d5 = 0.25D * h.d(c.getText().toString());
            b.setText(p.a(d5));
            com.aadhk.restpos.c.a.a(a);
            return;

        case 2131296445: 
            double d4 = 0.5D * h.d(c.getText().toString());
            b.setText(p.a(d4));
            com.aadhk.restpos.c.a.a(a);
            return;

        case 2131296447: 
            double d3 = 0.01D * h.d(c.getText().toString());
            b.setText(p.a(d3));
            com.aadhk.restpos.c.a.a(a);
            return;

        case 2131296449: 
            double d2 = 0.02D * h.d(c.getText().toString());
            b.setText(p.a(d2));
            com.aadhk.restpos.c.a.a(a);
            return;

        case 2131296451: 
            double d1 = 0.025000000000000001D * h.d(c.getText().toString());
            b.setText(p.a(d1));
            com.aadhk.restpos.c.a.a(a);
            return;

        case 2131296453: 
            d = 0.050000000000000003D * h.d(c.getText().toString());
            break;
        }
        b.setText(p.a(d));
        com.aadhk.restpos.c.a.a(a);
    }
}
