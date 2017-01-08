// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.aadhk.restpos.MgrItemActivity;
import com.aadhk.restpos.bean.KitchenNote;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            cx, cz

final class cy extends BaseAdapter
{

    final cx a;

    private cy(cx cx1)
    {
        a = cx1;
        super();
    }

    cy(cx cx1, byte byte0)
    {
        this(cx1);
    }

    public final int getCount()
    {
        return cx.a(a).size();
    }

    public final Object getItem(int i)
    {
        return cx.a(a).get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        cz cz1;
        KitchenNote kitchennote;
        if (view == null)
        {
            view = cx.b(a).getLayoutInflater().inflate(0x7f0300ad, null);
            cz1 = new cz(this, (byte)0);
            cz1.a = (TextView)view.findViewById(0x7f090099);
            cz1.b = (ImageView)view.findViewById(0x7f09002c);
            view.setTag(cz1);
        } else
        {
            cz1 = (cz)view.getTag();
        }
        kitchennote = (KitchenNote)getItem(i);
        cz1.a.setText(kitchennote.getName());
        if (cx.c(a).contains(kitchennote))
        {
            cz1.b.setVisibility(0);
            return view;
        } else
        {
            cz1.b.setVisibility(8);
            return view;
        }
    }
}
