// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.internal:
//            jv, kw, fj, kn, 
//            fh, av, kl, bs, 
//            kj, me, kh, ku, 
//            ki, gs, kt, lq, 
//            kx, dn

public final class kg extends jv
{

    private static final Object a = new Object();
    private static kg b;
    private final Context c;
    private final kx d;
    private final dn e;
    private final bs f;

    private kg(Context context, bs bs1, dn dn, kx kx)
    {
        c = context;
        d = kx;
        e = dn;
        f = bs1;
    }

    private static fj a(Context context, bs bs1, fh fh1)
    {
        kn kn1;
        kw kw1 = new kw(context);
        if (kw1.l == -1)
        {
            return new fj(2);
        }
        kn1 = new kn(fh1.f.packageName);
        if (fh1.c.c != null)
        {
            String s2 = fh1.c.c.getString("_ad");
            if (s2 != null)
            {
                return kl.a(context, fh1, s2);
            }
        }
        String s = bs1.a();
        String s1 = kl.a(fh1, kw1, bs1.b(), bs1.c(), bs1.d());
        if (s1 == null)
        {
            return new fj(0);
        }
        kj kj1 = new kj(s1);
        me.a.post(new kh(context, fh1, kn1, kj1, s));
        ku ku1 = (ku)kn1.a().get(10L, TimeUnit.SECONDS);
        if (ku1 != null)
        {
            break MISSING_BLOCK_LABEL_237;
        }
        fj fj4 = new fj(0);
        me.a.post(new ki(kn1));
        return fj4;
        Exception exception1;
        exception1;
        fj fj1 = new fj(0);
        me.a.post(new ki(kn1));
        return fj1;
        fj fj2;
        if (ku1.a() == -2)
        {
            break MISSING_BLOCK_LABEL_280;
        }
        fj2 = new fj(ku1.a());
        me.a.post(new ki(kn1));
        return fj2;
        fj fj3;
        if (ku1.f())
        {
            fh1.g.packageName;
        }
        fj3 = a(context, fh1.k.b, ku1.d(), ku1);
        me.a.post(new ki(kn1));
        return fj3;
        Exception exception;
        exception;
        me.a.post(new ki(kn1));
        throw exception;
    }

    public static fj a(Context context, String s, String s1, ku ku1)
    {
        HttpURLConnection httpurlconnection;
        kt kt1;
        URL url;
        long l;
        URL url1;
        int i;
        int j;
        java.util.Map map;
        fj fj1;
        String s2;
        fj fj2;
        fj fj3;
        fj fj4;
        byte abyte0[];
        BufferedOutputStream bufferedoutputstream;
        try
        {
            kt1 = new kt();
            (new StringBuilder("AdRequestServiceImpl: Sending request: ")).append(s1);
            url = new URL(s1);
            l = SystemClock.elapsedRealtime();
        }
        catch (IOException ioexception)
        {
            (new StringBuilder("Error while connecting to ad server: ")).append(ioexception.getMessage());
            return new fj(2);
        }
        url1 = url;
        i = 0;
        httpurlconnection = (HttpURLConnection)url1.openConnection();
        lq.a(context, s, false, httpurlconnection);
        if (!TextUtils.isEmpty(null))
        {
            httpurlconnection.addRequestProperty("x-afma-drt-cookie", null);
        }
        if (ku1 == null)
        {
            break MISSING_BLOCK_LABEL_141;
        }
        if (!TextUtils.isEmpty(ku1.c()))
        {
            httpurlconnection.setDoOutput(true);
            abyte0 = ku1.c().getBytes();
            httpurlconnection.setFixedLengthStreamingMode(abyte0.length);
            bufferedoutputstream = new BufferedOutputStream(httpurlconnection.getOutputStream());
            bufferedoutputstream.write(abyte0);
            bufferedoutputstream.close();
        }
        j = httpurlconnection.getResponseCode();
        map = httpurlconnection.getHeaderFields();
        if (j < 200 || j >= 300)
        {
            break MISSING_BLOCK_LABEL_215;
        }
        kt1.a(url1.toString(), map, lq.a(new InputStreamReader(httpurlconnection.getInputStream())));
        fj4 = kt1.a(l);
        httpurlconnection.disconnect();
        return fj4;
        if (j < 300 || j >= 400)
        {
            break MISSING_BLOCK_LABEL_305;
        }
        s2 = httpurlconnection.getHeaderField("Location");
        if (!TextUtils.isEmpty(s2))
        {
            break MISSING_BLOCK_LABEL_267;
        }
        fj2 = new fj(0);
        httpurlconnection.disconnect();
        return fj2;
        url1 = new URL(s2);
        if (++i <= 5)
        {
            break MISSING_BLOCK_LABEL_339;
        }
        fj3 = new fj(0);
        httpurlconnection.disconnect();
        return fj3;
        (new StringBuilder("Received error HTTP response code: ")).append(j);
        fj1 = new fj(0);
        httpurlconnection.disconnect();
        return fj1;
        kt1.a(map);
        httpurlconnection.disconnect();
        break MISSING_BLOCK_LABEL_45;
        Exception exception;
        exception;
        httpurlconnection.disconnect();
        throw exception;
    }

    public static kg a(Context context, bs bs1, dn dn, kx kx)
    {
        kg kg1;
        synchronized (a)
        {
            if (b == null)
            {
                b = new kg(context.getApplicationContext(), bs1, dn, kx);
            }
            kg1 = b;
        }
        return kg1;
    }

    public final fj a(fh fh1)
    {
        Context context = c;
        bs bs1 = f;
        dn _tmp = e;
        kx _tmp1 = d;
        return a(context, bs1, fh1);
    }

}
