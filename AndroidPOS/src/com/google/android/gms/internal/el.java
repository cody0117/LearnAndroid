// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            tf, tn, tj, td

public final class el extends tf
{

    private static volatile el o[];
    public int a;
    public String b;
    public el c[];
    public el d[];
    public el e[];
    public String f;
    public String g;
    public long h;
    public boolean i;
    public el j[];
    public int k[];
    public boolean l;

    public el()
    {
        a = 1;
        b = "";
        c = e();
        d = e();
        e = e();
        f = "";
        g = "";
        h = 0L;
        i = false;
        j = e();
        k = tn.a;
        l = false;
        m = null;
        n = -1;
    }

    private static el[] e()
    {
        if (o == null)
        {
            synchronized (tj.a)
            {
                if (o == null)
                {
                    o = new el[0];
                }
            }
        }
        return o;
    }

    protected final int a()
    {
        int i1 = super.a() + td.a(a);
        if (!b.equals(""))
        {
            i1 += td.b(2, b);
        }
        if (c != null && c.length > 0)
        {
            int k3 = i1;
            for (int l3 = 0; l3 < c.length; l3++)
            {
                el el4 = c[l3];
                if (el4 != null)
                {
                    k3 += td.b(3, el4);
                }
            }

            i1 = k3;
        }
        if (d != null && d.length > 0)
        {
            int i3 = i1;
            for (int j3 = 0; j3 < d.length; j3++)
            {
                el el3 = d[j3];
                if (el3 != null)
                {
                    i3 += td.b(4, el3);
                }
            }

            i1 = i3;
        }
        if (e != null && e.length > 0)
        {
            int j2 = i1;
            for (int k2 = 0; k2 < e.length; k2++)
            {
                el el2 = e[k2];
                if (el2 != null)
                {
                    j2 += td.b(5, el2);
                }
            }

            i1 = j2;
        }
        if (!f.equals(""))
        {
            i1 += td.b(6, f);
        }
        if (!g.equals(""))
        {
            i1 += td.b(7, g);
        }
        if (h != 0L)
        {
            long l2 = h;
            i1 += td.c(8) + td.a(l2);
        }
        if (l)
        {
            boolean _tmp = l;
            i1 += 1 + td.c(9);
        }
        if (k != null && k.length > 0)
        {
            int l1 = 0;
            int i2 = 0;
            for (; l1 < k.length; l1++)
            {
                i2 += td.b(k[l1]);
            }

            i1 = i1 + i2 + 1 * k.length;
        }
        if (j != null)
        {
            int j1 = j.length;
            int k1 = 0;
            if (j1 > 0)
            {
                for (; k1 < j.length; k1++)
                {
                    el el1 = j[k1];
                    if (el1 != null)
                    {
                        i1 += td.b(11, el1);
                    }
                }

            }
        }
        if (i)
        {
            boolean _tmp1 = i;
            i1 += 1 + td.c(12);
        }
        return i1;
    }

    public final void a(td td1)
    {
        td1.a(1, a);
        if (!b.equals(""))
        {
            td1.a(2, b);
        }
        if (c != null && c.length > 0)
        {
            for (int j2 = 0; j2 < c.length; j2++)
            {
                el el4 = c[j2];
                if (el4 != null)
                {
                    td1.a(3, el4);
                }
            }

        }
        if (d != null && d.length > 0)
        {
            for (int i2 = 0; i2 < d.length; i2++)
            {
                el el3 = d[i2];
                if (el3 != null)
                {
                    td1.a(4, el3);
                }
            }

        }
        if (e != null && e.length > 0)
        {
            for (int l1 = 0; l1 < e.length; l1++)
            {
                el el2 = e[l1];
                if (el2 != null)
                {
                    td1.a(5, el2);
                }
            }

        }
        if (!f.equals(""))
        {
            td1.a(6, f);
        }
        if (!g.equals(""))
        {
            td1.a(7, g);
        }
        if (h != 0L)
        {
            td1.a(8, h);
        }
        if (l)
        {
            td1.a(9, l);
        }
        if (k != null && k.length > 0)
        {
            for (int k1 = 0; k1 < k.length; k1++)
            {
                td1.a(10, k[k1]);
            }

        }
        if (j != null)
        {
            int i1 = j.length;
            int j1 = 0;
            if (i1 > 0)
            {
                for (; j1 < j.length; j1++)
                {
                    el el1 = j[j1];
                    if (el1 != null)
                    {
                        td1.a(11, el1);
                    }
                }

            }
        }
        if (i)
        {
            td1.a(12, i);
        }
        super.a(td1);
    }

    public final boolean equals(Object obj)
    {
        if (obj != this) goto _L2; else goto _L1
_L1:
        boolean flag1 = true;
_L4:
        return flag1;
_L2:
        boolean flag;
        flag = obj instanceof el;
        flag1 = false;
        if (!flag) goto _L4; else goto _L3
_L3:
        el el1;
        int i1;
        int j1;
        el1 = (el)obj;
        i1 = a;
        j1 = el1.a;
        flag1 = false;
        if (i1 != j1) goto _L4; else goto _L5
_L5:
        if (b != null) goto _L7; else goto _L6
_L6:
        String s2;
        s2 = el1.b;
        flag1 = false;
        if (s2 != null) goto _L4; else goto _L8
_L8:
        boolean flag2;
        flag2 = tj.a(c, el1.c);
        flag1 = false;
        if (!flag2) goto _L4; else goto _L9
_L9:
        boolean flag3;
        flag3 = tj.a(d, el1.d);
        flag1 = false;
        if (!flag3) goto _L4; else goto _L10
_L10:
        boolean flag4;
        flag4 = tj.a(e, el1.e);
        flag1 = false;
        if (!flag4) goto _L4; else goto _L11
_L11:
        if (f != null) goto _L13; else goto _L12
_L12:
        String s1;
        s1 = el1.f;
        flag1 = false;
        if (s1 != null) goto _L4; else goto _L14
_L14:
        String s;
        if (g != null)
        {
            break MISSING_BLOCK_LABEL_320;
        }
        s = el1.g;
        flag1 = false;
        if (s != null) goto _L4; else goto _L15
_L15:
        int k1 = h != el1.h;
        flag1 = false;
        if (k1 == 0)
        {
            boolean flag5 = i;
            boolean flag6 = el1.i;
            flag1 = false;
            if (flag5 == flag6)
            {
                boolean flag7 = tj.a(j, el1.j);
                flag1 = false;
                if (flag7)
                {
                    boolean flag8 = tj.a(k, el1.k);
                    flag1 = false;
                    if (flag8)
                    {
                        boolean flag9 = l;
                        boolean flag10 = el1.l;
                        flag1 = false;
                        if (flag9 == flag10)
                        {
                            return a(el1);
                        }
                    }
                }
            }
        }
          goto _L4
_L7:
        if (!b.equals(el1.b))
        {
            return false;
        }
          goto _L8
_L13:
        if (!f.equals(el1.f))
        {
            return false;
        }
          goto _L14
        if (!g.equals(el1.g))
        {
            return false;
        }
          goto _L15
    }

    public final int hashCode()
    {
        char c1 = '\u04CF';
        int i1 = 31 * (527 + a);
        int j1;
        int k1;
        int l1;
        int i2;
        String s;
        int j2;
        int k2;
        char c2;
        int l2;
        if (b == null)
        {
            j1 = 0;
        } else
        {
            j1 = b.hashCode();
        }
        k1 = 31 * (31 * (31 * (31 * (j1 + i1) + tj.a(c)) + tj.a(d)) + tj.a(e));
        if (f == null)
        {
            l1 = 0;
        } else
        {
            l1 = f.hashCode();
        }
        i2 = 31 * (l1 + k1);
        s = g;
        j2 = 0;
        if (s != null)
        {
            j2 = g.hashCode();
        }
        k2 = 31 * (31 * (i2 + j2) + (int)(h ^ h >>> 32));
        if (i)
        {
            c2 = c1;
        } else
        {
            c2 = '\u04D5';
        }
        l2 = 31 * (31 * (31 * (c2 + k2) + tj.a(j)) + tj.a(k));
        if (!l)
        {
            c1 = '\u04D5';
        }
        return 31 * (l2 + c1) + b();
    }
}
