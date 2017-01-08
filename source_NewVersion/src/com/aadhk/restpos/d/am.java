// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.Intent;
import com.aadhk.restpos.MgrCategoryActivity;
import com.aadhk.restpos.MgrItemActivity;
import com.aadhk.restpos.c.ay;

// Referenced classes of package com.aadhk.restpos.d:
//            ag

final class am
    implements ay
{

    final ag a;

    am(ag ag1)
    {
        a = ag1;
        super();
    }

    public final void a()
    {
        Intent intent = new Intent();
        intent.setClass(ag.d(a), com/aadhk/restpos/MgrCategoryActivity);
        a.startActivity(intent);
        ag.d(a).finish();
    }
}
