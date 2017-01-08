// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.util;

import com.aadhk.restpos.POSApp;
import com.bugsense.trace.BugSenseHandler;
import java.io.IOException;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.util.EntityUtils;

public final class j
{

    public static String a(HttpPost httppost)
    {
        HttpResponse httpresponse;
        String s;
        int i;
        String s1;
        try
        {
            httpresponse = b(httppost);
        }
        catch (ClientProtocolException clientprotocolexception)
        {
            BugSenseHandler.sendException(clientprotocolexception);
            clientprotocolexception.printStackTrace();
            return null;
        }
        catch (IOException ioexception)
        {
            BugSenseHandler.sendException(ioexception);
            ioexception.printStackTrace();
            return null;
        }
        s = null;
        if (httpresponse == null)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        i = httpresponse.getStatusLine().getStatusCode();
        s = null;
        if (i != 200)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        s1 = EntityUtils.toString(httpresponse.getEntity());
        s = s1;
        return s;
    }

    private static HttpResponse a(HttpGet httpget)
    {
        BasicHttpParams basichttpparams;
        basichttpparams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basichttpparams, 5000);
        HttpConnectionParams.setSoTimeout(basichttpparams, 30000);
        DefaultHttpClient defaulthttpclient;
        HttpResponse httpresponse1;
        defaulthttpclient = new DefaultHttpClient(basichttpparams);
        if (POSApp.p() != null)
        {
            defaulthttpclient.setCookieStore(POSApp.p());
        }
        httpresponse1 = defaulthttpclient.execute(httpget);
        HttpResponse httpresponse = httpresponse1;
        POSApp.a(defaulthttpclient.getCookieStore());
        return httpresponse;
        ClientProtocolException clientprotocolexception;
        clientprotocolexception;
        ClientProtocolException clientprotocolexception1;
        httpresponse = null;
        clientprotocolexception1 = clientprotocolexception;
_L4:
        BugSenseHandler.sendException(clientprotocolexception1);
        clientprotocolexception1.printStackTrace();
        return httpresponse;
        IOException ioexception;
        ioexception;
        IOException ioexception1;
        httpresponse = null;
        ioexception1 = ioexception;
_L2:
        ioexception1.printStackTrace();
        BugSenseHandler.sendException(ioexception1);
        return httpresponse;
        ioexception1;
        if (true) goto _L2; else goto _L1
_L1:
        clientprotocolexception1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static HttpPost a(String s)
    {
        return new HttpPost(s);
    }

    public static String b(String s)
    {
        HttpPost httppost = a(s);
        HttpResponse httpresponse;
        String s1;
        int i;
        String s2;
        try
        {
            httpresponse = b(httppost);
        }
        catch (ClientProtocolException clientprotocolexception)
        {
            BugSenseHandler.sendException(clientprotocolexception);
            clientprotocolexception.printStackTrace();
            return null;
        }
        catch (IOException ioexception)
        {
            BugSenseHandler.sendException(ioexception);
            ioexception.printStackTrace();
            return null;
        }
        s1 = null;
        if (httpresponse == null)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        i = httpresponse.getStatusLine().getStatusCode();
        s1 = null;
        if (i != 200)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        s2 = EntityUtils.toString(httpresponse.getEntity());
        s1 = s2;
        return s1;
    }

    private static HttpResponse b(HttpPost httppost)
    {
        BasicHttpParams basichttpparams;
        basichttpparams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basichttpparams, 5000);
        HttpConnectionParams.setSoTimeout(basichttpparams, 30000);
        DefaultHttpClient defaulthttpclient;
        HttpResponse httpresponse1;
        defaulthttpclient = new DefaultHttpClient(basichttpparams);
        if (POSApp.p() != null)
        {
            defaulthttpclient.setCookieStore(POSApp.p());
        }
        httpresponse1 = defaulthttpclient.execute(httppost);
        HttpResponse httpresponse = httpresponse1;
        POSApp.a(defaulthttpclient.getCookieStore());
        return httpresponse;
        ClientProtocolException clientprotocolexception;
        clientprotocolexception;
        ClientProtocolException clientprotocolexception1;
        httpresponse = null;
        clientprotocolexception1 = clientprotocolexception;
_L4:
        clientprotocolexception1.printStackTrace();
        BugSenseHandler.sendException(clientprotocolexception1);
        return httpresponse;
        IOException ioexception;
        ioexception;
        IOException ioexception1;
        httpresponse = null;
        ioexception1 = ioexception;
_L2:
        ioexception1.printStackTrace();
        BugSenseHandler.sendException(ioexception1);
        return httpresponse;
        ioexception1;
        if (true) goto _L2; else goto _L1
_L1:
        clientprotocolexception1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static String c(String s)
    {
        HttpGet httpget = new HttpGet(s);
        HttpResponse httpresponse;
        String s1;
        int i;
        String s2;
        try
        {
            httpresponse = a(httpget);
        }
        catch (ClientProtocolException clientprotocolexception)
        {
            BugSenseHandler.sendException(clientprotocolexception);
            clientprotocolexception.printStackTrace();
            return null;
        }
        catch (IOException ioexception)
        {
            BugSenseHandler.sendException(ioexception);
            ioexception.printStackTrace();
            return null;
        }
        s1 = null;
        if (httpresponse == null)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        i = httpresponse.getStatusLine().getStatusCode();
        s1 = null;
        if (i != 200)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        s2 = EntityUtils.toString(httpresponse.getEntity());
        s1 = s2;
        return s1;
    }
}
