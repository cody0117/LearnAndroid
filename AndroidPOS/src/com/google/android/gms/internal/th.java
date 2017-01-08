// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            ti

final class th
{

    private static final ti a = new ti();
    private boolean b;
    private int c[];
    private ti d[];
    private int e;

    public th()
    {
        this((byte)0);
    }

    private th(byte byte0)
    {
        b = false;
        c = new int[13];
        d = new ti[13];
        e = 0;
    }

    private void c()
    {
        int i = e;
        int ai[] = c;
        ti ati[] = d;
        int j = 0;
        int k = 0;
        for (; j < i; j++)
        {
            ti ti1 = ati[j];
            if (ti1 == a)
            {
                continue;
            }
            if (j != k)
            {
                ai[k] = ai[j];
                ati[k] = ti1;
                ati[j] = null;
            }
            k++;
        }

        b = false;
        e = k;
    }

    public final int a()
    {
        if (b)
        {
            c();
        }
        return e;
    }

    public final ti a(int i)
    {
        if (b)
        {
            c();
        }
        return d[i];
    }

    public final boolean b()
    {
        return a() == 0;
    }

    public final boolean equals(Object obj)
    {
        if (obj != this) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        th th1;
        int ai[];
        int ai1[];
        int i;
        int j;
        if (!(obj instanceof th))
        {
            return false;
        }
        th1 = (th)obj;
        if (a() != th1.a())
        {
            return false;
        }
        ai = c;
        ai1 = th1.c;
        i = e;
        j = 0;
_L10:
        if (j >= i) goto _L4; else goto _L3
_L3:
        if (ai[j] == ai1[j]) goto _L6; else goto _L5
_L5:
        boolean flag = false;
_L11:
        ti ati[];
        ti ati1[];
        int k;
        int l;
        if (!flag)
        {
            break; /* Loop/switch isn't completed */
        }
        ati = d;
        ati1 = th1.d;
        k = e;
        l = 0;
_L12:
        if (l >= k)
        {
            break MISSING_BLOCK_LABEL_153;
        }
        if (ati[l].equals(ati1[l])) goto _L8; else goto _L7
_L7:
        boolean flag1 = false;
_L13:
        if (flag1) goto _L1; else goto _L9
_L9:
        return false;
_L6:
        j++;
          goto _L10
_L4:
        flag = true;
          goto _L11
_L8:
        l++;
          goto _L12
        flag1 = true;
          goto _L13
    }

    public final int hashCode()
    {
        if (b)
        {
            c();
        }
        int i = 17;
        for (int j = 0; j < e; j++)
        {
            i = 31 * (i * 31 + c[j]) + d[j].hashCode();
        }

        return i;
    }

}
