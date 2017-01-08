// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.aadhk.restpos:
//            KitchenActivity

final class u extends Handler
{

    final KitchenActivity a;

    u(KitchenActivity kitchenactivity)
    {
        a = kitchenactivity;
        super();
    }

    public final void handleMessage(Message message)
    {
        if (message.what == 1)
        {
            a.c();
        }
    }
}
