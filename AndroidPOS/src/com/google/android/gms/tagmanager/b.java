// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.google.android.gms.tagmanager:
//            c, d, g, x, 
//            e, f

public final class b
{

    public static final Object a = new Object();
    static final String b[] = "gtm.lifetime".toString().split("\\.");
    private static final Pattern c = Pattern.compile("(\\d+)\\s*([smhd]?)");
    private final ConcurrentHashMap d;
    private final Map e;
    private final ReentrantLock f;
    private final LinkedList g;
    private final g h;
    private final CountDownLatch i;

    b()
    {
        this(((g) (new c())));
    }

    b(g g1)
    {
        h = g1;
        d = new ConcurrentHashMap();
        e = new HashMap();
        f = new ReentrantLock();
        g = new LinkedList();
        i = new CountDownLatch(1);
        h.a(new d(this));
    }

    private static Long a(String s)
    {
        Matcher matcher;
        matcher = c.matcher(s);
        if (!matcher.matches())
        {
            (new StringBuilder("unknown _lifetime: ")).append(s);
            x.d();
            return null;
        }
        long l1 = Long.parseLong(matcher.group(1));
        long l = l1;
_L2:
        if (l <= 0L)
        {
            (new StringBuilder("non-positive _lifetime: ")).append(s);
            x.d();
            return null;
        }
        break; /* Loop/switch isn't completed */
        NumberFormatException numberformatexception;
        numberformatexception;
        (new StringBuilder("illegal number in _lifetime value: ")).append(s);
        l = 0L;
        x.c();
        if (true) goto _L2; else goto _L1
_L1:
        String s1 = matcher.group(2);
        if (s1.length() == 0)
        {
            return Long.valueOf(l);
        }
        switch (s1.charAt(0))
        {
        default:
            (new StringBuilder("unknown units in _lifetime: ")).append(s);
            x.c();
            return null;

        case 115: // 's'
            return Long.valueOf(l * 1000L);

        case 109: // 'm'
            return Long.valueOf(60L * (l * 1000L));

        case 104: // 'h'
            return Long.valueOf(60L * (60L * (l * 1000L)));

        case 100: // 'd'
            return Long.valueOf(24L * (60L * (60L * (l * 1000L))));
        }
    }

    static Map a(String s, Object obj)
    {
        HashMap hashmap = new HashMap();
        String as[] = s.toString().split("\\.");
        int j = 0;
        HashMap hashmap1;
        HashMap hashmap2;
        for (hashmap1 = hashmap; j < -1 + as.length; hashmap1 = hashmap2)
        {
            hashmap2 = new HashMap();
            hashmap1.put(as[j], hashmap2);
            j++;
        }

        hashmap1.put(as[-1 + as.length], obj);
        return hashmap;
    }

    static CountDownLatch a(b b1)
    {
        return b1.i;
    }

    static void a(b b1, Map map)
    {
        b1.b(map);
    }

    private void a(List list, List list1)
    {
        for (; list1.size() < list.size(); list1.add(null)) { }
        int j = 0;
        while (j < list.size()) 
        {
            Object obj = list.get(j);
            if (obj instanceof List)
            {
                if (!(list1.get(j) instanceof List))
                {
                    list1.set(j, new ArrayList());
                }
                a((List)obj, (List)list1.get(j));
            } else
            if (obj instanceof Map)
            {
                if (!(list1.get(j) instanceof Map))
                {
                    list1.set(j, new HashMap());
                }
                a((Map)obj, (Map)list1.get(j));
            } else
            if (obj != a)
            {
                list1.set(j, obj);
            }
            j++;
        }
    }

    private void a(Map map, String s, Collection collection)
    {
        Iterator iterator = map.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            StringBuilder stringbuilder = (new StringBuilder()).append(s);
            String s1;
            String s2;
            if (s.length() == 0)
            {
                s1 = "";
            } else
            {
                s1 = ".";
            }
            s2 = stringbuilder.append(s1).append((String)entry.getKey()).toString();
            if (entry.getValue() instanceof Map)
            {
                a((Map)entry.getValue(), s2, collection);
            } else
            if (!s2.equals("gtm.lifetime"))
            {
                collection.add(new e(s2, entry.getValue()));
            }
        } while (true);
    }

    private void a(Map map, Map map1)
    {
        for (Iterator iterator = map.keySet().iterator(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            Object obj = map.get(s);
            if (obj instanceof List)
            {
                if (!(map1.get(s) instanceof List))
                {
                    map1.put(s, new ArrayList());
                }
                a((List)obj, (List)map1.get(s));
            } else
            if (obj instanceof Map)
            {
                if (!(map1.get(s) instanceof Map))
                {
                    map1.put(s, new HashMap());
                }
                a((Map)obj, (Map)map1.get(s));
            } else
            {
                map1.put(s, obj);
            }
        }

    }

    private void b(Map map)
    {
        f.lock();
        g.offer(map);
        if (f.getHoldCount() != 1) goto _L2; else goto _L1
_L1:
        int j = 0;
_L10:
        Map map1 = (Map)g.poll();
        if (map1 == null) goto _L2; else goto _L3
_L3:
        Map map2 = e;
        map2;
        JVM INSTR monitorenter ;
        String s;
        for (Iterator iterator = map1.keySet().iterator(); iterator.hasNext(); a(a(s, map1.get(s)), e))
        {
            s = (String)iterator.next();
        }

        break MISSING_BLOCK_LABEL_135;
        Exception exception1;
        exception1;
        map2;
        JVM INSTR monitorexit ;
        throw exception1;
        Exception exception;
        exception;
        f.unlock();
        throw exception;
        map2;
        JVM INSTR monitorexit ;
        for (Iterator iterator1 = d.keySet().iterator(); iterator1.hasNext(); ((f)iterator1.next()).a(map1)) { }
        int k = j + 1;
        if (k <= 500) goto _L5; else goto _L4
_L4:
        g.clear();
        throw new RuntimeException("Seems like an infinite loop of pushing to the data layer");
_L2:
        Object obj = c(map);
        if (obj != null) goto _L7; else goto _L6
_L6:
        Long long2 = null;
_L8:
        if (long2 == null)
        {
            break MISSING_BLOCK_LABEL_277;
        }
        ArrayList arraylist = new ArrayList();
        a(map, "", arraylist);
        arraylist.remove("gtm.lifetime");
        h.a(arraylist, long2.longValue());
        f.unlock();
        return;
_L7:
        Long long1 = a(obj.toString());
        long2 = long1;
        if (true) goto _L8; else goto _L5
_L5:
        j = k;
        if (true) goto _L10; else goto _L9
_L9:
    }

    private static Object c(Map map)
    {
        String as[] = b;
        int j = as.length;
        int k = 0;
        Object obj = map;
        do
        {
            String s;
label0:
            {
                if (k < j)
                {
                    s = as[k];
                    if (obj instanceof Map)
                    {
                        break label0;
                    }
                    obj = null;
                }
                return obj;
            }
            Object obj1 = ((Map)obj).get(s);
            k++;
            obj = obj1;
        } while (true);
    }

    final void a(f f1)
    {
        d.put(f1, Integer.valueOf(0));
    }

    public final void a(Map map)
    {
        try
        {
            i.await();
        }
        catch (InterruptedException interruptedexception)
        {
            x.c();
        }
        b(map);
    }

    public final String toString()
    {
        Map map = e;
        map;
        JVM INSTR monitorenter ;
        StringBuilder stringbuilder;
        stringbuilder = new StringBuilder();
        Object aobj[];
        for (Iterator iterator = e.entrySet().iterator(); iterator.hasNext(); stringbuilder.append(String.format("{\n\tKey: %s\n\tValue: %s\n}\n", aobj)))
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            aobj = new Object[2];
            aobj[0] = entry.getKey();
            aobj[1] = entry.getValue();
        }

        break MISSING_BLOCK_LABEL_102;
        Exception exception;
        exception;
        throw exception;
        String s = stringbuilder.toString();
        map;
        JVM INSTR monitorexit ;
        return s;
    }

}
