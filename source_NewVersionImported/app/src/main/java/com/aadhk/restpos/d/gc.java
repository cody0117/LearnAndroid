// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.View;
import com.aadhk.restpos.bean.RolePermission;

// Referenced classes of package com.aadhk.restpos.d:
//            gb

final class gc
    implements android.view.View.OnClickListener
{

    final RolePermission a;
    final gb b;

    gc(gb gb, RolePermission rolepermission)
    {
        b = gb;
        a = rolepermission;
        super();
    }

    public final void onClick(View view)
    {
        RolePermission rolepermission = a;
        boolean flag;
        if (!a.isShow())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        rolepermission.setShow(flag);
    }
}
