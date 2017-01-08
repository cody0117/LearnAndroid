// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.Spinner;
import android.widget.Toast;
import com.aadhk.restpos.a.aq;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            br, e, f

public final class d extends br
    implements android.view.View.OnClickListener
{

    private Button e;
    private Button f;
    private Spinner g;
    private f h;
    private aq i;
    private String j;
    private long k;
    private List l;

    public d(Context context, List list)
    {
        super(context, 0x7f03002c);
        setTitle(0x7f090216);
        l = list;
        f = (Button)findViewById(0x7f0b0057);
        f.setOnClickListener(this);
        e = (Button)findViewById(0x7f0b00b3);
        e.setOnClickListener(this);
        g = (Spinner)findViewById(0x7f0b00b1);
        i = new aq(c, l);
        g.setAdapter(i);
        g.setOnItemSelectedListener(new e(this));
    }

    static long a(d d1, long l1)
    {
        d1.k = l1;
        return l1;
    }

    static String a(d d1, String s)
    {
        d1.j = s;
        return s;
    }

    static List a(d d1)
    {
        return d1.l;
    }

    public final void a(f f1)
    {
        h = f1;
    }

    public final void onClick(View view)
    {
        int i1 = 1;
        if (view != e) goto _L2; else goto _L1
_L1:
        if (j == null || j.equals(""))
        {
            Toast.makeText(c, 0x7f090055, i1).show();
            g.requestFocus();
            i1 = 0;
        }
        if (i1 == 0) goto _L2; else goto _L3
_L3:
        if (h != null)
        {
            f f1 = h;
            j;
            f1.a(k);
            dismiss();
        }
_L5:
        return;
_L2:
        if (view == f)
        {
            dismiss();
            return;
        }
        if (true) goto _L5; else goto _L4
_L4:
    }
}
