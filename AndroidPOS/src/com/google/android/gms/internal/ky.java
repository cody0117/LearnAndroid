// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            kr, qm, px, kv, 
//            qu, qp, qv, qo

public class ky extends kr
    implements SafeParcelable
{

    public static final qm CREATOR = new qm();
    private final int a;
    private final Parcel b;
    private final int c = 2;
    private final kv d;
    private final String e;
    private int f;
    private int g;

    ky(int i, Parcel parcel, kv kv1)
    {
        a = i;
        b = (Parcel)com.google.android.gms.internal.px.a(parcel);
        d = kv1;
        if (d == null)
        {
            e = null;
        } else
        {
            e = d.c();
        }
        f = 2;
    }

    private static HashMap a(Bundle bundle)
    {
        HashMap hashmap = new HashMap();
        String s;
        for (Iterator iterator = bundle.keySet().iterator(); iterator.hasNext(); hashmap.put(s, bundle.getString(s)))
        {
            s = (String)iterator.next();
        }

        return hashmap;
    }

    private static void a(StringBuilder stringbuilder, int i, Object obj)
    {
        switch (i)
        {
        default:
            throw new IllegalArgumentException((new StringBuilder("Unknown type = ")).append(i).toString());

        case 0: // '\0'
        case 1: // '\001'
        case 2: // '\002'
        case 3: // '\003'
        case 4: // '\004'
        case 5: // '\005'
        case 6: // '\006'
            stringbuilder.append(obj);
            return;

        case 7: // '\007'
            stringbuilder.append("\"").append(com.google.android.gms.internal.qu.a(obj.toString())).append("\"");
            return;

        case 8: // '\b'
            stringbuilder.append("\"").append(com.google.android.gms.internal.qp.a((byte[])obj)).append("\"");
            return;

        case 9: // '\t'
            stringbuilder.append("\"").append(com.google.android.gms.internal.qp.b((byte[])obj));
            stringbuilder.append("\"");
            return;

        case 10: // '\n'
            com.google.android.gms.internal.qv.a(stringbuilder, (HashMap)obj);
            return;

        case 11: // '\013'
            throw new IllegalArgumentException("Method does not accept concrete type.");
        }
    }

    private void a(StringBuilder stringbuilder, kr.a a1, Parcel parcel, int i)
    {
        int j = 0;
        if (!a1.e()) goto _L2; else goto _L1
_L1:
        stringbuilder.append("[");
        a1.d();
        JVM INSTR tableswitch 0 11: default 84
    //                   0 94
    //                   1 145
    //                   2 235
    //                   3 284
    //                   4 333
    //                   5 382
    //                   6 395
    //                   7 444
    //                   8 457
    //                   9 457
    //                   10 457
    //                   11 467;
           goto _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L12 _L12 _L13
_L3:
        throw new IllegalStateException("Unknown field type out.");
_L4:
        int ai[] = com.google.android.gms.common.internal.safeparcel.a.s(parcel, i);
        int l3 = ai.length;
        do
        {
            if (j >= l3)
            {
                break; /* Loop/switch isn't completed */
            }
            if (j != 0)
            {
                stringbuilder.append(",");
            }
            stringbuilder.append(Integer.toString(ai[j]));
            j++;
        } while (true);
_L5:
        int i3 = com.google.android.gms.common.internal.safeparcel.a.a(parcel, i);
        int j3 = parcel.dataPosition();
        BigInteger abiginteger[] = null;
        if (i3 != 0)
        {
            int k3 = parcel.readInt();
            abiginteger = new BigInteger[k3];
            for (; j < k3; j++)
            {
                abiginteger[j] = new BigInteger(parcel.createByteArray());
            }

            parcel.setDataPosition(i3 + j3);
        }
        com.google.android.gms.internal.qo.a(stringbuilder, abiginteger);
_L14:
        stringbuilder.append("]");
        return;
_L6:
        int k2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel, i);
        int l2 = parcel.dataPosition();
        long al[] = null;
        if (k2 != 0)
        {
            al = parcel.createLongArray();
            parcel.setDataPosition(k2 + l2);
        }
        com.google.android.gms.internal.qo.a(stringbuilder, al);
        continue; /* Loop/switch isn't completed */
_L7:
        int i2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel, i);
        int j2 = parcel.dataPosition();
        float af[] = null;
        if (i2 != 0)
        {
            af = parcel.createFloatArray();
            parcel.setDataPosition(i2 + j2);
        }
        com.google.android.gms.internal.qo.a(stringbuilder, af);
        continue; /* Loop/switch isn't completed */
_L8:
        int k1 = com.google.android.gms.common.internal.safeparcel.a.a(parcel, i);
        int l1 = parcel.dataPosition();
        double ad[] = null;
        if (k1 != 0)
        {
            ad = parcel.createDoubleArray();
            parcel.setDataPosition(k1 + l1);
        }
        com.google.android.gms.internal.qo.a(stringbuilder, ad);
        continue; /* Loop/switch isn't completed */
_L9:
        com.google.android.gms.internal.qo.a(stringbuilder, com.google.android.gms.common.internal.safeparcel.a.t(parcel, i));
        continue; /* Loop/switch isn't completed */
_L10:
        int i1 = com.google.android.gms.common.internal.safeparcel.a.a(parcel, i);
        int j1 = parcel.dataPosition();
        boolean aflag[] = null;
        if (i1 != 0)
        {
            aflag = parcel.createBooleanArray();
            parcel.setDataPosition(i1 + j1);
        }
        com.google.android.gms.internal.qo.a(stringbuilder, aflag);
        continue; /* Loop/switch isn't completed */
_L11:
        com.google.android.gms.internal.qo.a(stringbuilder, com.google.android.gms.common.internal.safeparcel.a.u(parcel, i));
        if (true) goto _L14; else goto _L12
_L12:
        throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
_L13:
        Parcel aparcel[] = com.google.android.gms.common.internal.safeparcel.a.x(parcel, i);
        int k = aparcel.length;
        int l = 0;
        while (l < k) 
        {
            if (l > 0)
            {
                stringbuilder.append(",");
            }
            aparcel[l].setDataPosition(0);
            a(stringbuilder, a1.l(), aparcel[l]);
            l++;
        }
        if (true) goto _L14; else goto _L2
_L2:
        switch (a1.d())
        {
        default:
            throw new IllegalStateException("Unknown field type out");

        case 0: // '\0'
            stringbuilder.append(com.google.android.gms.common.internal.safeparcel.a.g(parcel, i));
            return;

        case 1: // '\001'
            stringbuilder.append(com.google.android.gms.common.internal.safeparcel.a.k(parcel, i));
            return;

        case 2: // '\002'
            stringbuilder.append(com.google.android.gms.common.internal.safeparcel.a.i(parcel, i));
            return;

        case 3: // '\003'
            stringbuilder.append(com.google.android.gms.common.internal.safeparcel.a.l(parcel, i));
            return;

        case 4: // '\004'
            stringbuilder.append(com.google.android.gms.common.internal.safeparcel.a.m(parcel, i));
            return;

        case 5: // '\005'
            stringbuilder.append(com.google.android.gms.common.internal.safeparcel.a.n(parcel, i));
            return;

        case 6: // '\006'
            stringbuilder.append(com.google.android.gms.common.internal.safeparcel.a.c(parcel, i));
            return;

        case 7: // '\007'
            String s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i);
            stringbuilder.append("\"").append(com.google.android.gms.internal.qu.a(s1)).append("\"");
            return;

        case 8: // '\b'
            byte abyte1[] = com.google.android.gms.common.internal.safeparcel.a.r(parcel, i);
            stringbuilder.append("\"").append(com.google.android.gms.internal.qp.a(abyte1)).append("\"");
            return;

        case 9: // '\t'
            byte abyte0[] = com.google.android.gms.common.internal.safeparcel.a.r(parcel, i);
            stringbuilder.append("\"").append(com.google.android.gms.internal.qp.b(abyte0));
            stringbuilder.append("\"");
            return;

        case 10: // '\n'
            Bundle bundle = com.google.android.gms.common.internal.safeparcel.a.q(parcel, i);
            Set set = bundle.keySet();
            set.size();
            stringbuilder.append("{");
            Iterator iterator = set.iterator();
            for (boolean flag = true; iterator.hasNext(); flag = false)
            {
                String s = (String)iterator.next();
                if (!flag)
                {
                    stringbuilder.append(",");
                }
                stringbuilder.append("\"").append(s).append("\"");
                stringbuilder.append(":");
                stringbuilder.append("\"").append(com.google.android.gms.internal.qu.a(bundle.getString(s))).append("\"");
            }

            stringbuilder.append("}");
            return;

        case 11: // '\013'
            Parcel parcel1 = com.google.android.gms.common.internal.safeparcel.a.w(parcel, i);
            parcel1.setDataPosition(0);
            a(stringbuilder, a1.l(), parcel1);
            return;
        }
    }

    private static void a(StringBuilder stringbuilder, kr.a a1, Object obj)
    {
        if (a1.c())
        {
            ArrayList arraylist = (ArrayList)obj;
            stringbuilder.append("[");
            int i = arraylist.size();
            for (int j = 0; j < i; j++)
            {
                if (j != 0)
                {
                    stringbuilder.append(",");
                }
                a(stringbuilder, a1.b(), arraylist.get(j));
            }

            stringbuilder.append("]");
            return;
        } else
        {
            a(stringbuilder, a1.b(), obj);
            return;
        }
    }

    private void a(StringBuilder stringbuilder, HashMap hashmap, Parcel parcel)
    {
        HashMap hashmap1;
        int i;
        boolean flag;
        hashmap1 = new HashMap();
        java.util.Map.Entry entry1;
        for (Iterator iterator = hashmap.entrySet().iterator(); iterator.hasNext(); hashmap1.put(Integer.valueOf(((kr.a)entry1.getValue()).g()), entry1))
        {
            entry1 = (java.util.Map.Entry)iterator.next();
        }

        stringbuilder.append('{');
        i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        flag = false;
_L14:
        int j;
        kr.a a1;
        java.util.Map.Entry entry;
        do
        {
            if (parcel.dataPosition() >= i)
            {
                break MISSING_BLOCK_LABEL_525;
            }
            j = parcel.readInt();
            entry = (java.util.Map.Entry)hashmap1.get(Integer.valueOf(0xffff & j));
        } while (entry == null);
        if (flag)
        {
            stringbuilder.append(",");
        }
        String s = (String)entry.getKey();
        a1 = (kr.a)entry.getValue();
        stringbuilder.append("\"").append(s).append("\":");
        if (!a1.j())
        {
            break MISSING_BLOCK_LABEL_512;
        }
        a1.d();
        JVM INSTR tableswitch 0 11: default 252
    //                   0 281
    //                   1 307
    //                   2 327
    //                   3 350
    //                   4 373
    //                   5 396
    //                   6 416
    //                   7 439
    //                   8 459
    //                   9 459
    //                   10 479
    //                   11 502;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L10 _L11 _L12
_L3:
        break; /* Loop/switch isn't completed */
_L1:
        throw new IllegalArgumentException((new StringBuilder("Unknown field out type = ")).append(a1.d()).toString());
_L2:
        a(stringbuilder, a1, a(a1, Integer.valueOf(com.google.android.gms.common.internal.safeparcel.a.g(parcel, j))));
_L15:
        flag = true;
        if (true) goto _L14; else goto _L13
_L13:
        a(stringbuilder, a1, a(a1, com.google.android.gms.common.internal.safeparcel.a.k(parcel, j)));
          goto _L15
_L4:
        a(stringbuilder, a1, a(a1, Long.valueOf(com.google.android.gms.common.internal.safeparcel.a.i(parcel, j))));
          goto _L15
_L5:
        a(stringbuilder, a1, a(a1, Float.valueOf(com.google.android.gms.common.internal.safeparcel.a.l(parcel, j))));
          goto _L15
_L6:
        a(stringbuilder, a1, a(a1, Double.valueOf(com.google.android.gms.common.internal.safeparcel.a.m(parcel, j))));
          goto _L15
_L7:
        a(stringbuilder, a1, a(a1, com.google.android.gms.common.internal.safeparcel.a.n(parcel, j)));
          goto _L15
_L8:
        a(stringbuilder, a1, a(a1, Boolean.valueOf(com.google.android.gms.common.internal.safeparcel.a.c(parcel, j))));
          goto _L15
_L9:
        a(stringbuilder, a1, a(a1, com.google.android.gms.common.internal.safeparcel.a.o(parcel, j)));
          goto _L15
_L10:
        a(stringbuilder, a1, a(a1, com.google.android.gms.common.internal.safeparcel.a.r(parcel, j)));
          goto _L15
_L11:
        a(stringbuilder, a1, a(a1, a(com.google.android.gms.common.internal.safeparcel.a.q(parcel, j))));
          goto _L15
_L12:
        throw new IllegalArgumentException("Method does not accept concrete type.");
        a(stringbuilder, a1, parcel, j);
          goto _L15
        if (parcel.dataPosition() != i)
        {
            throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
        } else
        {
            stringbuilder.append('}');
            return;
        }
    }

    public final int a()
    {
        return a;
    }

    public final HashMap b()
    {
        if (d == null)
        {
            return null;
        } else
        {
            return d.a(e);
        }
    }

    protected final Object c()
    {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    protected final boolean d()
    {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    public int describeContents()
    {
        qm _tmp = CREATOR;
        return 0;
    }

    public final Parcel e()
    {
        f;
        JVM INSTR tableswitch 0 1: default 28
    //                   0 33
    //                   1 44;
           goto _L1 _L2 _L3
_L1:
        return b;
_L2:
        g = com.google.android.gms.common.internal.safeparcel.c.a(b);
_L3:
        com.google.android.gms.common.internal.safeparcel.c.a(b, g);
        f = 2;
        if (true) goto _L1; else goto _L4
_L4:
    }

    final kv f()
    {
        switch (c)
        {
        default:
            throw new IllegalStateException((new StringBuilder("Invalid creation type: ")).append(c).toString());

        case 0: // '\0'
            return null;

        case 1: // '\001'
            return d;

        case 2: // '\002'
            return d;
        }
    }

    public final String toString()
    {
        com.google.android.gms.internal.px.a(d, "Cannot convert to JSON on client side.");
        Parcel parcel = e();
        parcel.setDataPosition(0);
        StringBuilder stringbuilder = new StringBuilder(100);
        a(stringbuilder, d.a(e), parcel);
        return stringbuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        qm _tmp = CREATOR;
        com.google.android.gms.internal.qm.a(this, parcel, i);
    }

}
