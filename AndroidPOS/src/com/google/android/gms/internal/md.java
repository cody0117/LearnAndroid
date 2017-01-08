// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

// Referenced classes of package com.google.android.gms.internal:
//            lk, lq

public final class md extends lk
{

    private final String a;
    private final Context b;
    private final String c;
    private String d;

    public md(Context context, String s, String s1)
    {
        d = null;
        b = context;
        a = s;
        c = s1;
    }

    public md(Context context, String s, String s1, String s2)
    {
        d = null;
        b = context;
        a = s;
        c = s1;
        d = s2;
    }

    public final void a()
    {
        HttpURLConnection httpurlconnection;
        (new StringBuilder("Pinging URL: ")).append(c);
        httpurlconnection = (HttpURLConnection)(new URL(c)).openConnection();
        if (d != null)
        {
            break MISSING_BLOCK_LABEL_113;
        }
        lq.a(b, a, true, httpurlconnection);
_L1:
        int i = httpurlconnection.getResponseCode();
        if (i >= 200 && i < 300)
        {
            break MISSING_BLOCK_LABEL_107;
        }
        (new StringBuilder("Received non-success response code ")).append(i).append(" from pinging URL: ").append(c);
        Exception exception;
        try
        {
            httpurlconnection.disconnect();
            return;
        }
        catch (IndexOutOfBoundsException indexoutofboundsexception)
        {
            (new StringBuilder("Error while parsing ping URL: ")).append(c).append(". ").append(indexoutofboundsexception.getMessage());
            return;
        }
        catch (IOException ioexception)
        {
            (new StringBuilder("Error while pinging URL: ")).append(c).append(". ").append(ioexception.getMessage());
        }
        break MISSING_BLOCK_LABEL_206;
        b;
        a;
        lq.a(httpurlconnection, d);
          goto _L1
        exception;
        httpurlconnection.disconnect();
        throw exception;
    }

    public final void u_()
    {
    }
}
