// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.View;
import android.widget.ExpandableListView;
import com.aadhk.restpos.bean.OrderItem;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            fn, fp

final class fo
    implements android.widget.ExpandableListView.OnGroupClickListener
{

    final fn a;

    fo(fn fn1)
    {
        a = fn1;
        super();
    }

    public final boolean onGroupClick(ExpandableListView expandablelistview, View view, int i, long l)
    {
        OrderItem orderitem = (OrderItem)fn.a(a).get(i);
        boolean flag;
        if (!orderitem.isSelected())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        orderitem.setSelected(flag);
        fn.b(a).notifyDataSetChanged();
        return true;
    }
}
