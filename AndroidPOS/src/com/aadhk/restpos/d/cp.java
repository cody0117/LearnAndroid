// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.Intent;
import com.aadhk.restpos.MgrCategoryActivity;
import com.aadhk.restpos.MgrItemActivity;
import com.aadhk.restpos.c.bp;

// Referenced classes of package com.aadhk.restpos.d:
//            cf

final class cp
    implements bp
{

    final cf a;

    cp(cf cf1)
    {
        a = cf1;
        super();
    }

    public final void a()
    {
        Intent intent = new Intent();
        intent.setClass(a.a, com/aadhk/restpos/MgrCategoryActivity);
        a.startActivity(intent);
        a.a.finish();
    }
}
