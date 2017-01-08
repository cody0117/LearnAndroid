// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

// Referenced classes of package com.aadhk.restpos.c:
//            bp

public final class bo extends Dialog
    implements android.view.View.OnClickListener
{

    private Button a;
    private TextView b;
    private bp c;

    public bo(Context context)
    {
        super(context);
        requestWindowFeature(1);
        setCancelable(true);
        setContentView(0x7f030056);
        b = (TextView)findViewById(0x7f09011b);
        a = (Button)findViewById(0x7f09010e);
        a.setOnClickListener(this);
    }

    public final void a(int i)
    {
        b.setText(i);
    }

    public final void a(bp bp1)
    {
        c = bp1;
    }

    public final void a(String s)
    {
        b.setText(s);
    }

    public final void onClick(View view)
    {
        if (view == a)
        {
            if (c != null)
            {
                c.a();
            }
            dismiss();
        }
    }
}
