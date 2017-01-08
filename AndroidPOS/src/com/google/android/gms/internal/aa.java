// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;

// Referenced classes of package com.google.android.gms.internal:
//            aj

public final class aa
{

    private final int a;
    private final int b;
    private final int c;
    private final aj d;
    private final Object e = new Object();
    private ArrayList f;
    private int g;
    private int h;
    private int i;
    private int j;
    private String k;

    public aa(int l, int i1, int j1, int k1)
    {
        f = new ArrayList();
        g = 0;
        h = 0;
        i = 0;
        k = "";
        a = l;
        b = i1;
        c = j1;
        d = new aj(k1);
    }

    private static String a(ArrayList arraylist)
    {
        String s;
        if (arraylist.isEmpty())
        {
            s = "";
        } else
        {
            StringBuffer stringbuffer = new StringBuffer();
            Iterator iterator = arraylist.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                stringbuffer.append((String)iterator.next());
                stringbuffer.append(' ');
            } while (stringbuffer.length() <= 200);
            stringbuffer.deleteCharAt(-1 + stringbuffer.length());
            s = stringbuffer.toString();
            if (s.length() >= 200)
            {
                return s.substring(0, 200);
            }
        }
        return s;
    }

    private void c(String s)
    {
        if (s == null || s.length() < c)
        {
            return;
        }
        synchronized (e)
        {
            f.add(s);
            g = g + s.length();
        }
    }

    public final void a(int l)
    {
        h = l;
    }

    public final void a(String s)
    {
        c(s);
        synchronized (e)
        {
            int _tmp = i;
            f();
        }
    }

    public final boolean a()
    {
        Object obj = e;
        obj;
        JVM INSTR monitorenter ;
        boolean flag;
        if (i == 0)
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

    public final String b()
    {
        return k;
    }

    public final void b(String s)
    {
        c(s);
    }

    public final void c()
    {
        synchronized (e)
        {
            j = -100 + j;
        }
    }

    public final void d()
    {
        synchronized (e)
        {
            i = -1 + i;
        }
    }

    public final void e()
    {
        synchronized (e)
        {
            i = 1 + i;
        }
    }

    public final boolean equals(Object obj)
    {
        if (obj instanceof aa)
        {
            if (obj == this)
            {
                return true;
            }
            aa aa1 = (aa)obj;
            if (aa1.k != null && aa1.k.equals(k))
            {
                return true;
            }
        }
        return false;
    }

    public final void f()
    {
        Object obj = e;
        obj;
        JVM INSTR monitorenter ;
        aj aj1;
        StringBuffer stringbuffer;
        int l = g;
        int i1 = h;
        int j1 = l * a + i1 * b;
        if (j1 <= j)
        {
            break MISSING_BLOCK_LABEL_139;
        }
        j = j1;
        aj1 = d;
        ArrayList arraylist = f;
        stringbuffer = new StringBuffer();
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); stringbuffer.append('\n'))
        {
            stringbuffer.append(((String)iterator.next()).toLowerCase(Locale.US));
        }

        break MISSING_BLOCK_LABEL_125;
        Exception exception;
        exception;
        throw exception;
        k = aj1.a(stringbuffer.toString());
        obj;
        JVM INSTR monitorexit ;
    }

    public final int g()
    {
        return j;
    }

    final int h()
    {
        return g;
    }

    public final int hashCode()
    {
        return k.hashCode();
    }

    public final String toString()
    {
        return (new StringBuilder("ActivityContent fetchId: ")).append(h).append(" score:").append(j).append(" total_length:").append(g).append("\n text: ").append(a(f)).append("\n signture: ").append(k).toString();
    }
}
