// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;

// Referenced classes of package com.google.android.gms.internal:
//            ag, aa, ad

final class af
    implements Runnable
{

    ValueCallback a;
    final aa b;
    final WebView c;
    final ad d;

    af(ad ad, aa aa, WebView webview)
    {
        d = ad;
        b = aa;
        c = webview;
        super();
        a = new ag(this);
    }

    public final void run()
    {
        if (c.getSettings().getJavaScriptEnabled())
        {
            c.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", a);
        }
    }
}
