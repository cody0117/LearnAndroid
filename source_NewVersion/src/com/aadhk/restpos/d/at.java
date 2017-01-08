// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import com.aadhk.restpos.MgrItemActivity;
import com.aadhk.restpos.bean.ModifierGroup;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            aq

final class at
    implements android.widget.AdapterView.OnItemClickListener
{

    final aq a;

    private at(aq aq1)
    {
        a = aq1;
        super();
    }

    at(aq aq1, byte byte0)
    {
        this(aq1);
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        ModifierGroup modifiergroup = (ModifierGroup)aq.a(a).get(i);
        ImageView imageview = (ImageView)view.findViewById(0x7f0b012d);
        if (imageview.getVisibility() == 8)
        {
            imageview.setVisibility(0);
            aq.b(a).add(modifiergroup);
        } else
        {
            imageview.setVisibility(8);
            aq.b(a).remove(modifiergroup);
        }
        if (aq.c(a) != null)
        {
            aq.d(a).a(aq.b(a));
        }
    }
}
