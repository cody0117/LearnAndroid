// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.soundcloud.android.crop;

import android.app.ProgressDialog;
import android.os.Handler;

// Referenced classes of package com.soundcloud.android.crop:
//            u, m, t

final class l extends u
    implements Runnable
{

    private final t a;
    private final ProgressDialog b;
    private final Runnable c;
    private final Handler d;
    private final Runnable e = new m(this);

    public l(t t1, Runnable runnable, ProgressDialog progressdialog, Handler handler)
    {
        a = t1;
        b = progressdialog;
        c = runnable;
        a.b(this);
        d = handler;
    }

    static t a(l l1)
    {
        return l1.a;
    }

    static ProgressDialog b(l l1)
    {
        return l1.b;
    }

    public final void a()
    {
        e.run();
        d.removeCallbacks(e);
    }

    public final void b()
    {
        b.hide();
    }

    public final void c()
    {
        b.show();
    }

    public final void run()
    {
        c.run();
        d.post(e);
        return;
        Exception exception;
        exception;
        d.post(e);
        throw exception;
    }
}
