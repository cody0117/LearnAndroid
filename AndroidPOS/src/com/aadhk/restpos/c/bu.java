// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.aadhk.product.library.b.e;
import com.aadhk.restpos.bean.POSPrinterSetting;

// Referenced classes of package com.aadhk.restpos.c:
//            bv

public final class bu extends e
    implements android.view.View.OnClickListener
{

    private Button f;
    private Button g;
    private bv h;
    private TextView i;
    private TextView j;
    private TextView k;

    public bu(Context context, String s, String s1, String s2, POSPrinterSetting posprintersetting)
    {
        super(context, 0x7f03005a);
        setCancelable(false);
        i = (TextView)findViewById(0x7f090136);
        j = (TextView)findViewById(0x7f090137);
        k = (TextView)findViewById(0x7f090138);
        f = (Button)findViewById(0x7f0900db);
        g = (Button)findViewById(0x7f090139);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        i.setText(s);
        j.setText(s1);
        k.setText(s2);
        if (!posprintersetting.isEnable())
        {
            g.setVisibility(8);
        }
    }

    public final void a(bv bv1)
    {
        h = bv1;
    }

    public final void onClick(View view)
    {
        if (view != f) goto _L2; else goto _L1
_L1:
        if (h != null)
        {
            h.a();
        }
_L4:
        dismiss();
        return;
_L2:
        if (view == g)
        {
            h.b();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
