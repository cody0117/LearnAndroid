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
//            ay

public final class ax extends Dialog
    implements android.view.View.OnClickListener
{

    private Button a;
    private TextView b;
    private ay c;

    public ax(Context context)
    {
        super(context);
        requestWindowFeature(1);
        setCancelable(true);
        setContentView(0x7f030047);
        b = (TextView)findViewById(0x7f0b00e6);
        a = (Button)findViewById(0x7f0b00da);
        a.setOnClickListener(this);
    }

    public final void a(int i)
    {
        b.setText(i);
    }

    public final void a(ay ay1)
    {
        c = ay1;
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
