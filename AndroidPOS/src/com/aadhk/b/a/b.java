// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.b.a;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.aadhk.b.f;
import com.aadhk.b.g;
import com.aadhk.b.h;

// Referenced classes of package com.aadhk.b.a:
//            a, c

public final class b extends a
    implements android.view.View.OnClickListener
{

    public c c;
    private final Button d;
    private TextView e;

    public b(Context context)
    {
        super(context, g.a);
        e = (TextView)findViewById(f.c);
        e.setText(h.a);
        d = (Button)findViewById(f.a);
        d.setOnClickListener(this);
    }

    public final void a(c c1)
    {
        c = c1;
    }

    public final void onClick(View view)
    {
        if (view == d && c != null)
        {
            c.a();
        }
        dismiss();
    }
}
