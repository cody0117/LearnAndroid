// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.Handler;
import java.util.TimerTask;

// Referenced classes of package com.aadhk.restpos.d:
//            ki, ke

final class kh extends TimerTask
{

    Handler a;
    final ke b;

    private kh(ke ke)
    {
        b = ke;
        super();
        a = new Handler();
    }

    kh(ke ke, byte byte0)
    {
        this(ke);
    }

    public final void run()
    {
        a.post(new ki(this));
    }
}
