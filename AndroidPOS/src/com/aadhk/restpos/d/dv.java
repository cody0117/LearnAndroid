// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.View;
import android.widget.ExpandableListView;
import com.aadhk.product.library.b.a;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.RolePermission;
import com.aadhk.restpos.c.bo;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            du, dw, dy

final class dv
    implements android.widget.ExpandableListView.OnGroupClickListener
{

    final du a;

    dv(du du1)
    {
        a = du1;
        super();
    }

    public final boolean onGroupClick(ExpandableListView expandablelistview, View view, int i, long l)
    {
label0:
        {
            OrderItem orderitem;
label1:
            {
                orderitem = (OrderItem)du.d(a).get(i);
                if (orderitem.getBillId() != 0L)
                {
                    break label0;
                }
                if (orderitem.getStatus() != 1)
                {
                    ArrayList arraylist = new ArrayList();
                    ArrayList arraylist1 = new ArrayList();
                    arraylist.add(a.getString(0x7f08012e));
                    arraylist.add(a.getString(0x7f08012f));
                    arraylist.add(a.getString(0x7f080130));
                    arraylist1.add(Integer.valueOf(0));
                    arraylist1.add(Integer.valueOf(1));
                    arraylist1.add(Integer.valueOf(2));
                    if (du.i(a).isShow())
                    {
                        arraylist.add(a.getString(0x7f080131));
                        arraylist1.add(Integer.valueOf(3));
                    }
                    if (orderitem.getStatus() == 2)
                    {
                        arraylist.add(a.getString(0x7f080132));
                        arraylist1.add(Integer.valueOf(4));
                    }
                    arraylist.add(a.getString(0x7f080133));
                    arraylist1.add(Integer.valueOf(5));
                    if (orderitem.getStatus() == 3)
                    {
                        break label1;
                    }
                    a a1 = new a(du.e(a), (String[])arraylist.toArray(new String[arraylist.size()]));
                    a1.a();
                    a1.a(new dw(this, arraylist1, orderitem));
                    a1.show();
                }
                return true;
            }
            ArrayList arraylist2 = new ArrayList();
            arraylist2.add(a.getString(0x7f080134));
            a a2 = new a(du.e(a), (String[])arraylist2.toArray(new String[arraylist2.size()]));
            a2.a();
            a2.a(new dy(this, orderitem));
            a2.show();
            return true;
        }
        bo bo1 = new bo(du.e(a));
        bo1.a(0x7f08022c);
        bo1.show();
        return true;
    }
}
