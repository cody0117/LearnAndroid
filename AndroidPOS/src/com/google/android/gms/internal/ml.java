// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Message;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

// Referenced classes of package com.google.android.gms.internal:
//            mg, mt, mr, mp, 
//            mo, mn, mm, fi, 
//            mu

public class ml extends WebChromeClient
{

    private final mg a;

    public ml(mg mg1)
    {
        a = mg1;
    }

    private static Context a(WebView webview)
    {
        Context context;
        if (!(webview instanceof mg))
        {
            context = webview.getContext();
        } else
        {
            mg mg1 = (mg)webview;
            context = mg1.k();
            if (context == null)
            {
                return mg1.getContext();
            }
        }
        return context;
    }

    private static boolean a(Context context, String s, String s1, String s2, JsResult jsresult, JsPromptResult jspromptresult, boolean flag)
    {
        android.app.AlertDialog.Builder builder;
        LinearLayout linearlayout;
        TextView textview;
        EditText edittext;
        try
        {
            builder = new android.app.AlertDialog.Builder(context);
            builder.setTitle(s);
        }
        catch (android.view.WindowManager.BadTokenException badtokenexception)
        {
            return true;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_141;
        }
        linearlayout = new LinearLayout(context);
        linearlayout.setOrientation(1);
        textview = new TextView(context);
        textview.setText(s1);
        edittext = new EditText(context);
        edittext.setText(s2);
        linearlayout.addView(textview);
        linearlayout.addView(edittext);
        builder.setView(linearlayout).setPositiveButton(0x104000a, new mt(jspromptresult, edittext)).setNegativeButton(0x1040000, new mr(jspromptresult)).setOnCancelListener(new mp(jspromptresult)).create().show();
        return true;
        builder.setMessage(s1).setPositiveButton(0x104000a, new mo(jsresult)).setNegativeButton(0x1040000, new mn(jsresult)).setOnCancelListener(new mm(jsresult)).create().show();
        return true;
    }

    protected final void a(View view, int i, android.webkit.WebChromeClient.CustomViewCallback customviewcallback)
    {
        fi fi1 = a.d();
        if (fi1 == null)
        {
            customviewcallback.onCustomViewHidden();
            return;
        } else
        {
            fi1.a(view, customviewcallback);
            fi1.a(i);
            return;
        }
    }

    public final void onCloseWindow(WebView webview)
    {
        fi fi1;
        if (webview instanceof mg)
        {
            if ((fi1 = ((mg)webview).d()) != null)
            {
                fi1.a();
                return;
            }
        }
    }

    public final boolean onConsoleMessage(ConsoleMessage consolemessage)
    {
        if ((new StringBuilder("JS: ")).append(consolemessage.message()).append(" (").append(consolemessage.sourceId()).append(":").append(consolemessage.lineNumber()).append(")").toString().contains("Application Cache"))
        {
            return super.onConsoleMessage(consolemessage);
        } else
        {
            int[] _tmp = mu.a;
            consolemessage.messageLevel().ordinal();
            return super.onConsoleMessage(consolemessage);
        }
    }

    public final boolean onCreateWindow(WebView webview, boolean flag, boolean flag1, Message message)
    {
        android.webkit.WebView.WebViewTransport webviewtransport = (android.webkit.WebView.WebViewTransport)message.obj;
        WebView webview1 = new WebView(webview.getContext());
        webview1.setWebViewClient(a.f());
        webviewtransport.setWebView(webview1);
        message.sendToTarget();
        return true;
    }

    public final void onExceededDatabaseQuota(String s, String s1, long l, long l1, long l2, android.webkit.WebStorage.QuotaUpdater quotaupdater)
    {
        long l3;
        l3 = 0x500000L - l2;
        if (l3 <= 0L)
        {
            quotaupdater.updateQuota(l);
            return;
        }
        if (l != 0L) goto _L2; else goto _L1
_L1:
        if (l1 > l3 || l1 > 0x100000L)
        {
            l1 = 0L;
        }
_L4:
        quotaupdater.updateQuota(l1);
        return;
_L2:
        if (l1 != 0L)
        {
            break; /* Loop/switch isn't completed */
        }
        l = Math.min(l + Math.min(0x20000L, l3), 0x100000L);
_L6:
        l1 = l;
        if (true) goto _L4; else goto _L3
_L3:
        if (l1 > Math.min(0x100000L - l, l3)) goto _L6; else goto _L5
_L5:
        l += l1;
          goto _L6
    }

    public final void onHideCustomView()
    {
        fi fi1 = a.d();
        if (fi1 == null)
        {
            return;
        } else
        {
            fi1.c();
            return;
        }
    }

    public final boolean onJsAlert(WebView webview, String s, String s1, JsResult jsresult)
    {
        return a(a(webview), s, s1, null, jsresult, null, false);
    }

    public final boolean onJsBeforeUnload(WebView webview, String s, String s1, JsResult jsresult)
    {
        return a(a(webview), s, s1, null, jsresult, null, false);
    }

    public final boolean onJsConfirm(WebView webview, String s, String s1, JsResult jsresult)
    {
        return a(a(webview), s, s1, null, jsresult, null, false);
    }

    public final boolean onJsPrompt(WebView webview, String s, String s1, String s2, JsPromptResult jspromptresult)
    {
        return a(a(webview), s, s1, s2, null, jspromptresult, true);
    }

    public final void onReachedMaxAppCacheSize(long l, long l1, android.webkit.WebStorage.QuotaUpdater quotaupdater)
    {
        long l2 = 0x500000L - l1;
        long l3 = 0x20000L + l;
        if (l2 < l3)
        {
            quotaupdater.updateQuota(0L);
            return;
        } else
        {
            quotaupdater.updateQuota(l3);
            return;
        }
    }

    public final void onShowCustomView(View view, android.webkit.WebChromeClient.CustomViewCallback customviewcallback)
    {
        a(view, -1, customviewcallback);
    }
}
