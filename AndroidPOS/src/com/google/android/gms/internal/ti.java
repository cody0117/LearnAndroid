// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            td, tg, tm

final class ti
{

    private tg a;
    private Object b;
    private List c;

    ti()
    {
        c = new ArrayList();
    }

    private byte[] b()
    {
        byte abyte0[] = new byte[a()];
        a(td.a(abyte0));
        return abyte0;
    }

    final int a()
    {
        int i;
        if (b != null)
        {
            i = a.a(b);
        } else
        {
            Iterator iterator = c.iterator();
            i = 0;
            while (iterator.hasNext()) 
            {
                tm tm1 = (tm)iterator.next();
                i += 0 + td.e(tm1.a) + tm1.b.length;
            }
        }
        return i;
    }

    final void a(td td1)
    {
        if (b != null)
        {
            a.a(b, td1);
        } else
        {
            Iterator iterator = c.iterator();
            while (iterator.hasNext()) 
            {
                tm tm1 = (tm)iterator.next();
                td1.d(tm1.a);
                td1.b(tm1.b);
            }
        }
    }

    public final boolean equals(Object obj)
    {
        boolean flag1;
        if (obj == this)
        {
            flag1 = true;
        } else
        {
            boolean flag = obj instanceof ti;
            flag1 = false;
            if (flag)
            {
                ti ti1 = (ti)obj;
                if (b != null && ti1.b != null)
                {
                    tg tg1 = a;
                    tg tg2 = ti1.a;
                    flag1 = false;
                    if (tg1 == tg2)
                    {
                        if (!a.b.isArray())
                        {
                            return b.equals(ti1.b);
                        }
                        if (b instanceof byte[])
                        {
                            return Arrays.equals((byte[])b, (byte[])ti1.b);
                        }
                        if (b instanceof int[])
                        {
                            return Arrays.equals((int[])b, (int[])ti1.b);
                        }
                        if (b instanceof long[])
                        {
                            return Arrays.equals((long[])b, (long[])ti1.b);
                        }
                        if (b instanceof float[])
                        {
                            return Arrays.equals((float[])b, (float[])ti1.b);
                        }
                        if (b instanceof double[])
                        {
                            return Arrays.equals((double[])b, (double[])ti1.b);
                        }
                        if (b instanceof boolean[])
                        {
                            return Arrays.equals((boolean[])b, (boolean[])ti1.b);
                        } else
                        {
                            return Arrays.deepEquals((Object[])b, (Object[])ti1.b);
                        }
                    }
                } else
                {
                    if (c != null && ti1.c != null)
                    {
                        return c.equals(ti1.c);
                    }
                    boolean flag2;
                    try
                    {
                        flag2 = Arrays.equals(b(), ti1.b());
                    }
                    catch (IOException ioexception)
                    {
                        throw new IllegalStateException(ioexception);
                    }
                    return flag2;
                }
            }
        }
        return flag1;
    }

    public final int hashCode()
    {
        int i;
        try
        {
            i = Arrays.hashCode(b());
        }
        catch (IOException ioexception)
        {
            throw new IllegalStateException(ioexception);
        }
        return i + 527;
    }
}
