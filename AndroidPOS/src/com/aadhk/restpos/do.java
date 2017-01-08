// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.e.f;
import com.aadhk.restpos.e.g;
import com.bugsense.trace.BugSenseHandler;

// Referenced classes of package com.aadhk.restpos:
//            TableListActivity

final class do
    implements c
{

    final TableListActivity a;
    private int b;

    do(TableListActivity tablelistactivity)
    {
        a = tablelistactivity;
        super();
    }

    public final void a()
    {
        try
        {
            TableListActivity.h(a).b(com.aadhk.restpos.TableListActivity.g(a));
            b = 0;
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            b = f.a(exception);
            BugSenseHandler.sendException(exception);
            return;
        }
    }

    public final void b()
    {
        if (b != 0)
        {
            Toast.makeText(a, b, 1).show();
        }
    }
}
