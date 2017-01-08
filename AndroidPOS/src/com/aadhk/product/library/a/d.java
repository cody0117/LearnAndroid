// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.a;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.os.AsyncTask;
import com.aadhk.product.library.b.n;

// Referenced classes of package com.aadhk.product.library.a:
//            c

public final class d extends AsyncTask
    implements android.content.DialogInterface.OnCancelListener
{

    private static Object d = new Object();
    private n a;
    private c b;
    private final Activity c;
    private boolean e;

    public d(c c1, Context context)
    {
        b = c1;
        c = (Activity)context;
        e = true;
    }

    public d(c c1, Context context, byte byte0)
    {
        b = c1;
        c = (Activity)context;
        e = false;
    }

    private transient Void a()
    {
        synchronized (d)
        {
            b.a();
        }
        return null;
    }

    protected final Object doInBackground(Object aobj[])
    {
        return a();
    }

    public final void onCancel(DialogInterface dialoginterface)
    {
        cancel(true);
    }

    protected final void onCancelled()
    {
        if (a != null)
        {
            a.dismiss();
            a = null;
        }
        super.onCancelled();
    }

    protected final void onPostExecute(Object obj)
    {
        if (!isCancelled())
        {
            if (c != null && !c.isFinishing() && a.isShowing())
            {
                a.dismiss();
            }
            b.b();
        }
    }

    protected final void onPreExecute()
    {
        a = n.a(c, e, this);
        super.onPreExecute();
    }

}
