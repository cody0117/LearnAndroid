// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.DownloadManager;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Environment;

// Referenced classes of package com.google.android.gms.internal:
//            ez, qx

final class fa
    implements android.content.DialogInterface.OnClickListener
{

    final String a;
    final String b;
    final ez c;

    fa(ez ez1, String s, String s1)
    {
        c = ez1;
        a = s;
        b = s1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        DownloadManager downloadmanager = (DownloadManager)ez.a(c).getSystemService("download");
        android.app.DownloadManager.Request request;
        c;
        String s = a;
        String s1 = b;
        request = new android.app.DownloadManager.Request(Uri.parse(s));
        request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, s1);
        if (!qx.a())
        {
            break MISSING_BLOCK_LABEL_84;
        }
        request.allowScanningByMediaScanner();
        request.setNotificationVisibility(1);
_L1:
        downloadmanager.enqueue(request);
        return;
        try
        {
            request.setShowRunningNotification(true);
        }
        catch (IllegalStateException illegalstateexception)
        {
            return;
        }
          goto _L1
    }
}
