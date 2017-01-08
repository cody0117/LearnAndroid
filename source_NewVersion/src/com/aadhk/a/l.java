// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.a;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.a:
//            o, m

public final class l
{

    Map a;
    Map b;

    l()
    {
        a = new HashMap();
        b = new HashMap();
    }

    public final o a(String s)
    {
        return (o)a.get(s);
    }

    public final m b(String s)
    {
        return (m)b.get(s);
    }

    final List c(String s)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = b.values().iterator();
        do
        {
            m m1;
            do
            {
                if (!iterator.hasNext())
                {
                    return arraylist;
                }
                m1 = (m)iterator.next();
            } while (!m1.a.equals(s));
            arraylist.add(m1.d);
        } while (true);
    }
}
