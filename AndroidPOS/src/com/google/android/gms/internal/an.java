// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.PriorityQueue;

// Referenced classes of package com.google.android.gms.internal:
//            ao, al

public final class an
{

    private static long a(long l, int i)
    {
        if (i == 0)
        {
            l = 1L;
        } else
        if (i != 1)
        {
            if (i % 2 == 0)
            {
                return a((l * l) % 0x4000ffffL, i / 2) % 0x4000ffffL;
            } else
            {
                return (l * (a((l * l) % 0x4000ffffL, i / 2) % 0x4000ffffL)) % 0x4000ffffL;
            }
        }
        return l;
    }

    private static String a(String as[], int i, int j)
    {
        if (as.length < i + j)
        {
            return "";
        }
        StringBuffer stringbuffer = new StringBuffer();
        for (int k = i; k < -1 + (i + j); k++)
        {
            stringbuffer.append(as[k]);
            stringbuffer.append(' ');
        }

        stringbuffer.append(as[-1 + (i + j)]);
        return stringbuffer.toString();
    }

    private static void a(int i, long l, String s, PriorityQueue priorityqueue)
    {
        ao ao1;
        ao1 = new ao(l, s);
        break MISSING_BLOCK_LABEL_11;
        if ((priorityqueue.size() != i || ((ao)priorityqueue.peek()).a <= ao1.a) && !priorityqueue.contains(ao1))
        {
            priorityqueue.add(ao1);
            if (priorityqueue.size() > i)
            {
                priorityqueue.poll();
                return;
            }
        }
        return;
    }

    public static void a(String as[], int i, int j, PriorityQueue priorityqueue)
    {
        long l = (0x7fffffffL + (long)al.a(as[0])) % 0x4000ffffL;
        for (int k = 1; k < j + 0; k++)
        {
            l = ((l * 0x1001fffL) % 0x4000ffffL + (0x7fffffffL + (long)al.a(as[k])) % 0x4000ffffL) % 0x4000ffffL;
        }

        a(i, l, a(as, 0, j), priorityqueue);
        long l1 = a(0x1001fffL, j - 1);
        for (int i1 = 1; i1 < 1 + (as.length - j); i1++)
        {
            int j1 = al.a(as[i1 - 1]);
            int k1 = al.a(as[-1 + (i1 + j)]);
            long l2 = (l1 * ((0x7fffffffL + (long)j1) % 0x4000ffffL)) % 0x4000ffffL;
            l = ((0x1001fffL * (((l + 0x4000ffffL) - l2) % 0x4000ffffL)) % 0x4000ffffL + (0x7fffffffL + (long)k1) % 0x4000ffffL) % 0x4000ffffL;
            a(i, l, a(as, i1, j), priorityqueue);
        }

    }
}
