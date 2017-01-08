// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageView;
import com.aadhk.product.library.d;
import com.bugsense.trace.BugSenseHandler;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity

public class AboutActivity extends POSActivity
    implements android.view.View.OnClickListener
{

    private ImageView a;

    public AboutActivity()
    {
    }

    public void onClick(View view)
    {
        if (view == a)
        {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(getString(d.d)));
            startActivity(intent);
        }
    }

    public void onCreate(Bundle bundle)
    {
        BufferedReader bufferedreader;
        StringBuffer stringbuffer;
        super.onCreate(bundle);
        setTitle(0x7f080139);
        setContentView(0x7f030018);
        a = (ImageView)findViewById(0x7f090042);
        a.setOnClickListener(this);
        bufferedreader = new BufferedReader(new InputStreamReader(getResources().openRawResource(0x7f060000)));
        stringbuffer = new StringBuffer();
_L1:
        String s;
        try
        {
            s = bufferedreader.readLine();
        }
        catch (IOException ioexception)
        {
            BugSenseHandler.sendException(ioexception);
            ioexception.printStackTrace();
            return;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_104;
        }
        stringbuffer.append(s);
          goto _L1
        WebView webview = (WebView)findViewById(0x7f090041);
        webview.setBackgroundColor(0);
        webview.loadDataWithBaseURL(null, stringbuffer.toString(), "text/html", "UTF-8", null);
        return;
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0000, menu);
        return super.onCreateOptionsMenu(menu);
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        menuitem.getItemId();
        JVM INSTR tableswitch 2131297024 2131297024: default 24
    //                   2131297024 30;
           goto _L1 _L2
_L1:
        return super.onOptionsItemSelected(menuitem);
_L2:
        Intent intent = new Intent("android.intent.action.SEND");
        Resources resources = getResources();
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", resources.getString(d.h));
        startActivity(intent);
        if (true) goto _L1; else goto _L3
_L3:
    }
}
