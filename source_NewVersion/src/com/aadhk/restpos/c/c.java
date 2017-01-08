// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.view.View;
import android.webkit.WebView;
import android.widget.Button;
import com.bugsense.trace.BugSenseHandler;

// Referenced classes of package com.aadhk.restpos.c:
//            br

public final class c extends br
    implements android.view.View.OnClickListener
{

    private Button e;
    private Button f;
    private WebView g;
    private Context h;

    public c(Context context)
    {
        super(context, 0x7f03002b);
        h = context;
        g = (WebView)findViewById(0x7f0b00ac);
        g.setBackgroundColor(0);
        f = (Button)findViewById(0x7f0b00ae);
        f.setOnClickListener(this);
        e = (Button)findViewById(0x7f0b0057);
        e.setOnClickListener(this);
    }

    public final void a(String s)
    {
        g.loadData(s, "text/html", "UTF-8");
    }

    public final void onClick(View view)
    {
        if (view == f)
        {
            Context context = h;
            android.content.SharedPreferences.Editor editor;
            try
            {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse((new StringBuilder("market://details?id=")).append(context.getPackageName()).toString()));
                context.startActivity(intent);
            }
            catch (ActivityNotFoundException activitynotfoundexception)
            {
                BugSenseHandler.sendException(activitynotfoundexception);
                activitynotfoundexception.printStackTrace();
            }
            editor = context.getSharedPreferences("apprate_prefs", 0).edit();
            editor.putBoolean("dont_show_again", true);
            editor.commit();
        }
        dismiss();
    }
}
