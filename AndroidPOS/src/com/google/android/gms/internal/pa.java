// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.api.b;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.internal:
//            oz, pb

final class pa extends Handler
{

    final oz a;

    public pa(oz oz1, Looper looper)
    {
        a = oz1;
        super(looper);
    }

    public final void handleMessage(Message message)
    {
        if (message.what == 1)
        {
            synchronized (oz.a(a))
            {
                if (com.google.android.gms.internal.oz.b(a).j() && com.google.android.gms.internal.oz.b(a).e() && oz.a(a).contains(message.obj))
                {
                    com.google.android.gms.internal.oz.b(a);
                    ((b)message.obj).b();
                }
            }
        }
    }
}
