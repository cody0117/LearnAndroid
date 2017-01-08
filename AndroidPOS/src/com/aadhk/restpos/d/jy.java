// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.View;
import android.widget.ExpandableListView;
import com.aadhk.restpos.bean.OrderItem;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            jx, jz

final class jy
    implements android.widget.ExpandableListView.OnGroupClickListener
{

    final jx a;

    jy(jx jx1)
    {
        a = jx1;
        super();
    }

    public final boolean onGroupClick(ExpandableListView expandablelistview, View view, int i, long l)
    {
        OrderItem orderitem = (OrderItem)jx.a(a).get(i);
        boolean flag;
        if (!orderitem.isSelected())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        orderitem.setSelected(flag);
        jx.b(a).notifyDataSetChanged();
        return true;
    }
}
