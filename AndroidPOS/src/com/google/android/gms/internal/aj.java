// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.util.Base64OutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.PriorityQueue;

// Referenced classes of package com.google.android.gms.internal:
//            am, ak, al, an, 
//            ao, ai

public final class aj
{

    private final int a = 6;
    private final int b;
    private final ai c = new am();
    private Base64OutputStream d;
    private ByteArrayOutputStream e;

    public aj(int i)
    {
        b = i;
    }

    final String a(String s)
    {
        String as[] = s.split("\n");
        if (as == null || as.length == 0)
        {
            return "";
        }
        e = new ByteArrayOutputStream();
        d = new Base64OutputStream(e, 10);
        PriorityQueue priorityqueue = new PriorityQueue(b, new ak(this));
        for (int i = 0; i < as.length; i++)
        {
            String as1[] = al.b(as[i]);
            if (as1.length >= a)
            {
                an.a(as1, b, a, priorityqueue);
            }
        }

        for (Iterator iterator = priorityqueue.iterator(); iterator.hasNext();)
        {
            ao ao1 = (ao)iterator.next();
            try
            {
                d.write(c.a(ao1.b));
            }
            catch (IOException ioexception1) { }
        }

        String s1;
        try
        {
            d.flush();
            d.close();
            s1 = e.toString();
        }
        catch (IOException ioexception)
        {
            return "";
        }
        return s1;
    }
}
