// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.c;

import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.util.EntityUtils;

public final class i
{

    public static String a(HttpPost httppost)
    {
        BasicHttpParams basichttpparams = new BasicHttpParams();
        ConnManagerParams.setTimeout(basichttpparams, 3000L);
        HttpConnectionParams.setConnectionTimeout(basichttpparams, 5000);
        HttpConnectionParams.setSoTimeout(basichttpparams, 5000);
        HttpResponse httpresponse = (new DefaultHttpClient(basichttpparams)).execute(httppost);
        int j = httpresponse.getStatusLine().getStatusCode();
        String s = null;
        if (j == 200)
        {
            s = EntityUtils.toString(httpresponse.getEntity());
        }
        return s;
    }

    public static HttpPost a(String s)
    {
        return new HttpPost(s);
    }

    public static String b(String s)
    {
        HttpGet httpget = new HttpGet(s);
        BasicHttpParams basichttpparams = new BasicHttpParams();
        ConnManagerParams.setTimeout(basichttpparams, 3000L);
        HttpConnectionParams.setConnectionTimeout(basichttpparams, 5000);
        HttpConnectionParams.setSoTimeout(basichttpparams, 5000);
        HttpResponse httpresponse = (new DefaultHttpClient(basichttpparams)).execute(httpget);
        int j = httpresponse.getStatusLine().getStatusCode();
        String s1 = null;
        if (j == 200)
        {
            s1 = EntityUtils.toString(httpresponse.getEntity());
        }
        return s1;
    }
}
