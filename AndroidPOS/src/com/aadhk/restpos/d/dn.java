// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.View;
import android.widget.AdapterView;
import com.aadhk.restpos.MgrModifierActivity;
import com.aadhk.restpos.bean.ModifierGroup;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            dm

final class dn
    implements android.widget.AdapterView.OnItemClickListener
{

    final dm a;

    private dn(dm dm1)
    {
        a = dm1;
        super();
    }

    dn(dm dm1, byte byte0)
    {
        this(dm1);
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        dm.c(a).a((ModifierGroup)dm.d(a).get(i));
    }
}
