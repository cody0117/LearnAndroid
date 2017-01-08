// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

// Referenced classes of package com.google.android.gms.internal:
//            mi, lq, mg, ay, 
//            gs

public final class mv extends mi
{

    public mv(mg mg1, boolean flag)
    {
        super(mg1, flag);
    }

    private static WebResourceResponse a(Context context, String s, String s1)
    {
        HttpURLConnection httpurlconnection = (HttpURLConnection)(new URL(s1)).openConnection();
        WebResourceResponse webresourceresponse;
        lq.a(context, s, true, httpurlconnection, true);
        httpurlconnection.addRequestProperty("Cache-Control", "max-stale=3600");
        httpurlconnection.connect();
        webresourceresponse = new WebResourceResponse("application/javascript", "UTF-8", new ByteArrayInputStream(lq.a(new InputStreamReader(httpurlconnection.getInputStream())).getBytes("UTF-8")));
        httpurlconnection.disconnect();
        return webresourceresponse;
        Exception exception;
        exception;
        httpurlconnection.disconnect();
        throw exception;
    }

    public final WebResourceResponse shouldInterceptRequest(WebView webview, String s)
    {
        WebResourceResponse webresourceresponse;
        try
        {
            if (!"mraid.js".equalsIgnoreCase((new File(s)).getName()))
            {
                return super.shouldInterceptRequest(webview, s);
            }
            if (!(webview instanceof mg))
            {
                return super.shouldInterceptRequest(webview, s);
            }
            mg mg1 = (mg)webview;
            mg1.f().f();
            if (mg1.e().e)
            {
                return a(mg1.getContext(), a.i().b, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_interstitial.js");
            }
            if (mg1.j())
            {
                return a(mg1.getContext(), a.i().b, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_expanded_banner.js");
            }
            webresourceresponse = a(mg1.getContext(), a.i().b, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_banner.js");
        }
        catch (IOException ioexception)
        {
            (new StringBuilder("Could not fetch MRAID JS. ")).append(ioexception.getMessage());
            return super.shouldInterceptRequest(webview, s);
        }
        return webresourceresponse;
    }
}
