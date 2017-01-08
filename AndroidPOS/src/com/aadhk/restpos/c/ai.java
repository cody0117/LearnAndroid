// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.aadhk.restpos.bean.TableGroup;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            ah, aj

final class ai extends BaseAdapter
{

    final ah a;

    private ai(ah ah1)
    {
        a = ah1;
        super();
    }

    ai(ah ah1, byte byte0)
    {
        this(ah1);
    }

    public final int getCount()
    {
        return ah.a(a).size();
    }

    public final Object getItem(int i)
    {
        return ah.a(a).get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        aj aj1;
        if (view == null)
        {
            view = ah.b(a).inflate(0x7f0300de, null);
            aj aj2 = new aj(this, (byte)0);
            aj2.a = (TextView)view.findViewById(0x7f090047);
            view.setTag(aj2);
            aj1 = aj2;
        } else
        {
            aj1 = (aj)view.getTag();
        }
        aj1.a.setText(((TableGroup)ah.a(a).get(i)).getName());
        return view;
    }
}
