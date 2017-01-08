// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.res.Resources;
import android.view.View;
import android.widget.ExpandableListView;
import com.aadhk.product.library.b.a;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.RolePermission;
import com.aadhk.restpos.c.ax;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            bk, bm

final class bl
    implements android.widget.ExpandableListView.OnGroupClickListener
{

    final bk a;

    bl(bk bk1)
    {
        a = bk1;
        super();
    }

    public final boolean onGroupClick(ExpandableListView expandablelistview, View view, int i, long l)
    {
        OrderItem orderitem = (OrderItem)com.aadhk.restpos.d.bk.a(a).get(i);
        if (orderitem.getBillId() == 0L)
        {
            if (orderitem.getStatus() != 1)
            {
                ArrayList arraylist = new ArrayList();
                ArrayList arraylist1 = new ArrayList();
                arraylist.add(bk.b(a).getString(0x7f0900fe));
                arraylist.add(bk.b(a).getString(0x7f0900ff));
                arraylist.add(bk.b(a).getString(0x7f090100));
                arraylist1.add(Integer.valueOf(0));
                arraylist1.add(Integer.valueOf(1));
                arraylist1.add(Integer.valueOf(2));
                if (bk.c(a).isShow())
                {
                    arraylist.add(bk.b(a).getString(0x7f090101));
                    arraylist1.add(Integer.valueOf(3));
                }
                if (orderitem.getStatus() == 2)
                {
                    arraylist.add(bk.b(a).getString(0x7f090102));
                    arraylist1.add(Integer.valueOf(4));
                }
                a a1 = new a(bk.d(a), (String[])arraylist.toArray(new String[arraylist.size()]));
                a1.a();
                a1.a(new bm(this, arraylist1, orderitem));
                a1.show();
            }
            return true;
        } else
        {
            ax ax1 = new ax(bk.d(a));
            ax1.a(a.getString(0x7f0901ed));
            ax1.show();
            return true;
        }
    }
}
