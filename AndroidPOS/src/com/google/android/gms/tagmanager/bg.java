// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.el;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.android.gms.tagmanager:
//            bf, x

final class bg
{

    private static final Object a = null;
    private static Long b = new Long(0L);
    private static Double c = new Double(0.0D);
    private static bf d = bf.a();
    private static String e;
    private static Boolean f = new Boolean(false);
    private static List g = new ArrayList(0);
    private static Map h = new HashMap();
    private static el i;

    public static el a()
    {
        return i;
    }

    public static el a(Object obj)
    {
        int j;
        int k;
        el el1;
        j = 1;
        k = 0;
        el1 = new el();
        if (obj instanceof el)
        {
            return (el)obj;
        }
        if (!(obj instanceof String)) goto _L2; else goto _L1
_L1:
        el1.a = j;
        el1.b = (String)obj;
_L4:
        el1.l = k;
        return el1;
_L2:
        if (obj instanceof List)
        {
            el1.a = 2;
            List list = (List)obj;
            ArrayList arraylist2 = new ArrayList(list.size());
            Iterator iterator1 = list.iterator();
            int k1 = 0;
            while (iterator1.hasNext()) 
            {
                el el4 = a(iterator1.next());
                if (el4 == i)
                {
                    return i;
                }
                int i2;
                if (k1 != 0 || el4.l)
                {
                    i2 = j;
                } else
                {
                    i2 = 0;
                }
                arraylist2.add(el4);
                k1 = i2;
            }
            el1.c = (el[])arraylist2.toArray(new el[0]);
            k = k1;
            continue; /* Loop/switch isn't completed */
        }
        if (obj instanceof Map)
        {
            el1.a = 3;
            Set set = ((Map)obj).entrySet();
            ArrayList arraylist = new ArrayList(set.size());
            ArrayList arraylist1 = new ArrayList(set.size());
            Iterator iterator = set.iterator();
            int i1 = 0;
            while (iterator.hasNext()) 
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                el el2 = a(entry.getKey());
                el el3 = a(entry.getValue());
                if (el2 == i || el3 == i)
                {
                    return i;
                }
                int j1;
                if (i1 != 0 || el2.l || el3.l)
                {
                    j1 = j;
                } else
                {
                    j1 = 0;
                }
                arraylist.add(el2);
                arraylist1.add(el3);
                i1 = j1;
            }
            el1.d = (el[])arraylist.toArray(new el[0]);
            el1.e = (el[])arraylist1.toArray(new el[0]);
            k = i1;
            continue; /* Loop/switch isn't completed */
        }
        int l;
        if ((obj instanceof Double) || (obj instanceof Float) || (obj instanceof bf) && ((bf)obj).b())
        {
            l = j;
        } else
        {
            l = 0;
        }
        if (l != 0)
        {
            el1.a = j;
            el1.b = obj.toString();
            k = 0;
            continue; /* Loop/switch isn't completed */
        }
        if (!(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Integer) && !(obj instanceof Long) && (!(obj instanceof bf) || !((bf)obj).c()))
        {
            j = 0;
        }
        if (j != 0)
        {
            el1.a = 6;
            long l1;
            if (obj instanceof Number)
            {
                l1 = ((Number)obj).longValue();
            } else
            {
                x.a();
                l1 = 0L;
            }
            el1.h = l1;
            k = 0;
            continue; /* Loop/switch isn't completed */
        }
        if (!(obj instanceof Boolean))
        {
            break; /* Loop/switch isn't completed */
        }
        el1.a = 8;
        el1.i = ((Boolean)obj).booleanValue();
        k = 0;
        if (true) goto _L4; else goto _L3
_L3:
        StringBuilder stringbuilder = new StringBuilder("Converting to Value from unknown object type: ");
        String s;
        if (obj == null)
        {
            s = "null";
        } else
        {
            s = obj.getClass().toString();
        }
        stringbuilder.append(s);
        x.a();
        return i;
    }

    public static String a(el el1)
    {
        return b(c(el1));
    }

    public static Boolean b(el el1)
    {
        Object obj = c(el1);
        if (obj instanceof Boolean)
        {
            return (Boolean)obj;
        }
        String s = b(obj);
        if ("true".equalsIgnoreCase(s))
        {
            return Boolean.TRUE;
        }
        if ("false".equalsIgnoreCase(s))
        {
            return Boolean.FALSE;
        } else
        {
            return f;
        }
    }

    private static String b(Object obj)
    {
        if (obj == null)
        {
            return e;
        } else
        {
            return obj.toString();
        }
    }

    public static Object c(el el1)
    {
        int j = 0;
        if (el1 == null)
        {
            return a;
        }
        switch (el1.a)
        {
        default:
            (new StringBuilder("Failed to convert a value of type: ")).append(el1.a);
            x.a();
            return a;

        case 1: // '\001'
            return el1.b;

        case 2: // '\002'
            ArrayList arraylist = new ArrayList(el1.c.length);
            el ael1[] = el1.c;
            for (int l = ael1.length; j < l; j++)
            {
                Object obj2 = c(ael1[j]);
                if (obj2 == a)
                {
                    return a;
                }
                arraylist.add(obj2);
            }

            return arraylist;

        case 3: // '\003'
            if (el1.d.length != el1.e.length)
            {
                (new StringBuilder("Converting an invalid value to object: ")).append(el1.toString());
                x.a();
                return a;
            }
            HashMap hashmap = new HashMap(el1.e.length);
            for (; j < el1.d.length; j++)
            {
                Object obj = c(el1.d[j]);
                Object obj1 = c(el1.e[j]);
                if (obj == a || obj1 == a)
                {
                    return a;
                }
                hashmap.put(obj, obj1);
            }

            return hashmap;

        case 4: // '\004'
            x.a();
            return a;

        case 5: // '\005'
            x.a();
            return a;

        case 6: // '\006'
            return Long.valueOf(el1.h);

        case 7: // '\007'
            StringBuffer stringbuffer = new StringBuffer();
            el ael[] = el1.j;
            for (int k = ael.length; j < k; j++)
            {
                String s = a(ael[j]);
                if (s == e)
                {
                    return a;
                }
                stringbuffer.append(s);
            }

            return stringbuffer.toString();

        case 8: // '\b'
            return Boolean.valueOf(el1.i);
        }
    }

    static 
    {
        e = new String("");
        i = a(e);
    }
}
