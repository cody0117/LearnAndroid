// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.a.h;
import com.google.android.gms.a.i;
import com.google.android.gms.common.f;

// Referenced classes of package com.google.android.gms.internal:
//            ts, gs, bf, bd, 
//            bg, ay, ed, bc

public final class aq extends h
{

    private static final aq a = new aq();

    private aq()
    {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    public static bc a(Context context, ay ay, String s, ed ed)
    {
        Object obj;
label0:
        {
            if (f.a(context) == 0)
            {
                obj = a.b(context, ay, s, ed);
                if (obj != null)
                {
                    break label0;
                }
            }
            obj = new ts(context, ay, s, ed, new gs());
        }
        return ((bc) (obj));
    }

    private bc b(Context context, ay ay, String s, ed ed)
    {
        bc bc;
        try
        {
            com.google.android.gms.a.c c = com.google.android.gms.a.f.a(context);
            bc = bd.a(((bf)a(context)).a(c, ay, s, ed, 0x648278));
        }
        catch (RemoteException remoteexception)
        {
            return null;
        }
        catch (i j)
        {
            return null;
        }
        return bc;
    }

    protected final Object a(IBinder ibinder)
    {
        return bg.a(ibinder);
    }

}
