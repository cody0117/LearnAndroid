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
import com.aadhk.restpos.a.h;
import com.aadhk.restpos.bean.Category;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.bean.OrderItem;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            ag

public final class ak extends Fragment
{

    private List a;
    private Category b;
    private View c;

    public ak()
    {
    }

    public static ak a(Category category)
    {
        ak ak1 = new ak();
        ak1.b = category;
        ak1.a = (List)ag.d().get(Long.valueOf(category.getId()));
        return ak1;
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        c = layoutinflater.inflate(0x7f03007e, viewgroup, false);
        return c;
    }

    public final void onResume()
    {
        super.onResume();
        for (Iterator iterator = a.iterator(); iterator.hasNext();)
        {
            Item item = (Item)iterator.next();
            item.setOrderQty(0);
            Iterator iterator1 = ag.e().iterator();
            while (iterator1.hasNext()) 
            {
                OrderItem orderitem = (OrderItem)iterator1.next();
                if (orderitem.getItemId() == item.getId())
                {
                    item.setOrderQty(item.getOrderQty() + orderitem.getQty());
                }
            }
        }

        ((GridView)c.findViewById(0x7f09018d)).setAdapter(new h(ag.b(), a, b, ag.f()));
    }
}
