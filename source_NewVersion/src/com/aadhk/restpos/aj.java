// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.aadhk.restpos.f.k;

// Referenced classes of package com.aadhk.restpos:
//            LoginActivity

final class aj extends Dialog
    implements android.view.View.OnClickListener
{

    final LoginActivity a;
    private Button b;
    private TextView c;

    public aj(LoginActivity loginactivity, Context context)
    {
        a = loginactivity;
        super(context);
        requestWindowFeature(1);
        setCancelable(false);
        setContentView(0x7f030047);
        c = (TextView)findViewById(0x7f0b00e6);
        b = (Button)findViewById(0x7f0b00da);
        b.setOnClickListener(this);
    }

    public final void a(String s)
    {
        c.setText(s);
    }

    public final void onClick(View view)
    {
        if (view == b)
        {
            a.finish();
            k.a(a);
            dismiss();
        }
    }
}
