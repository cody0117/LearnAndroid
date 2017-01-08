// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.a;

import android.os.AsyncTask;

// Referenced classes of package com.aadhk.product.library.a:
//            b

public final class c extends AsyncTask
{

    private static Object b = new Object();
    private b a;

    public c(b b1)
    {
        a = b1;
    }

    private transient Void a()
    {
        synchronized (b)
        {
            a.a();
        }
        return null;
    }

    protected final Object doInBackground(Object aobj[])
    {
        return a();
    }

    protected final void onPostExecute(Object obj)
    {
        if (!isCancelled())
        {
            a.b();
        }
    }

}
