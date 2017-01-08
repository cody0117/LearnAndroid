// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.TextView;
import com.aadhk.restpos.util.r;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.a:
//            e, d

public final class c extends BaseAdapter
{

    private String a[];
    private Boolean b[];
    private String c[];
    private r d;
    private LayoutInflater e;
    private Map f;

    public c(Context context, String as[], Boolean aboolean[], String as1[], r r)
    {
        a = as;
        b = aboolean;
        c = as1;
        d = r;
        e = LayoutInflater.from(context);
    }

    static Map a(c c1)
    {
        return c1.f;
    }

    static String[] b(c c1)
    {
        return c1.c;
    }

    static r c(c c1)
    {
        return c1.d;
    }

    public final int getCount()
    {
        return a.length;
    }

    public final Object getItem(int i)
    {
        return a[i];
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        e e1;
        if (view == null)
        {
            view = e.inflate(0x7f03002d, null);
            e e2 = new e(this);
            e2.a = (TextView)view.findViewById(0x7f090099);
            e2.b = (CheckBox)view.findViewById(0x7f090098);
            view.setTag(e2);
            e1 = e2;
        } else
        {
            e1 = (e)view.getTag();
        }
        e1.a.setText(a[i]);
        if (b[i].booleanValue())
        {
            e1.b.setChecked(true);
        }
        e1.b.setOnClickListener(new d(this, i, e1));
        return view;
    }
}
