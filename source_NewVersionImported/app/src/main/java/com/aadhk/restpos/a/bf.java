// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

// Referenced classes of package com.aadhk.restpos.a:
//            bg

public final class bf extends ArrayAdapter
{

    private final Context a;
    private final String b[];
    private final LayoutInflater c;

    public bf(Context context, String as[])
    {
        super(context, 0x7f0b0043, as);
        a = context;
        b = as;
        c = LayoutInflater.from(context);
    }

    public final int getCount()
    {
        return b.length;
    }

    public final View getDropDownView(int i, View view, ViewGroup viewgroup)
    {
        bg bg2;
        if (view == null)
        {
            bg bg1 = new bg(this);
            view = c.inflate(0x7f0300bd, null);
            bg.a(bg1, (TextView)view.findViewById(0x7f0b0043));
            view.setTag(bg1);
            bg2 = bg1;
        } else
        {
            bg2 = (bg)view.getTag();
        }
        bg.a(bg2).setText(b[i]);
        return view;
    }

    public final Object getItem(int i)
    {
        return null;
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        bg bg1 = new bg(this);
        View view1 = c.inflate(0x7f0300bd, null);
        bg.a(bg1, (TextView)view1.findViewById(0x7f0b0043));
        view1.setTag(bg1);
        bg.a(bg1).setText(b[i]);
        return view1;
    }
}
