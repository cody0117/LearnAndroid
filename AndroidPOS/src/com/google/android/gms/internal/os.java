// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.f;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.internal:
//            pb, px, oz, ot, 
//            oy, po, ow, pc, 
//            ox, ou, pn

public abstract class os
    implements pb
{

    public static final String d[] = {
        "service_esmobile", "service_googleme"
    };
    private final Context a;
    final Handler b;
    boolean c;
    private final Looper e;
    private final Object f = new Object();
    private IInterface g;
    private final ArrayList h = new ArrayList();
    private ox i;
    private int j;
    private final String k[];
    private final oz l;

    protected transient os(Context context, Looper looper, b b1, c c1, String as[])
    {
        j = 1;
        c = false;
        a = (Context)px.a(context);
        e = (Looper)px.a(looper, "Looper must not be null");
        l = new oz(looper, this);
        b = new ot(this, looper);
        k = as;
        b b2 = (b)px.a(b1);
        l.a(b2);
        c c2 = (c)px.a(c1);
        l.a(c2);
    }

    static oz a(os os1)
    {
        return os1.l;
    }

    private void a(int i1, IInterface iinterface)
    {
        boolean flag = true;
        boolean flag1;
        boolean flag2;
        if (i1 == 3)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if (iinterface != null)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        if (flag1 != flag2)
        {
            flag = false;
        }
        com.google.android.gms.internal.px.b(flag);
        synchronized (f)
        {
            j = i1;
            g = iinterface;
        }
    }

    static void a(os os1, int i1, IInterface iinterface)
    {
        os1.a(i1, iinterface);
    }

    static boolean b(os os1)
    {
        return os1.c();
    }

    static ArrayList c(os os1)
    {
        return os1.h;
    }

    private boolean c()
    {
label0:
        {
            synchronized (f)
            {
                if (j == 4)
                {
                    break label0;
                }
            }
            return false;
        }
        a(1, ((IInterface) (null)));
        obj;
        JVM INSTR monitorexit ;
        return true;
        exception;
        throw exception;
    }

    static ox d(os os1)
    {
        return os1.i;
    }

    static Context e(os os1)
    {
        return os1.a;
    }

    static ox f(os os1)
    {
        os1.i = null;
        return null;
    }

    protected abstract IInterface a(IBinder ibinder);

    protected abstract String a();

    protected final void a(int i1, IBinder ibinder, Bundle bundle)
    {
        b.sendMessage(b.obtainMessage(1, new oy(this, i1, ibinder, bundle)));
    }

    protected abstract void a(pn pn, ow ow1);

    protected abstract String b();

    protected final void b(IBinder ibinder)
    {
        try
        {
            a(po.a(ibinder), new ow(this));
            return;
        }
        catch (DeadObjectException deadobjectexception)
        {
            b.sendMessage(b.obtainMessage(4, Integer.valueOf(1)));
        }
        catch (RemoteException remoteexception)
        {
            return;
        }
    }

    public final void d()
    {
        c = true;
        a(2, ((IInterface) (null)));
        int i1 = com.google.android.gms.common.f.a(a);
        if (i1 != 0)
        {
            a(1, ((IInterface) (null)));
            b.sendMessage(b.obtainMessage(3, Integer.valueOf(i1)));
        } else
        {
            if (i != null)
            {
                (new StringBuilder("Calling connect() while still connected, missing disconnect() for ")).append(a());
                pc.a(a).b(a(), i);
            }
            i = new ox(this);
            if (!pc.a(a).a(a(), i))
            {
                (new StringBuilder("unable to connect to service: ")).append(a());
                b.sendMessage(b.obtainMessage(3, Integer.valueOf(9)));
                return;
            }
        }
    }

    public final boolean e()
    {
        Object obj = f;
        obj;
        JVM INSTR monitorenter ;
        boolean flag;
        if (j == 3)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public final boolean f()
    {
        Object obj = f;
        obj;
        JVM INSTR monitorenter ;
        boolean flag;
        if (j == 2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public final void g()
    {
        c = false;
        ArrayList arraylist = h;
        arraylist;
        JVM INSTR monitorenter ;
        int i1 = h.size();
        int j1 = 0;
_L2:
        if (j1 >= i1)
        {
            break; /* Loop/switch isn't completed */
        }
        ((ou)h.get(j1)).c();
        j1++;
        if (true) goto _L2; else goto _L1
_L1:
        h.clear();
        arraylist;
        JVM INSTR monitorexit ;
        a(1, ((IInterface) (null)));
        if (i != null)
        {
            pc.a(a).b(a(), i);
            i = null;
        }
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final Context h()
    {
        return a;
    }

    public final IInterface i()
    {
        synchronized (f)
        {
            if (j == 4)
            {
                throw new DeadObjectException();
            }
            break MISSING_BLOCK_LABEL_28;
        }
        if (!e())
        {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
        boolean flag;
        IInterface iinterface;
        if (g != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        px.a(flag, "Client is connected but service is null");
        iinterface = g;
        obj;
        JVM INSTR monitorexit ;
        return iinterface;
    }

    public final boolean j()
    {
        return c;
    }

}
