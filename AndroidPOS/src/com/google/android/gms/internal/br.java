// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Environment;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            px

public final class br
{

    private final Context a;

    public br(Context context)
    {
        px.a(context, "Context can not be null");
        a = context;
    }

    private boolean a(Intent intent)
    {
        px.a(intent, "Intent can not be null");
        boolean flag = a.getPackageManager().queryIntentActivities(intent, 0).isEmpty();
        boolean flag1 = false;
        if (!flag)
        {
            flag1 = true;
        }
        return flag1;
    }

    public final boolean a()
    {
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        return a(intent);
    }

    public final boolean b()
    {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("sms:"));
        return a(intent);
    }

    public final boolean c()
    {
        return "mounted".equals(Environment.getExternalStorageState()) && a.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    public final boolean d()
    {
        Intent intent = (new Intent("android.intent.action.INSERT")).setType("vnd.android.cursor.dir/event");
        return android.os.Build.VERSION.SDK_INT >= 14 && a(intent);
    }
}
