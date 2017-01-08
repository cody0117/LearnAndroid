// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.util;

import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.preference.PreferenceManager;
import com.aadhk.restpos.c.c;
import com.bugsense.trace.BugSenseHandler;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

// Referenced classes of package com.aadhk.restpos.util:
//            b

public final class a
{

    private final Context a;
    private String b;
    private String c;
    private SharedPreferences d;
    private b e;
    private StringBuffer f;
    private StringBuffer g;
    private Resources h;

    public a(Context context)
    {
        e = b.a;
        a = context;
        d = PreferenceManager.getDefaultSharedPreferences(context);
        h = context.getResources();
        try
        {
            b = d.getString("PREFS_VERSION_KEY", "");
            c = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            return;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            BugSenseHandler.sendException(namenotfoundexception);
            namenotfoundexception.printStackTrace();
            return;
        }
    }

    private void a(b b1)
    {
        if (e == b1) goto _L2; else goto _L1
_L1:
        g();
        if (b1 != b.b) goto _L4; else goto _L3
_L3:
        f.append("<div class='list'><ol>\n");
_L6:
        e = b1;
_L2:
        return;
_L4:
        if (b1 == com.aadhk.restpos.util.b.c)
        {
            f.append("<div class='list'><ul>\n");
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    private String f()
    {
        f = new StringBuffer();
        g = new StringBuffer();
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(h.openRawResource(0x7f060001)));
        boolean flag = false;
_L5:
        String s = bufferedreader.readLine();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_455;
        }
        String s1 = s.trim();
        if (!s1.startsWith("$")) goto _L2; else goto _L1
_L1:
        String s2;
        g();
        s2 = s1.substring(1).trim();
        if (!b.equals(s2)) goto _L4; else goto _L3
_L3:
        flag = false;
          goto _L5
_L4:
        if (!s2.equals("END_OF_CHANGE_LOG")) goto _L5; else goto _L6
_L6:
        flag = true;
          goto _L5
_L2:
        if (flag) goto _L5; else goto _L7
_L7:
        IOException ioexception;
        if (!s1.startsWith("%"))
        {
            break MISSING_BLOCK_LABEL_198;
        }
        g();
        f.append((new StringBuilder("<div class='title'>")).append(s1.substring(1).trim()).append("</div>\n").toString());
          goto _L5
        try
        {
            bufferedreader1.close();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            BugSenseHandler.sendException(ioexception);
            ioexception.printStackTrace();
        }
        return g.toString();
label0:
        {
            if (!s1.startsWith("_"))
            {
                break label0;
            }
            g();
            f.append((new StringBuilder("<div class='subtitle'>")).append(s1.substring(1).trim()).append("</div>\n").toString());
        }
          goto _L5
label1:
        {
            if (!s1.startsWith("!"))
            {
                break label1;
            }
            g();
            f.append((new StringBuilder("<div class='freetext'>")).append(s1.substring(1).trim()).append("</div>\n").toString());
        }
          goto _L5
label2:
        {
            if (!s1.startsWith("#"))
            {
                break label2;
            }
            a(b.b);
            f.append((new StringBuilder("<li>")).append(s1.substring(1).trim()).append("</li>\n").toString());
        }
          goto _L5
label3:
        {
            if (!s1.startsWith("*"))
            {
                break label3;
            }
            a(com.aadhk.restpos.util.b.c);
            f.append((new StringBuilder("<li>")).append(s1.substring(1).trim()).append("</li>\n").toString());
        }
          goto _L5
        g();
        f.append((new StringBuilder()).append(s1).append("\n").toString());
          goto _L5
        g();
        bufferedreader.close();
        bufferedreader1 = new BufferedReader(new InputStreamReader(h.openRawResource(0x7f060002)));
_L8:
        s3 = bufferedreader1.readLine();
        if (s3 == null)
        {
            break MISSING_BLOCK_LABEL_556;
        }
label4:
        {
            if (s3.indexOf("CHANGE_LOG_CONTENT") < 0)
            {
                break label4;
            }
            g.append(f);
        }
          goto _L8
        g.append((new StringBuilder()).append(s3).append("\n").toString());
          goto _L8
    }

    private void g()
    {
        if (e != b.b) goto _L2; else goto _L1
_L1:
        f.append("</ol></div>\n");
_L4:
        e = b.a;
        return;
_L2:
        if (e == com.aadhk.restpos.util.b.c)
        {
            f.append("</ul></div>\n");
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void a()
    {
        android.content.SharedPreferences.Editor editor = d.edit();
        editor.putString("PREFS_VERSION_KEY", c);
        editor.commit();
    }

    public final String b()
    {
        return b;
    }

    public final boolean c()
    {
        return !b.equals(c);
    }

    public final boolean d()
    {
        return "".equals(b);
    }

    public final Dialog e()
    {
        c c1 = new c(a);
        c1.setTitle(0x7f080063);
        c1.a(f());
        return c1;
    }
}
