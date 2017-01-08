// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.a.a;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package org.a.a:
//            b, d

public final class a extends ArrayList
    implements List, b
{

    public a()
    {
    }

    public static String a(List list)
    {
        if (list == null)
        {
            return "null";
        }
        boolean flag = true;
        StringBuffer stringbuffer = new StringBuffer();
        Iterator iterator = list.iterator();
        stringbuffer.append('[');
        while (iterator.hasNext()) 
        {
            Object obj;
            if (flag)
            {
                flag = false;
            } else
            {
                stringbuffer.append(',');
            }
            obj = iterator.next();
            if (obj == null)
            {
                stringbuffer.append("null");
            } else
            {
                stringbuffer.append(d.a(obj));
            }
        }
        stringbuffer.append(']');
        return stringbuffer.toString();
    }

    public final String a()
    {
        return a(((List) (this)));
    }

    public final String toString()
    {
        return a(this);
    }
}
