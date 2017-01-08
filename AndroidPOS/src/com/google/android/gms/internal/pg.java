// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.HashSet;
import java.util.Iterator;

// Referenced classes of package com.google.android.gms.internal:
//            pe, pc, ox

public final class pg
    implements ServiceConnection
{

    final pe a;

    public pg(pe pe1)
    {
        a = pe1;
        super();
    }

    public final void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        java.util.HashMap hashmap = pc.a(a.a);
        hashmap;
        JVM INSTR monitorenter ;
        pe.a(a, ibinder);
        pe.a(a, componentname);
        for (Iterator iterator = pe.a(a).iterator(); iterator.hasNext(); ((ox)iterator.next()).onServiceConnected(componentname, ibinder)) { }
        break MISSING_BLOCK_LABEL_78;
        Exception exception;
        exception;
        throw exception;
        pe.a(a, 1);
        hashmap;
        JVM INSTR monitorexit ;
    }

    public final void onServiceDisconnected(ComponentName componentname)
    {
        java.util.HashMap hashmap = pc.a(a.a);
        hashmap;
        JVM INSTR monitorenter ;
        pe.a(a, null);
        pe.a(a, componentname);
        for (Iterator iterator = pe.a(a).iterator(); iterator.hasNext(); ((ox)iterator.next()).onServiceDisconnected(componentname)) { }
        break MISSING_BLOCK_LABEL_75;
        Exception exception;
        exception;
        throw exception;
        pe.a(a, 2);
        hashmap;
        JVM INSTR monitorexit ;
    }
}
