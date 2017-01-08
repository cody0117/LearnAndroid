// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.analytics.tracking.android;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.Locale;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicHttpEntityEnclosingRequest;

// Referenced classes of package com.google.analytics.tracking.android:
//            Dispatcher, Utils, Log, Hit, 
//            HttpClientFactory, HitBuilder, AnalyticsStore

class SimpleNetworkDispatcher
    implements Dispatcher
{

    private static final String USER_AGENT_TEMPLATE = "%s/%s (Linux; U; Android %s; %s; %s Build/%s)";
    private final Context ctx;
    private final HttpClientFactory httpClientFactory;
    private final String userAgent;

    SimpleNetworkDispatcher(AnalyticsStore analyticsstore, HttpClientFactory httpclientfactory, Context context)
    {
        this(httpclientfactory, context);
    }

    SimpleNetworkDispatcher(HttpClientFactory httpclientfactory, Context context)
    {
        ctx = context.getApplicationContext();
        userAgent = createUserAgentString("GoogleAnalytics", "2.0", android.os.Build.VERSION.RELEASE, Utils.getLanguage(Locale.getDefault()), Build.MODEL, Build.ID);
        httpClientFactory = httpclientfactory;
    }

    private HttpEntityEnclosingRequest buildRequest(String s, String s1)
    {
        String s2;
        if (TextUtils.isEmpty(s))
        {
            Log.w("Empty hit, discarding.");
            return null;
        }
        s2 = (new StringBuilder()).append(s1).append("?").append(s).toString();
        if (s2.length() >= 2036) goto _L2; else goto _L1
_L1:
        BasicHttpEntityEnclosingRequest basichttpentityenclosingrequest = new BasicHttpEntityEnclosingRequest("GET", s2);
_L4:
        basichttpentityenclosingrequest.addHeader("User-Agent", userAgent);
        return basichttpentityenclosingrequest;
_L2:
        basichttpentityenclosingrequest = new BasicHttpEntityEnclosingRequest("POST", s1);
        try
        {
            basichttpentityenclosingrequest.setEntity(new StringEntity(s));
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            Log.w("Encoding error, discarding hit");
            return null;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private URL getUrl(Hit hit)
    {
        if (TextUtils.isEmpty(hit.getHitUrl()))
        {
            return null;
        }
        URL url;
        try
        {
            url = new URL(hit.getHitUrl());
        }
        catch (MalformedURLException malformedurlexception)
        {
            URL url1;
            try
            {
                url1 = new URL("http://www.google-analytics.com/collect");
            }
            catch (MalformedURLException malformedurlexception1)
            {
                return null;
            }
            return url1;
        }
        return url;
    }

    private void logDebugInformation(boolean flag, HttpEntityEnclosingRequest httpentityenclosingrequest)
    {
        StringBuffer stringbuffer;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_165;
        }
        stringbuffer = new StringBuffer();
        org.apache.http.Header aheader[] = httpentityenclosingrequest.getAllHeaders();
        int i = aheader.length;
        for (int j = 0; j < i; j++)
        {
            stringbuffer.append(aheader[j].toString()).append("\n");
        }

        stringbuffer.append(httpentityenclosingrequest.getRequestLine().toString()).append("\n");
        if (httpentityenclosingrequest.getEntity() == null)
        {
            break MISSING_BLOCK_LABEL_157;
        }
        InputStream inputstream = httpentityenclosingrequest.getEntity().getContent();
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_157;
        }
        int k = inputstream.available();
        if (k > 0)
        {
            try
            {
                byte abyte0[] = new byte[k];
                inputstream.read(abyte0);
                stringbuffer.append("POST:\n");
                stringbuffer.append(new String(abyte0)).append("\n");
            }
            catch (IOException ioexception)
            {
                Log.w("Error Writing hit to log...");
            }
        }
        Log.i(stringbuffer.toString());
    }

    String createUserAgentString(String s, String s1, String s2, String s3, String s4, String s5)
    {
        return String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", new Object[] {
            s, s1, s2, s3, s4, s5
        });
    }

    public int dispatchHits(List list)
    {
        int i;
        int j;
        int k;
        i = Math.min(list.size(), 40);
        j = 0;
        k = 0;
_L2:
        HttpClient httpclient;
        Hit hit;
        URL url;
        int l;
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_368;
        }
        httpclient = httpClientFactory.newInstance();
        hit = (Hit)list.get(j);
        url = getUrl(hit);
        if (url != null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (Log.isDebugEnabled())
        {
            Log.w((new StringBuilder("No destination: discarding hit: ")).append(hit.getHitParams()).toString());
        } else
        {
            Log.w("No destination: discarding hit.");
        }
        l = k + 1;
_L3:
        j++;
        k = l;
        if (true) goto _L2; else goto _L1
_L1:
        HttpHost httphost;
        String s1;
        HttpEntityEnclosingRequest httpentityenclosingrequest;
label0:
        {
            httphost = new HttpHost(url.getHost(), url.getPort(), url.getProtocol());
            String s = url.getPath();
            if (TextUtils.isEmpty(hit.getHitParams()))
            {
                s1 = "";
            } else
            {
                s1 = HitBuilder.postProcessHit(hit, System.currentTimeMillis());
            }
            httpentityenclosingrequest = buildRequest(s1, s);
            if (httpentityenclosingrequest != null)
            {
                break label0;
            }
            l = k + 1;
        }
          goto _L3
        httpentityenclosingrequest.addHeader("Host", httphost.toHostString());
        logDebugInformation(Log.isDebugEnabled(), httpentityenclosingrequest);
        if (s1.length() <= 8192) goto _L5; else goto _L4
_L4:
        Log.w("Hit too long (> 8192 bytes)--not sent");
_L7:
        l = k + 1;
          goto _L3
_L5:
        HttpResponse httpresponse = httpclient.execute(httphost, httpentityenclosingrequest);
        if (httpresponse.getStatusLine().getStatusCode() == 200) goto _L7; else goto _L6
_L6:
        Log.w((new StringBuilder("Bad response: ")).append(httpresponse.getStatusLine().getStatusCode()).toString());
        return k;
        ClientProtocolException clientprotocolexception;
        clientprotocolexception;
        Log.w("ClientProtocolException sending hit; discarding hit...");
          goto _L7
        IOException ioexception;
        ioexception;
        Log.w((new StringBuilder("Exception sending hit: ")).append(ioexception.getClass().getSimpleName()).toString());
        Log.w(ioexception.getMessage());
        return k;
        return k;
    }

    public boolean okToDispatch()
    {
        NetworkInfo networkinfo = ((ConnectivityManager)ctx.getSystemService("connectivity")).getActiveNetworkInfo();
        if (networkinfo == null || !networkinfo.isConnected())
        {
            Log.vDebug("...no network connectivity");
            return false;
        } else
        {
            return true;
        }
    }
}
