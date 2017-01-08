// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            cz, mg

final class cr
    implements cz
{

    cr()
    {
    }

    public final void a(mg mg1, Map map)
    {
        String s = (String)map.get("urls");
        if (TextUtils.isEmpty(s))
        {
            return;
        }
        String as[] = s.split(",");
        HashMap hashmap = new HashMap();
        PackageManager packagemanager = mg1.getContext().getPackageManager();
        int i = as.length;
        int j = 0;
        while (j < i) 
        {
            String s1 = as[j];
            String as1[] = s1.split(";", 2);
            String s2 = as1[0].trim();
            String s3;
            boolean flag;
            if (as1.length > 1)
            {
                s3 = as1[1].trim();
            } else
            {
                s3 = "android.intent.action.VIEW";
            }
            if (packagemanager.resolveActivity(new Intent(s3, Uri.parse(s2)), 0x10000) != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            hashmap.put(s1, Boolean.valueOf(flag));
            j++;
        }
        mg1.a("openableURLs", hashmap);
    }
}
