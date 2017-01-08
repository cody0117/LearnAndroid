// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.px;

// Referenced classes of package com.google.android.gms.fitness.data:
//            k

public final class Field
    implements SafeParcelable
{

    public static final Field A = b("x");
    public static final Field B = b("y");
    public static final Field C = b("z");
    public static final android.os.Parcelable.Creator CREATOR = new k();
    public static final Field a = a("activity");
    public static final Field b = b("confidence");
    public static final Field c = a("steps");
    public static final Field d = a("duration");
    public static final Field e = b("bpm");
    public static final Field f = b("latitude");
    public static final Field g = b("longitude");
    public static final Field h = b("accuracy");
    public static final Field i = b("altitude");
    public static final Field j = b("distance");
    public static final Field k = b("height");
    public static final Field l = b("weight");
    public static final Field m = b("speed");
    public static final Field n = b("rpm");
    public static final Field o = a("revolutions");
    public static final Field p = b("calories");
    public static final Field q = b("watts");
    public static final Field r = a("num_segments");
    public static final Field s = b("average");
    public static final Field t = b("max");
    public static final Field u = b("min");
    public static final Field v = b("low_latitude");
    public static final Field w = b("low_longitude");
    public static final Field x = b("high_latitude");
    public static final Field y = b("high_longitude");
    public static final Field z = a("edge_type");
    private final int D;
    private final String E;
    private final int F;

    Field(int i1, String s1, int j1)
    {
        D = i1;
        E = (String)px.a(s1);
        F = j1;
    }

    private Field(String s1, int i1)
    {
        this(1, s1, i1);
    }

    private static Field a(String s1)
    {
        return new Field(s1, 1);
    }

    private static Field b(String s1)
    {
        return new Field(s1, 2);
    }

    public final String a()
    {
        return E;
    }

    public final int b()
    {
        return F;
    }

    final int c()
    {
        return D;
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
                boolean flag1 = obj instanceof Field;
                boolean flag = false;
                if (!flag1)
                {
                    break label0;
                }
                Field field = (Field)obj;
                boolean flag2;
                if (E.equals(field.E) && F == field.F)
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
        return E.hashCode();
    }

    public final String toString()
    {
        Object aobj[] = new Object[2];
        aobj[0] = E;
        String s1;
        if (F == 1)
        {
            s1 = "i";
        } else
        {
            s1 = "f";
        }
        aobj[1] = s1;
        return String.format("%s(%s)", aobj);
    }

    public final void writeToParcel(Parcel parcel, int i1)
    {
        com.google.android.gms.fitness.data.k.a(this, parcel);
    }

}
