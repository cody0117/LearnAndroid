// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads.purchase;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hu;

public final class InAppPurchaseActivity extends Activity
{

    private gz a;

    public InAppPurchaseActivity()
    {
    }

    protected final void onActivityResult(int i, int j, Intent intent)
    {
        try
        {
            if (a != null)
            {
                a.a(i, j, intent);
            }
        }
        catch (RemoteException remoteexception) { }
        super.onActivityResult(i, j, intent);
    }

    protected final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a = hu.a(this);
        if (a == null)
        {
            finish();
            return;
        }
        try
        {
            a.a();
            return;
        }
        catch (RemoteException remoteexception)
        {
            finish();
        }
    }

    protected final void onDestroy()
    {
        try
        {
            if (a != null)
            {
                a.b();
            }
        }
        catch (RemoteException remoteexception) { }
        super.onDestroy();
    }
}
