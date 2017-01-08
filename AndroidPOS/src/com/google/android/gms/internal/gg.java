// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            lk, gf, gm, gk, 
//            go, me, gh, ho, 
//            gq

public final class gg extends lk
    implements ServiceConnection
{

    private final Object a = new Object();
    private boolean b;
    private Context c;
    private ho d;
    private gf e;
    private gm f;
    private List g;
    private gq h;

    public gg(Context context, ho ho, gq gq)
    {
        b = false;
        g = null;
        c = context;
        d = ho;
        h = gq;
        e = new gf(context);
        f = gm.a(c);
        g = f.a();
    }

    static gq a(gg gg1)
    {
        return gg1.h;
    }

    private void a(long l)
    {
        do
        {
            b(l);
        } while (!b);
    }

    static Context b(gg gg1)
    {
        return gg1.c;
    }

    private boolean b(long l)
    {
        if (60000L - (SystemClock.elapsedRealtime() - l) <= 0L)
        {
            return false;
        }
        try
        {
            Object _tmp = a;
        }
        catch (InterruptedException interruptedexception) { }
        return true;
    }

    static ho c(gg gg1)
    {
        return gg1.d;
    }

    public final void a()
    {
        synchronized (a)
        {
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage("com.android.vending");
            c.bindService(intent, this, 1);
            a(SystemClock.elapsedRealtime());
            c.unbindService(this);
            e.a();
        }
    }

    public final void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        e.a(ibinder);
        if (g.isEmpty()) goto _L2; else goto _L1
_L1:
        HashMap hashmap;
        hashmap = new HashMap();
        gk gk2;
        for (Iterator iterator = g.iterator(); iterator.hasNext(); hashmap.put(gk2.c, gk2))
        {
            gk2 = (gk)iterator.next();
        }

          goto _L3
        Exception exception;
        exception;
        throw exception;
_L3:
        String s = null;
_L9:
        Bundle bundle = e.b(c.getPackageName(), s);
        if (bundle == null) goto _L5; else goto _L4
_L4:
        if (go.a(bundle) != 0) goto _L5; else goto _L6
_L6:
        ArrayList arraylist;
        ArrayList arraylist1;
        ArrayList arraylist2;
        String s2;
        arraylist = bundle.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
        arraylist1 = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        arraylist2 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        s2 = bundle.getString("INAPP_CONTINUATION_TOKEN");
        int i = 0;
_L10:
        if (i < arraylist.size())
        {
            if (hashmap.containsKey(arraylist.get(i)))
            {
                String s3 = (String)arraylist.get(i);
                String s4 = (String)arraylist1.get(i);
                String s5 = (String)arraylist2.get(i);
                gk gk1 = (gk)hashmap.get(s3);
                String s6 = go.a(s4);
                if (gk1.b.equals(s6))
                {
                    Intent intent = new Intent();
                    intent.putExtra("RESPONSE_CODE", 0);
                    intent.putExtra("INAPP_PURCHASE_DATA", s4);
                    intent.putExtra("INAPP_DATA_SIGNATURE", s5);
                    me.a.post(new gh(this, gk1, intent));
                    hashmap.remove(s3);
                }
            }
            break MISSING_BLOCK_LABEL_413;
        }
        if (s2 == null) goto _L5; else goto _L7
_L7:
        if (!hashmap.isEmpty()) goto _L8; else goto _L5
_L5:
        String s1;
        for (Iterator iterator1 = hashmap.keySet().iterator(); iterator1.hasNext(); f.a((gk)hashmap.get(s1)))
        {
            s1 = (String)iterator1.next();
        }

_L2:
        b = true;
        a;
        obj;
        JVM INSTR monitorexit ;
        return;
_L8:
        s = s2;
          goto _L9
        i++;
          goto _L10
    }

    public final void onServiceDisconnected(ComponentName componentname)
    {
        e.a();
    }

    public final void u_()
    {
        synchronized (a)
        {
            c.unbindService(this);
            e.a();
        }
    }
}
