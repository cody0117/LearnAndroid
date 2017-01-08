// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.res.Resources;
import android.widget.Toast;
import com.aadhk.restpos.MgrItemActivity;
import com.aadhk.restpos.bean.ModifierGroup;
import com.aadhk.restpos.c.i;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            ag, ao

final class ah
    implements i
{

    final ag a;

    ah(ag ag1)
    {
        a = ag1;
        super();
    }

    public final void a()
    {
        StringBuilder stringbuilder = new StringBuilder();
        int j = 0;
        while (j < ag.a(a).size()) 
        {
            ModifierGroup modifiergroup = (ModifierGroup)ag.a(a).get(j);
            if (j == 0)
            {
                stringbuilder.append(modifiergroup.getId());
            } else
            {
                stringbuilder.append((new StringBuilder(",")).append(modifiergroup.getId()).toString());
            }
            j++;
        }
        ag.a().a(ag.b(a), stringbuilder.toString());
        ag.c(a).notifyDataSetChanged();
        if (ag.d(a).b())
        {
            ag.d(a).a(null);
        } else
        {
            ag.d(a).d();
        }
        Toast.makeText(ag.d(a), ag.d(a).getResources().getString(0x7f09023e), 0).show();
    }
}
