// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.b.f;

public final class bd extends e
    implements android.view.View.OnClickListener
{

    private Button f;
    private TextView g;
    private TextView h;
    private TextView i;

    public bd(Context context, String s, String s1, String s2)
    {
        super(context, 0x7f03004b);
        setCancelable(false);
        g = (TextView)findViewById(0x7f0b00f8);
        h = (TextView)findViewById(0x7f0b00f9);
        i = (TextView)findViewById(0x7f0b00fa);
        f = (Button)findViewById(0x7f0b00b3);
        f.setOnClickListener(this);
        g.setText(s);
        h.setText(s1);
        i.setText(s2);
    }

    public final void onClick(View view)
    {
        if (view == f && a != null)
        {
            a.a(null);
        }
        dismiss();
    }
}
