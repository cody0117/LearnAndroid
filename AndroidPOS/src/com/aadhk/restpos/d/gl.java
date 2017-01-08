// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.widget.Spinner;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.a.bn;
import com.bugsense.trace.BugSenseHandler;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            gj

final class gl
    implements c
{

    final gj a;

    gl(gj gj1)
    {
        a = gj1;
        super();
    }

    public final void a()
    {
        gj.a(a, new ArrayList(com.aadhk.restpos.d.gj.c(a).getBondedDevices()));
        if (gj.b(a).size() <= 0) goto _L2; else goto _L1
_L1:
        gj.a(a, new String[gj.b(a).size()]);
        int i = 0;
_L3:
        if (i >= gj.b(a).size())
        {
            break; /* Loop/switch isn't completed */
        }
        gj.d(a)[i] = ((BluetoothDevice)gj.b(a).get(i)).getName();
        i++;
        if (true) goto _L3; else goto _L2
        Exception exception;
        exception;
        BugSenseHandler.sendException(exception);
        exception.printStackTrace();
_L2:
    }

    public final void b()
    {
        if (gj.d(a) == null)
        {
            gj.a(a, new String[] {
                ""
            });
        }
        gj.a(a, new bn(a.h, gj.d(a)));
        gj.f(a).setAdapter(gj.e(a));
    }
}
