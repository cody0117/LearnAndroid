// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import com.aadhk.restpos.a.e;
import com.aadhk.restpos.bean.Category;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.bean.OrderItem;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            l

public final class p extends Fragment
{

    private List a;
    private Category b;
    private View c;

    public p()
    {
    }

    public static p a(Category category)
    {
        p p1 = new p();
        p1.b = category;
        p1.a = (List)l.c().get(Long.valueOf(category.getId()));
        return p1;
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        c = layoutinflater.inflate(0x7f030069, viewgroup, false);
        return c;
    }

    public final void onResume()
    {
        super.onResume();
        for (Iterator iterator = a.iterator(); iterator.hasNext();)
        {
            Item item = (Item)iterator.next();
            item.setNum(0);
            Iterator iterator1 = l.d().iterator();
            while (iterator1.hasNext()) 
            {
                OrderItem orderitem = (OrderItem)iterator1.next();
                if (orderitem.getItemId() == item.getId())
                {
                    item.setNum(item.getNum() + orderitem.getNum());
                    item.setQty(item.getQty() - orderitem.getNum());
                }
            }
        }

        ((GridView)c.findViewById(0x7f0b0146)).setAdapter(new e(l.a(), a, l.d(), b, com.aadhk.restpos.d.l.e()));
    }
}
