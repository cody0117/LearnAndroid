// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.b;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.widget.TextView;
import com.aadhk.product.library.b;

// Referenced classes of package com.aadhk.product.library.b:
//            f, g

public class e extends Dialog
{

    public f a;
    public g b;
    public Resources c;
    public TextView d;
    public Context e;

    public e(Context context, int i)
    {
        super(context);
        requestWindowFeature(1);
        setCancelable(true);
        setContentView(i);
        e = context;
        c = context.getResources();
        d = (TextView)findViewById(b.d);
    }

    public final void a()
    {
        d.setVisibility(8);
    }

    public final void a(f f)
    {
        a = f;
    }

    public final void a(g g)
    {
        b = g;
    }

    public void setTitle(int i)
    {
        d.setText(i);
    }

    public void setTitle(CharSequence charsequence)
    {
        d.setText(charsequence);
    }
}
