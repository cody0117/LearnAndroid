// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.net.URI;
import java.net.URISyntaxException;

// Referenced classes of package com.google.android.gms.internal:
//            iy, pt, mg, mi

public final class mx extends WebViewClient
{

    private final String a;
    private boolean b;
    private final mg c;
    private final iy d;

    public mx(iy iy1, mg mg1, String s)
    {
        a = b(s);
        b = false;
        c = mg1;
        d = iy1;
    }

    private boolean a(String s)
    {
        String s1 = b(s);
        if (!TextUtils.isEmpty(s1)) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        URI uri;
        URI uri1;
        String s2;
        String s3;
        String s4;
        String s5;
        try
        {
            uri = new URI(s1);
            if (!"passback".equals(uri.getScheme()))
            {
                continue; /* Loop/switch isn't completed */
            }
            d.b();
        }
        catch (URISyntaxException urisyntaxexception)
        {
            urisyntaxexception.getMessage();
            return false;
        }
        return true;
        if (TextUtils.isEmpty(a)) goto _L1; else goto _L3
_L3:
        uri1 = new URI(a);
        s2 = uri1.getHost();
        s3 = uri.getHost();
        s4 = uri1.getPath();
        s5 = uri.getPath();
        if (!pt.a(s2, s3) || !pt.a(s4, s5)) goto _L1; else goto _L4
_L4:
        d.b();
        return true;
    }

    private static String b(String s)
    {
        if (!TextUtils.isEmpty(s)) goto _L2; else goto _L1
_L1:
        return s;
_L2:
        if (!s.endsWith("/")) goto _L1; else goto _L3
_L3:
        String s1 = s.substring(0, -1 + s.length());
        return s1;
        IndexOutOfBoundsException indexoutofboundsexception;
        indexoutofboundsexception;
        indexoutofboundsexception.getMessage();
        return s;
    }

    public final void onLoadResource(WebView webview, String s)
    {
        (new StringBuilder("JavascriptAdWebViewClient::onLoadResource: ")).append(s);
        if (!a(s))
        {
            c.f().onLoadResource(c, s);
        }
    }

    public final void onPageFinished(WebView webview, String s)
    {
        (new StringBuilder("JavascriptAdWebViewClient::onPageFinished: ")).append(s);
        if (!b)
        {
            d.a();
            b = true;
        }
    }

    public final boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        (new StringBuilder("JavascriptAdWebViewClient::shouldOverrideUrlLoading: ")).append(s);
        if (a(s))
        {
            return true;
        } else
        {
            return c.f().shouldOverrideUrlLoading(c, s);
        }
    }
}
