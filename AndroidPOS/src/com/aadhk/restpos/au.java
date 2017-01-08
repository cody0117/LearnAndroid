// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import com.aadhk.restpos.a.bd;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.g.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            MgrItemPickerActivity

final class au extends Fragment
    implements android.widget.AdapterView.OnItemClickListener
{

    View a;
    private long b;
    private ListView c;
    private TextView d;
    private List e;

    private au()
    {
    }

    static au a(long l)
    {
        au au1 = new au();
        au1.b = l;
        return au1;
    }

    private void a()
    {
        if (e.size() > 0)
        {
            c.setAdapter(new bd(getActivity(), e));
            c.setOnItemClickListener(this);
            d.setVisibility(8);
            return;
        } else
        {
            d.setVisibility(0);
            return;
        }
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        e = MgrItemPickerActivity.a().a(b);
        if (MgrItemPickerActivity.b() != null && !e.isEmpty())
        {
            for (Iterator iterator = MgrItemPickerActivity.b().iterator(); iterator.hasNext();)
            {
                long l = ((Long)iterator.next()).longValue();
                Iterator iterator1 = e.iterator();
                while (iterator1.hasNext()) 
                {
                    Item item = (Item)iterator1.next();
                    if (l == item.getId())
                    {
                        item.setPicked(true);
                        MgrItemPickerActivity.c().add(item);
                    }
                }
            }

        }
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        a = layoutinflater.inflate(0x7f0300b3, viewgroup, false);
        c = (ListView)a.findViewById(0x7f0900a4);
        d = (TextView)a.findViewById(0x7f09016e);
        a();
        return a;
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        Item item = (Item)e.get(i);
        boolean flag;
        if (!item.isPicked())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        item.setPicked(flag);
        if (item.isPicked())
        {
            MgrItemPickerActivity.c().add(item);
        } else
        {
            MgrItemPickerActivity.c().remove(item);
        }
        a();
    }
}
