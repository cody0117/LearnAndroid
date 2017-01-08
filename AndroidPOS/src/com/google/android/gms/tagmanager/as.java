// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.au;
import com.google.android.gms.internal.el;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.android.gms.tagmanager:
//            ah, bg, x, ao, 
//            bh, bi, aq, ap, 
//            an, bj, aw, q, 
//            ax, z, r, ak, 
//            am, at, ar, av, 
//            ag, b, p, bn, 
//            au

final class as
{

    private static final ah a = new ah(bg.a(), true);
    private final q b;
    private final Map c;
    private final Map d;
    private final Map e;
    private final bj f;
    private final bj g;
    private final Set h;
    private final b i;
    private final Map j;
    private volatile String k;
    private int l;

    private ah a(el el1, Set set, bh bh1)
    {
        if (!el1.l)
        {
            return new ah(el1, true);
        }
        el el2;
        int i1;
        switch (el1.a)
        {
        case 5: // '\005'
        case 6: // '\006'
        default:
            (new StringBuilder("Unknown type: ")).append(el1.a);
            x.a();
            return a;

        case 2: // '\002'
            el el4 = ao.a(el1);
            el4.c = new el[el1.c.length];
            for (int k1 = 0; k1 < el1.c.length; k1++)
            {
                ah ah5 = a(el1.c[k1], set, bh1.a());
                if (ah5 == a)
                {
                    return a;
                }
                el4.c[k1] = (el)ah5.a();
            }

            return new ah(el4, false);

        case 3: // '\003'
            el el3 = ao.a(el1);
            if (el1.d.length != el1.e.length)
            {
                (new StringBuilder("Invalid serving value: ")).append(el1.toString());
                x.a();
                return a;
            }
            el3.d = new el[el1.d.length];
            el3.e = new el[el1.d.length];
            for (int j1 = 0; j1 < el1.d.length; j1++)
            {
                ah ah3 = a(el1.d[j1], set, bh1.b());
                ah ah4 = a(el1.e[j1], set, bh1.c());
                if (ah3 == a || ah4 == a)
                {
                    return a;
                }
                el3.d[j1] = (el)ah3.a();
                el3.e[j1] = (el)ah4.a();
            }

            return new ah(el3, false);

        case 4: // '\004'
            if (set.contains(el1.f))
            {
                (new StringBuilder("Macro cycle detected.  Current macro reference: ")).append(el1.f).append(".  Previous macro references: ").append(set.toString()).append(".");
                x.a();
                return a;
            } else
            {
                set.add(el1.f);
                ah ah2 = bi.a(a(el1.f, set, bh1.e()), el1.k);
                set.remove(el1.f);
                return ah2;
            }

        case 7: // '\007'
            el2 = ao.a(el1);
            el2.j = new el[el1.j.length];
            i1 = 0;
            break;
        }
        for (; i1 < el1.j.length; i1++)
        {
            ah ah1 = a(el1.j[i1], set, bh1.d());
            if (ah1 == a)
            {
                return a;
            }
            el2.j[i1] = (el)ah1.a();
        }

        return new ah(el2, false);
    }

    private ah a(ap ap1, Set set, ak ak1)
    {
        ah ah1 = a(d, ap1, set, ak1);
        Boolean boolean1 = bg.b((el)ah1.a());
        bg.a(boolean1);
        return new ah(boolean1, ah1.b());
    }

    private ah a(aq aq1, Set set, an an1)
    {
        Iterator iterator = aq1.b().iterator();
        boolean flag = true;
        while (iterator.hasNext()) 
        {
            ah ah2 = a((ap)iterator.next(), set, an1.a());
            if (((Boolean)ah2.a()).booleanValue())
            {
                bg.a(Boolean.valueOf(false));
                return new ah(Boolean.valueOf(false), ah2.b());
            }
            boolean flag1;
            if (flag && ah2.b())
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            flag = flag1;
        }
        for (Iterator iterator1 = aq1.a().iterator(); iterator1.hasNext();)
        {
            ah ah1 = a((ap)iterator1.next(), set, an1.b());
            if (!((Boolean)ah1.a()).booleanValue())
            {
                bg.a(Boolean.valueOf(false));
                return new ah(Boolean.valueOf(false), ah1.b());
            }
            if (flag && ah1.b())
            {
                flag = true;
            } else
            {
                flag = false;
            }
        }

        bg.a(Boolean.valueOf(true));
        return new ah(Boolean.valueOf(true), flag);
    }

    private ah a(String s, Set set, z z1)
    {
        l = 1 + l;
        aw aw1 = (aw)g.a();
        if (aw1 != null && !b.b())
        {
            a(aw1.b(), set);
            l = -1 + l;
            return aw1.a();
        }
        ax ax1 = (ax)j.get(s);
        if (ax1 == null)
        {
            (new StringBuilder()).append(a()).append("Invalid macro: ").append(s);
            x.a();
            l = -1 + l;
            return a;
        }
        ah ah1 = a(ax1.a(), ax1.b(), ax1.c(), ax1.e(), ax1.d(), set, z1.b());
        ap ap1;
        if (((Set)ah1.a()).isEmpty())
        {
            ap1 = ax1.f();
        } else
        {
            if (((Set)ah1.a()).size() > 1)
            {
                (new StringBuilder()).append(a()).append("Multiple macros active for macroName ").append(s);
                x.c();
            }
            ap1 = (ap)((Set)ah1.a()).iterator().next();
        }
        if (ap1 == null)
        {
            l = -1 + l;
            return a;
        }
        ah ah2 = a(e, ap1, set, z1.a());
        boolean flag;
        ah ah3;
        el el1;
        if (ah1.b() && ah2.b())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (ah2 == a)
        {
            ah3 = a;
        } else
        {
            ah3 = new ah(ah2.a(), flag);
        }
        el1 = ap1.b();
        if (ah3.b())
        {
            bj _tmp = g;
            new aw(ah3, el1);
        }
        a(el1, set);
        l = -1 + l;
        return ah3;
    }

    private ah a(Map map, ap ap1, Set set, ak ak1)
    {
        boolean flag = true;
        el el1 = (el)ap1.a().get(au.aL.toString());
        ah ah1;
        if (el1 == null)
        {
            x.a();
            ah1 = a;
        } else
        {
            String s = el1.g;
            r r1 = (r)map.get(s);
            if (r1 == null)
            {
                (new StringBuilder()).append(s).append(" has no backing implementation.");
                x.a();
                return a;
            }
            ah1 = (ah)f.a();
            if (ah1 == null || b.b())
            {
                HashMap hashmap = new HashMap();
                Iterator iterator = ap1.a().entrySet().iterator();
                boolean flag1 = flag;
                while (iterator.hasNext()) 
                {
                    java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                    entry.getKey();
                    am am1 = ak1.a();
                    el el2 = (el)entry.getValue();
                    entry.getValue();
                    ah ah3 = a(el2, set, am1.a());
                    if (ah3 == a)
                    {
                        return a;
                    }
                    boolean flag2;
                    if (ah3.b())
                    {
                        ap1.a((String)entry.getKey(), (el)ah3.a());
                        flag2 = flag1;
                    } else
                    {
                        flag2 = false;
                    }
                    hashmap.put(entry.getKey(), ah3.a());
                    flag1 = flag2;
                }
                if (!r1.a(hashmap.keySet()))
                {
                    (new StringBuilder("Incorrect keys for function ")).append(s).append(" required ").append(r1.c()).append(" had ").append(hashmap.keySet());
                    x.a();
                    return a;
                }
                ah ah2;
                if (!flag1 || !r1.a())
                {
                    flag = false;
                }
                ah2 = new ah(r1.b(), flag);
                if (flag)
                {
                    bj _tmp = f;
                }
                ah2.a();
                return ah2;
            }
        }
        return ah1;
    }

    private ah a(Set set, Map map, Map map1, Map map2, Map map3, Set set1, ar ar1)
    {
        return a(set, set1, ((av) (new at(this, map, map1, map2, map3))), ar1);
    }

    private ah a(Set set, Set set1, av av1, ar ar1)
    {
        HashSet hashset = new HashSet();
        HashSet hashset1 = new HashSet();
        Iterator iterator = set.iterator();
        boolean flag = true;
        while (iterator.hasNext()) 
        {
            aq aq1 = (aq)iterator.next();
            an an1 = ar1.a();
            ah ah1 = a(aq1, set1, an1);
            if (((Boolean)ah1.a()).booleanValue())
            {
                av1.a(aq1, hashset, hashset1, an1);
            }
            boolean flag1;
            if (flag && ah1.b())
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            flag = flag1;
        }
        hashset.removeAll(hashset1);
        return new ah(hashset, flag);
    }

    private String a()
    {
        if (l <= 1)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(Integer.toString(l));
        for (int i1 = 2; i1 < l; i1++)
        {
            stringbuilder.append(' ');
        }

        stringbuilder.append(": ");
        return stringbuilder.toString();
    }

    private void a(el el1, Set set)
    {
        if (el1 != null) goto _L2; else goto _L1
_L1:
        ah ah1;
        return;
_L2:
        if ((ah1 = a(el1, set, ((bh) (new ag())))) != a)
        {
            Object obj = bg.c((el)ah1.a());
            if (obj instanceof Map)
            {
                Map map1 = (Map)obj;
                i.a(map1);
                return;
            }
            if (obj instanceof List)
            {
                Iterator iterator = ((List)obj).iterator();
                while (iterator.hasNext()) 
                {
                    Object obj1 = iterator.next();
                    if (obj1 instanceof Map)
                    {
                        Map map = (Map)obj1;
                        i.a(map);
                    } else
                    {
                        x.c();
                    }
                }
            } else
            {
                x.c();
                return;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    private void b(String s)
    {
        this;
        JVM INSTR monitorenter ;
        k = s;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        b(s);
        bn bn1 = b.a().a();
        Set set = h;
        ar ar1 = bn1.b();
        ap ap1;
        for (Iterator iterator = ((Set)a(set, ((Set) (new HashSet())), ((av) (new com.google.android.gms.tagmanager.au(this))), ar1).a()).iterator(); iterator.hasNext(); a(c, ap1, ((Set) (new HashSet())), bn1.a()))
        {
            ap1 = (ap)iterator.next();
        }

        break MISSING_BLOCK_LABEL_126;
        Exception exception;
        exception;
        throw exception;
        b(null);
        this;
        JVM INSTR monitorexit ;
    }

}
