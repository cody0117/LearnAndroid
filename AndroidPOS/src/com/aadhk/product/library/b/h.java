// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.b;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.ListView;
import com.aadhk.product.library.b;
import com.aadhk.product.library.c;

// Referenced classes of package com.aadhk.product.library.b:
//            e, i, f

public final class h extends e
    implements android.view.View.OnClickListener
{

    private Button f;
    private Button g;
    private ListView h;
    private String i[];
    private boolean j[];

    public h(Context context, String as[], boolean aflag[])
    {
        super(context, c.c);
        i = as;
        j = aflag;
        f = (Button)findViewById(b.b);
        g = (Button)findViewById(b.a);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        h = (ListView)findViewById(b.f);
        h.setAdapter(new i(this, context));
    }

    static String[] a(h h1)
    {
        return h1.i;
    }

    static boolean[] b(h h1)
    {
        return h1.j;
    }

    public final void onClick(View view)
    {
        if (view == f)
        {
            if (a != null)
            {
                a.a(j);
                dismiss();
            }
        } else
        if (view == g)
        {
            dismiss();
            return;
        }
    }
}
