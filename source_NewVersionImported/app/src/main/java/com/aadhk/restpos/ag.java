// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.Toast;
import com.aadhk.product.library.a.b;
import com.aadhk.restpos.e.e;
import com.aadhk.restpos.e.f;
import com.bugsense.trace.BugSenseHandler;

// Referenced classes of package com.aadhk.restpos:
//            ListTableActivity

final class ag
    implements b
{

    final ListTableActivity a;
    private int b;

    ag(ListTableActivity listtableactivity)
    {
        a = listtableactivity;
        super();
    }

    public final void a()
    {
        try
        {
            com.aadhk.restpos.ListTableActivity.b(a).b(ListTableActivity.a(a));
            b = 0;
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            b = e.a(exception);
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
