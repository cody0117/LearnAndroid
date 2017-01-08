// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;

// Referenced classes of package com.google.android.gms.tagmanager:
//            x, j, i

public class PreviewActivity extends Activity
{

    public PreviewActivity()
    {
    }

    public void onCreate(Bundle bundle)
    {
        Intent intent;
        super.onCreate(bundle);
        x.d();
        android.net.Uri uri = getIntent().getData();
        if (!j.a(this).a(uri))
        {
            String s = (new StringBuilder("Cannot preview the app with the uri: ")).append(uri).append(". Launching current version instead.").toString();
            x.c();
            AlertDialog alertdialog = (new android.app.AlertDialog.Builder(this)).create();
            alertdialog.setTitle("Preview failure");
            alertdialog.setMessage(s);
            alertdialog.setButton(-1, "Continue", new i(this));
            alertdialog.show();
        }
        intent = getPackageManager().getLaunchIntentForPackage(getPackageName());
        if (intent != null)
        {
            try
            {
                (new StringBuilder("Invoke the launch activity for package name: ")).append(getPackageName());
                x.d();
                startActivity(intent);
                return;
            }
            catch (Exception exception)
            {
                (new StringBuilder("Calling preview threw an exception: ")).append(exception.getMessage());
            }
            break MISSING_BLOCK_LABEL_188;
        }
        (new StringBuilder("No launch activity found for package name: ")).append(getPackageName());
        x.d();
        return;
        x.a();
        return;
    }
}
