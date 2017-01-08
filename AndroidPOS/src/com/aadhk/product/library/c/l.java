// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.c;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.aadhk.product.library.d;
import com.bugsense.trace.BugSenseHandler;
import java.util.Locale;

// Referenced classes of package com.aadhk.product.library.c:
//            b

public class l
{

    public static void a(Activity activity)
    {
        b b1;
        Intent intent;
        String s;
        b1 = new b(activity);
        intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        String as[] = new String[1];
        as[0] = activity.getString(d.c);
        intent.putExtra("android.intent.extra.EMAIL", as);
        intent.putExtra("android.intent.extra.SUBJECT", activity.getString(d.b));
        s = "";
        String s1 = (new StringBuilder()).append(activity.getString(d.a)).append("\n------------------------\n").append(activity.getString(d.b)).append(" ").append(activity.getPackageManager().getPackageInfo(activity.getPackageName(), 0).versionName).append("\n").append(Build.MODEL).append(" ").append(android.os.Build.VERSION.SDK_INT).append("\napp:").append(Locale.getDefault()).append(", sys:").append(b1.h()).append("\n------------------------\n\n").toString();
        s = s1;
_L2:
        intent.putExtra("android.intent.extra.TEXT", s);
        activity.startActivity(Intent.createChooser(intent, activity.getString(d.e)));
        return;
        android.content.res.Resources.NotFoundException notfoundexception;
        notfoundexception;
        BugSenseHandler.sendException(notfoundexception);
        notfoundexception.printStackTrace();
        continue; /* Loop/switch isn't completed */
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        BugSenseHandler.sendException(namenotfoundexception);
        namenotfoundexception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }
}
