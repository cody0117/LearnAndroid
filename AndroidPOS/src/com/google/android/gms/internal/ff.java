// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;

// Referenced classes of package com.google.android.gms.internal:
//            do, fu

public final class ff
{

    public static boolean a(Context context, do do1, fu fu1)
    {
        if (do1 != null)
        {
            Intent intent = new Intent();
            if (!TextUtils.isEmpty(do1.c))
            {
                if (!TextUtils.isEmpty(do1.d))
                {
                    intent.setDataAndType(Uri.parse(do1.c), do1.d);
                } else
                {
                    intent.setData(Uri.parse(do1.c));
                }
                intent.setAction("android.intent.action.VIEW");
                if (!TextUtils.isEmpty(do1.e))
                {
                    intent.setPackage(do1.e);
                }
                if (!TextUtils.isEmpty(do1.f))
                {
                    String as[] = do1.f.split("/", 2);
                    if (as.length < 2)
                    {
                        (new StringBuilder("Could not parse component name from open GMSG: ")).append(do1.f);
                        return false;
                    }
                    intent.setClassName(as[0], as[1]);
                }
                try
                {
                    (new StringBuilder("Launching an intent: ")).append(intent);
                    context.startActivity(intent);
                    fu1.r();
                }
                catch (ActivityNotFoundException activitynotfoundexception)
                {
                    activitynotfoundexception.getMessage();
                    return false;
                }
                return true;
            }
        }
        return false;
    }
}
