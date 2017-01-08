// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.View;
import com.aadhk.restpos.bean.RolePermission;

// Referenced classes of package com.aadhk.restpos.d:
//            ij

final class il
    implements android.view.View.OnClickListener
{

    final RolePermission a;
    final ij b;

    il(ij ij1, RolePermission rolepermission)
    {
        b = ij1;
        a = rolepermission;
        super();
    }

    public final void onClick(View view)
    {
        RolePermission rolepermission = a;
        boolean flag;
        if (!a.isManagerPermission())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        rolepermission.setManagerPermission(flag);
        if (a.isManagerPermission())
        {
            a.setShow(true);
            b.notifyDataSetChanged();
        }
    }
}
