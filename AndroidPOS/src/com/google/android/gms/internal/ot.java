// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.a;

// Referenced classes of package com.google.android.gms.internal:
//            os, ou, oz

final class ot extends Handler
{

    final os a;

    public ot(os os1, Looper looper)
    {
        a = os1;
        super(looper);
    }

    public final void handleMessage(Message message)
    {
        if (message.what == 1 && !a.f())
        {
            ((ou)message.obj).b();
        } else
        {
            if (message.what == 3)
            {
                oz oz2 = com.google.android.gms.internal.os.a(a);
                new a(((Integer)message.obj).intValue(), null);
                oz2.c();
                return;
            }
            if (message.what == 4)
            {
                com.google.android.gms.internal.os.a(a, 4, null);
                oz oz1 = com.google.android.gms.internal.os.a(a);
                ((Integer)message.obj).intValue();
                oz1.b();
                os.b(a);
                return;
            }
            if (message.what == 2 && !a.e())
            {
                ((ou)message.obj).b();
                return;
            }
            if (message.what == 2 || message.what == 1)
            {
                ((ou)message.obj).a();
                return;
            }
        }
    }
}
