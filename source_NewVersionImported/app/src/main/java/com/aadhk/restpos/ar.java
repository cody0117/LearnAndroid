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
import com.aadhk.restpos.a.aw;
import com.aadhk.restpos.b.i;
import com.aadhk.restpos.bean.Item;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            MgrItemPickerActivity

final class ar extends Fragment
    implements android.widget.AdapterView.OnItemClickListener
{

    View a;
    private long b;
    private ListView c;
    private TextView d;
    private List e;

    private ar()
    {
    }

    static ar a(long l)
    {
        ar ar1 = new ar();
        ar1.b = l;
        return ar1;
    }

    private void a()
    {
        if (e.size() > 0)
        {
            c.setAdapter(new aw(getActivity(), e));
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
        e = MgrItemPickerActivity.a().c(b);
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
                    }
                }
            }

        }
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        a = layoutinflater.inflate(0x7f030096, viewgroup, false);
        c = (ListView)a.findViewById(0x7f0b0086);
        d = (TextView)a.findViewById(0x7f0b012a);
        a();
        return a;
    }

    public final void onItemClick(AdapterView adapterview, View view, int j, long l)
    {
        Item item = (Item)e.get(j);
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
            MgrItemPickerActivity.b().add(Long.valueOf(item.getId()));
        } else
        {
            MgrItemPickerActivity.b().remove(Long.valueOf(item.getId()));
        }
        a();
    }
}
