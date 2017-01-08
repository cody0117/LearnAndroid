// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.b;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.aadhk.product.library.b;
import com.aadhk.product.library.c;

// Referenced classes of package com.aadhk.product.library.b:
//            e, b, f, d

public final class a extends e
    implements android.view.View.OnClickListener, android.widget.AdapterView.OnItemClickListener
{

    private d f;
    private String g[];

    public a(Context context, String as[])
    {
        super(context, c.b);
        g = as;
        ListView listview = (ListView)findViewById(b.f);
        listview.setAdapter(new com.aadhk.product.library.b.b(this, e, g));
        listview.setOnItemClickListener(this);
    }

    public final void onClick(View view)
    {
        if (f != null)
        {
            d _tmp = f;
        }
        dismiss();
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        if (a != null)
        {
            a.a(Integer.valueOf(i));
        }
        dismiss();
    }
}
