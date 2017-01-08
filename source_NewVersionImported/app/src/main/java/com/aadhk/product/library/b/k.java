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
//            e, l, f

public final class k extends e
    implements android.view.View.OnClickListener
{

    private Button f;
    private Button g;
    private ListView h;
    private String i[];
    private int j;

    public k(Context context, String as[], int i1)
    {
        super(context, c.b);
        i = as;
        j = i1;
        f = (Button)findViewById(b.b);
        g = (Button)findViewById(b.a);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        h = (ListView)findViewById(b.f);
        h.setAdapter(new l(this, context));
    }

    static int a(k k1, int i1)
    {
        k1.j = i1;
        return i1;
    }

    static String[] a(k k1)
    {
        return k1.i;
    }

    static int b(k k1)
    {
        return k1.j;
    }

    public final void onClick(View view)
    {
        if (view == f)
        {
            if (a != null)
            {
                a.a(Integer.valueOf(j));
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
