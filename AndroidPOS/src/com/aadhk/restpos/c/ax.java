// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import android.widget.Button;

// Referenced classes of package com.aadhk.restpos.c:
//            cs

public final class ax extends cs
    implements android.view.View.OnClickListener
{

    private Button e;
    private WebView f;

    public ax(Context context)
    {
        super(context, 0x7f03004c);
        f = (WebView)findViewById(0x7f0900ca);
        f.setBackgroundColor(0);
        e = (Button)findViewById(0x7f09010e);
        e.setOnClickListener(this);
    }

    public final void a(String s)
    {
        f.loadData(s, "text/html", "UTF-8");
    }

    public final void onClick(View view)
    {
        Button _tmp = e;
        dismiss();
    }
}
