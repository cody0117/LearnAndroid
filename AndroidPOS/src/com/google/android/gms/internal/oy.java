// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.a;

// Referenced classes of package com.google.android.gms.internal:
//            ou, os, pc, oz

public final class oy extends ou
{

    public final int b;
    public final Bundle c;
    public final IBinder d;
    final os e;

    public oy(os os1, int i, IBinder ibinder, Bundle bundle)
    {
        e = os1;
        super(os1, Boolean.valueOf(true));
        b = i;
        d = ibinder;
        c = bundle;
    }

    protected final void a(Object obj)
    {
        if ((Boolean)obj == null)
        {
            com.google.android.gms.internal.os.a(e, 1, null);
            return;
        }
        b;
        JVM INSTR lookupswitch 2: default 48
    //                   0: 152
    //                   10: 288;
           goto _L1 _L2 _L3
_L1:
        RemoteException remoteexception;
        oz oz1;
        String s;
        android.os.IInterface iinterface;
        PendingIntent pendingintent;
        oz oz2;
        if (c != null)
        {
            pendingintent = (PendingIntent)c.getParcelable("pendingIntent");
        } else
        {
            pendingintent = null;
        }
        if (os.d(e) != null)
        {
            com.google.android.gms.internal.pc.a(os.e(e)).b(e.a(), os.d(e));
            os.f(e);
        }
        com.google.android.gms.internal.os.a(e, 1, null);
        oz2 = com.google.android.gms.internal.os.a(e);
        new a(b, pendingintent);
        oz2.c();
        return;
_L2:
        s = d.getInterfaceDescriptor();
        if (!e.b().equals(s)) goto _L5; else goto _L4
_L4:
        iinterface = e.a(d);
        if (iinterface != null)
        {
            try
            {
                com.google.android.gms.internal.os.a(e, 3, iinterface);
                com.google.android.gms.internal.os.a(e).a();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (RemoteException remoteexception) { }
        }
_L5:
        com.google.android.gms.internal.pc.a(os.e(e)).b(e.a(), os.d(e));
        os.f(e);
        com.google.android.gms.internal.os.a(e, 1, null);
        oz1 = com.google.android.gms.internal.os.a(e);
        new a(8, null);
        oz1.c();
        return;
_L3:
        com.google.android.gms.internal.os.a(e, 1, null);
        throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
    }
}
