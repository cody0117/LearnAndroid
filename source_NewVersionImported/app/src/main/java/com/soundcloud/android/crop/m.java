// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.soundcloud.android.crop;

import android.app.ProgressDialog;

// Referenced classes of package com.soundcloud.android.crop:
//            l, t

final class m
    implements Runnable
{

    final l a;

    m(l l1)
    {
        a = l1;
        super();
    }

    public final void run()
    {
        l.a(a).a(a);
        if (l.b(a).getWindow() != null)
        {
            l.b(a).dismiss();
        }
    }
}
