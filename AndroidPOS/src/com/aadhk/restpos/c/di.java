// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.os.AsyncTask;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.Table;
import com.aadhk.restpos.g.x;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            dl

public final class di extends e
    implements android.widget.AdapterView.OnItemClickListener
{

    private GridView f;
    private LayoutInflater g;
    private List h;
    private Context i;
    private x j;
    private String k;

    public di(Context context, String s, x x)
    {
        super(context, 0x7f03006a);
        i = context;
        k = s;
        j = x;
        g = LayoutInflater.from(context);
        f = (GridView)findViewById(0x7f090163);
        f.setOnItemClickListener(this);
        (new d(new dl(this, (byte)0), context, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    static List a(di di1)
    {
        return di1.h;
    }

    static List a(di di1, List list)
    {
        di1.h = list;
        return list;
    }

    static LayoutInflater b(di di1)
    {
        return di1.g;
    }

    static String c(di di1)
    {
        return di1.k;
    }

    static x d(di di1)
    {
        return di1.j;
    }

    static GridView e(di di1)
    {
        return di1.f;
    }

    static Context f(di di1)
    {
        return di1.i;
    }

    public final void onItemClick(AdapterView adapterview, View view, int l, long l1)
    {
        if (a != null)
        {
            Table table = (Table)h.get(l);
            a.a(table);
            dismiss();
        }
    }
}
