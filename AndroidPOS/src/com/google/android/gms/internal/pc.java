// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import java.util.HashMap;

// Referenced classes of package com.google.android.gms.internal:
//            pe, ox

public final class pc
    implements android.os.Handler.Callback
{

    private static final Object a = new Object();
    private static pc b;
    private final Context c;
    private final HashMap d = new HashMap();
    private final Handler e;

    private pc(Context context)
    {
        e = new Handler(context.getMainLooper(), this);
        c = context.getApplicationContext();
    }

    public static pc a(Context context)
    {
        synchronized (a)
        {
            if (b == null)
            {
                b = new pc(context.getApplicationContext());
            }
        }
        return b;
    }

    static HashMap a(pc pc1)
    {
        return pc1.d;
    }

    static Context b(pc pc1)
    {
        return pc1.c;
    }

    public final boolean a(String s, ox ox1)
    {
        HashMap hashmap = d;
        hashmap;
        JVM INSTR monitorenter ;
        pe pe1 = (pe)d.get(s);
        if (pe1 != null) goto _L2; else goto _L1
_L1:
        pe1 = new pe(this, s);
        pe1.a(ox1);
        pe1.a();
        d.put(s, pe1);
_L7:
        boolean flag = pe1.d();
        hashmap;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        e.removeMessages(0, pe1);
        if (pe1.c(ox1))
        {
            throw new IllegalStateException((new StringBuilder("Trying to bind a GmsServiceConnection that was already connected before.  startServiceAction=")).append(s).toString());
        }
        break MISSING_BLOCK_LABEL_120;
        Exception exception;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
        pe1.a(ox1);
        pe1.e();
        JVM INSTR tableswitch 1 2: default 177
    //                   1 152
    //                   2 169;
           goto _L3 _L4 _L5
_L3:
        if (true) goto _L7; else goto _L6
_L6:
_L4:
        ox1.onServiceConnected(pe1.h(), pe1.g());
          goto _L7
_L5:
        pe1.a();
          goto _L7
    }

    public final void b(String s, ox ox1)
    {
        HashMap hashmap = d;
        hashmap;
        JVM INSTR monitorenter ;
        pe pe1 = (pe)d.get(s);
        if (pe1 != null)
        {
            break MISSING_BLOCK_LABEL_56;
        }
        throw new IllegalStateException((new StringBuilder("Nonexistent connection status for service action: ")).append(s).toString());
        Exception exception;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
        if (!pe1.c(ox1))
        {
            throw new IllegalStateException((new StringBuilder("Trying to unbind a GmsServiceConnection  that was not bound before.  startServiceAction=")).append(s).toString());
        }
        pe1.b(ox1);
        if (pe1.f())
        {
            Message message = e.obtainMessage(0, pe1);
            e.sendMessageDelayed(message, 5000L);
        }
        hashmap;
        JVM INSTR monitorexit ;
    }

    public final boolean handleMessage(Message message)
    {
        pe pe1;
        switch (message.what)
        {
        default:
            return false;

        case 0: // '\0'
            pe1 = (pe)message.obj;
            break;
        }
        synchronized (d)
        {
            if (pe1.f())
            {
                pe1.b();
                d.remove(pe1.c());
            }
        }
        return true;
    }

}
