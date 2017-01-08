// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.AsyncTask;
import com.google.android.gms.ads.a.a;
import com.google.android.gms.common.d;
import com.google.android.gms.common.e;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;

// Referenced classes of package com.google.android.gms.internal:
//            oi

final class oj extends AsyncTask
{

    oj()
    {
    }

    private static transient Void a()
    {
        try
        {
            oi.b().a();
        }
        catch (d d1)
        {
            oi.c();
            com.google.android.gms.internal.oi.d();
        }
        catch (IOException ioexception)
        {
            com.google.android.gms.internal.oi.d();
        }
        catch (e e1)
        {
            com.google.android.gms.internal.oi.d();
        }
        com.google.android.gms.internal.oi.e().countDown();
        return null;
    }

    protected final Object doInBackground(Object aobj[])
    {
        return a();
    }
}
