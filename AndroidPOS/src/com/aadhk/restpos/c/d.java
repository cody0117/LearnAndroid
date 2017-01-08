// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import com.aadhk.product.library.b.e;

// Referenced classes of package com.aadhk.restpos.c:
//            f, e

public final class d extends e
    implements android.view.View.OnClickListener
{

    private Button f;
    private Button g;
    private com.aadhk.restpos.c.e h;
    private f i;

    public d(Context context)
    {
        super(context, 0x7f030035);
        f = (Button)findViewById(0x7f0900db);
        g = (Button)findViewById(0x7f09005b);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
    }

    public final void a(f f1)
    {
        i = f1;
    }

    public final void b()
    {
        f.setText(0x7f080214);
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
