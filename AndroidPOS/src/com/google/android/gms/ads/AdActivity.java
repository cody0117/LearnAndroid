// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.fx;

public final class AdActivity extends Activity
{

    private fx a;

    public AdActivity()
    {
    }

    private void a()
    {
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_16;
        }
        a.j();
        return;
        RemoteException remoteexception;
        remoteexception;
    }

    protected final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a = fv.a(this);
        if (a == null)
        {
            finish();
            return;
        }
        try
        {
            a.a(bundle);
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
                a.i();
            }
        }
        catch (RemoteException remoteexception) { }
        super.onDestroy();
    }

    protected final void onPause()
    {
        try
        {
            if (a != null)
            {
                a.g();
            }
        }
        catch (RemoteException remoteexception)
        {
            finish();
        }
        super.onPause();
    }

    protected final void onRestart()
    {
        super.onRestart();
        try
        {
            if (a != null)
            {
                a.d();
            }
            return;
        }
        catch (RemoteException remoteexception)
        {
            finish();
        }
    }

    protected final void onResume()
    {
        super.onResume();
        try
        {
            if (a != null)
            {
                a.f();
            }
            return;
        }
        catch (RemoteException remoteexception)
        {
            finish();
        }
    }

    protected final void onSaveInstanceState(Bundle bundle)
    {
        try
        {
            if (a != null)
            {
                a.b(bundle);
            }
        }
        catch (RemoteException remoteexception)
        {
            finish();
        }
        super.onSaveInstanceState(bundle);
    }

    protected final void onStart()
    {
        super.onStart();
        try
        {
            if (a != null)
            {
                a.e();
            }
            return;
        }
        catch (RemoteException remoteexception)
        {
            finish();
        }
    }

    protected final void onStop()
    {
        try
        {
            if (a != null)
            {
                a.h();
            }
        }
        catch (RemoteException remoteexception)
        {
            finish();
        }
        super.onStop();
    }

    public final void setContentView(int i)
    {
        super.setContentView(i);
        a();
    }

    public final void setContentView(View view)
    {
        super.setContentView(view);
        a();
    }

    public final void setContentView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        super.setContentView(view, layoutparams);
        a();
    }
}
