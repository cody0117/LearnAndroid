// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.Intent;
import com.aadhk.restpos.c.bp;

// Referenced classes of package com.aadhk.restpos:
//            bd, MgrTableGroupActivity, MgrTableActivity

final class be
    implements bp
{

    final bd a;

    be(bd bd1)
    {
        a = bd1;
        super();
    }

    public final void a()
    {
        Intent intent = new Intent();
        intent.setClass(a.a, com/aadhk/restpos/MgrTableGroupActivity);
        a.a.startActivity(intent);
        a.a.finish();
    }
}
