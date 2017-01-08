// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.a;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;

// Referenced classes of package com.aadhk.product.library.a:
//            c, b

public final class a extends AsyncTask
{

    private static Object d = new Object();
    private ProgressDialog a;
    private c b;
    private final Activity c;
    private String e;
    private boolean f;

    public a(c c1, Context context, String s)
    {
        b = c1;
        c = (Activity)context;
        e = s;
        f = false;
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
        a = new ProgressDialog(c);
        a.setCancelable(f);
        a.setOnCancelListener(new b(this));
        a.setMessage(e);
        a.show();
        super.onPreExecute();
    }

}
