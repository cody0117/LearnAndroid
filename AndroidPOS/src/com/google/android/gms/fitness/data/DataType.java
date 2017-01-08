// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.qo;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.android.gms.fitness.data:
//            Field, b, i

public final class DataType
    implements SafeParcelable
{

    public static final DataType A;
    public static final DataType B;
    public static final DataType C;
    public static final android.os.Parcelable.Creator CREATOR = new i();
    public static final DataType D;
    public static final DataType E[];
    public static final String F[];
    private static final Map G = new b();
    public static final DataType a;
    public static final DataType b;
    public static final DataType c;
    public static final DataType d;
    public static final DataType e;
    public static final DataType f;
    public static final DataType g;
    public static final DataType h;
    public static final DataType i;
    public static final DataType j;
    public static final DataType k;
    public static final DataType l;
    public static final DataType m;
    public static final DataType n;
    public static final DataType o;
    public static final DataType p;
    public static final DataType q;
    public static final DataType r;
    public static final DataType s;
    public static final DataType t;
    public static final DataType u;
    public static final Set v;
    public static final DataType w;
    public static final DataType x;
    public static final DataType y;
    public static final DataType z;
    private final int H;
    private final String I;
    private final List J;

    DataType(int i1, String s1, List list)
    {
        H = i1;
        I = s1;
        J = Collections.unmodifiableList(list);
    }

    private transient DataType(String s1, Field afield[])
    {
        this(1, s1, ((List) (qo.a(afield))));
    }

    public final String a()
    {
        return I;
    }

    public final List b()
    {
        return J;
    }

    public final String c()
    {
        if (I.startsWith("com.google."))
        {
            return I.substring(11);
        } else
        {
            return I;
        }
    }

    final int d()
    {
        return H;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
label0:
        {
            if (this != obj)
            {
                boolean flag1 = obj instanceof DataType;
                boolean flag = false;
                if (!flag1)
                {
                    break label0;
                }
                DataType datatype = (DataType)obj;
                boolean flag2;
                if (I.equals(datatype.I) && J.equals(datatype.J))
                {
                    flag2 = true;
                } else
                {
                    flag2 = false;
                }
                flag = false;
                if (!flag2)
                {
                    break label0;
                }
            }
            flag = true;
        }
        return flag;
    }

    public final int hashCode()
    {
        return I.hashCode();
    }

    public final String toString()
    {
        Object aobj[] = new Object[2];
        aobj[0] = I;
        aobj[1] = J;
        return String.format("DataType{%s%s}", aobj);
    }

    public final void writeToParcel(Parcel parcel, int i1)
    {
        com.google.android.gms.fitness.data.i.a(this, parcel);
    }

    static 
    {
        Field afield[] = new Field[1];
        afield[0] = Field.c;
        a = new DataType("com.google.step_count.delta", afield);
        Field afield1[] = new Field[1];
        afield1[0] = Field.c;
        b = new DataType("com.google.step_count.cumulative", afield1);
        Field afield2[] = new Field[1];
        afield2[0] = Field.n;
        c = new DataType("com.google.step_count.cadence", afield2);
        Field afield3[] = new Field[1];
        afield3[0] = Field.a;
        d = new DataType("com.google.activity.segment", afield3);
        Field afield4[] = new Field[1];
        afield4[0] = Field.p;
        e = new DataType("com.google.calories.consumed", afield4);
        Field afield5[] = new Field[1];
        afield5[0] = Field.p;
        f = new DataType("com.google.calories.expended", afield5);
        Field afield6[] = new Field[1];
        afield6[0] = Field.q;
        g = new DataType("com.google.power.sample", afield6);
        Field afield7[] = new Field[2];
        afield7[0] = Field.a;
        afield7[1] = Field.b;
        h = new DataType("com.google.activity.sample", afield7);
        Field afield8[] = new Field[2];
        afield8[0] = Field.a;
        afield8[1] = Field.z;
        i = new DataType("com.google.activity.edge", afield8);
        Field afield9[] = new Field[3];
        afield9[0] = Field.A;
        afield9[1] = Field.B;
        afield9[2] = Field.C;
        j = new DataType("com.google.accelerometer", afield9);
        Field afield10[] = new Field[1];
        afield10[0] = Field.e;
        k = new DataType("com.google.heart_rate.bpm", afield10);
        Field afield11[] = new Field[4];
        afield11[0] = Field.f;
        afield11[1] = Field.g;
        afield11[2] = Field.h;
        afield11[3] = Field.i;
        l = new DataType("com.google.location.sample", afield11);
        Field afield12[] = new Field[1];
        afield12[0] = Field.j;
        m = new DataType("com.google.distance.delta", afield12);
        Field afield13[] = new Field[1];
        afield13[0] = Field.j;
        n = new DataType("com.google.distance.cumulative", afield13);
        Field afield14[] = new Field[1];
        afield14[0] = Field.m;
        o = new DataType("com.google.speed", afield14);
        Field afield15[] = new Field[1];
        afield15[0] = Field.o;
        p = new DataType("com.google.cycling.wheel_revolution.cumulative", afield15);
        Field afield16[] = new Field[1];
        afield16[0] = Field.n;
        q = new DataType("com.google.cycling.wheel_revolution.rpm", afield16);
        Field afield17[] = new Field[1];
        afield17[0] = Field.o;
        r = new DataType("com.google.cycling.pedaling.cumulative", afield17);
        Field afield18[] = new Field[1];
        afield18[0] = Field.n;
        s = new DataType("com.google.cycling.pedaling.cadence", afield18);
        Field afield19[] = new Field[1];
        afield19[0] = Field.k;
        t = new DataType("com.google.height", afield19);
        Field afield20[] = new Field[1];
        afield20[0] = Field.l;
        u = new DataType("com.google.weight", afield20);
        DataType adatatype[] = new DataType[7];
        adatatype[0] = a;
        adatatype[1] = m;
        adatatype[2] = d;
        adatatype[3] = o;
        adatatype[4] = k;
        adatatype[5] = u;
        adatatype[6] = l;
        v = Collections.unmodifiableSet(new HashSet(Arrays.asList(adatatype)));
        Field afield21[] = new Field[3];
        afield21[0] = Field.a;
        afield21[1] = Field.d;
        afield21[2] = Field.r;
        w = new DataType("com.google.activity.summary", afield21);
        x = a;
        y = m;
        Field afield22[] = new Field[3];
        afield22[0] = Field.s;
        afield22[1] = Field.t;
        afield22[2] = Field.u;
        z = new DataType("com.google.heart_rate.summary", afield22);
        Field afield23[] = new Field[4];
        afield23[0] = Field.v;
        afield23[1] = Field.w;
        afield23[2] = Field.x;
        afield23[3] = Field.y;
        A = new DataType("com.google.location.bounding_box", afield23);
        Field afield24[] = new Field[3];
        afield24[0] = Field.s;
        afield24[1] = Field.t;
        afield24[2] = Field.u;
        B = new DataType("com.google.power.summary", afield24);
        Field afield25[] = new Field[3];
        afield25[0] = Field.s;
        afield25[1] = Field.t;
        afield25[2] = Field.u;
        C = new DataType("com.google.speed.summary", afield25);
        Field afield26[] = new Field[3];
        afield26[0] = Field.s;
        afield26[1] = Field.t;
        afield26[2] = Field.u;
        D = new DataType("com.google.weight.summary", afield26);
        DataType adatatype1[] = new DataType[27];
        adatatype1[0] = j;
        adatatype1[1] = i;
        adatatype1[2] = h;
        adatatype1[3] = d;
        adatatype1[4] = w;
        adatatype1[5] = e;
        adatatype1[6] = f;
        adatatype1[7] = s;
        adatatype1[8] = r;
        adatatype1[9] = p;
        adatatype1[10] = q;
        adatatype1[11] = n;
        adatatype1[12] = m;
        adatatype1[13] = k;
        adatatype1[14] = z;
        adatatype1[15] = t;
        adatatype1[16] = A;
        adatatype1[17] = l;
        adatatype1[18] = g;
        adatatype1[19] = B;
        adatatype1[20] = o;
        adatatype1[21] = C;
        adatatype1[22] = c;
        adatatype1[23] = b;
        adatatype1[24] = a;
        adatatype1[25] = u;
        adatatype1[26] = D;
        E = adatatype1;
        String as[] = new String[27];
        as[0] = j.I;
        as[1] = i.I;
        as[2] = h.I;
        as[3] = d.I;
        as[4] = w.I;
        as[5] = e.I;
        as[6] = f.I;
        as[7] = s.I;
        as[8] = r.I;
        as[9] = p.I;
        as[10] = q.I;
        as[11] = n.I;
        as[12] = m.I;
        as[13] = k.I;
        as[14] = z.I;
        as[15] = t.I;
        as[16] = A.I;
        as[17] = l.I;
        as[18] = g.I;
        as[19] = B.I;
        as[20] = o.I;
        as[21] = C.I;
        as[22] = c.I;
        as[23] = b.I;
        as[24] = a.I;
        as[25] = u.I;
        as[26] = D.I;
        F = as;
    }
}
