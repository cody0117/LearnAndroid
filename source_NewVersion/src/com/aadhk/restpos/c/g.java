// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import com.aadhk.product.library.b.e;

// Referenced classes of package com.aadhk.restpos.c:
//            i, h

public final class g extends e
    implements android.view.View.OnClickListener
{

    private Button f;
    private Button g;
    private h h;
    private i i;

    public g(Context context)
    {
        super(context, 0x7f03002d);
        f = (Button)findViewById(0x7f0b00b3);
        g = (Button)findViewById(0x7f0b0057);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
    }

    public final void a(i j)
    {
        i = j;
    }

    public final void b()
    {
        f.setText(0x7f0901d4);
    }

    public final void onClick(View view)
    {
        if (view != f) goto _L2; else goto _L1
_L1:
        if (i == null) goto _L4; else goto _L3
_L3:
        i.a();
_L7:
        dismiss();
_L4:
        return;
_L2:
        if (view != g) goto _L4; else goto _L5
_L5:
        if (h != null)
        {
            h;
        }
        if (true) goto _L7; else goto _L6
_L6:
    }
}
