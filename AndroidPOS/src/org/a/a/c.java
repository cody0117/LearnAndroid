// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.a.a;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package org.a.a:
//            b, d

public final class c extends HashMap
    implements Map, b
{

    public c()
    {
    }

    public static String a(Map map)
    {
        if (map == null)
        {
            return "null";
        }
        StringBuffer stringbuffer = new StringBuffer();
        boolean flag = true;
        Iterator iterator = map.entrySet().iterator();
        stringbuffer.append('{');
        while (iterator.hasNext()) 
        {
            boolean flag1;
            java.util.Map.Entry entry;
            String s;
            Object obj;
            if (flag)
            {
                flag1 = false;
            } else
            {
                stringbuffer.append(',');
                flag1 = flag;
            }
            entry = (java.util.Map.Entry)iterator.next();
            s = String.valueOf(entry.getKey());
            obj = entry.getValue();
            stringbuffer.append('"');
            if (s == null)
            {
                stringbuffer.append("null");
            } else
            {
                d.a(s, stringbuffer);
            }
            stringbuffer.append('"').append(':');
            stringbuffer.append(d.a(obj));
            flag = flag1;
        }
        stringbuffer.append('}');
        return stringbuffer.toString();
    }

    public final String a()
    {
        return a(((Map) (this)));
    }

    public final String toString()
    {
        return a(this);
    }
}
