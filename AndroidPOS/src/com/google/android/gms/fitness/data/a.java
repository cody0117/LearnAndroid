// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.px;
import com.google.android.gms.internal.rt;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.fitness.data:
//            c

public final class a
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new c();
    public static final a a = new a("com.google.android.gms", null);
    private final int b;
    private final String c;
    private final String d;
    private final String e;

    a(int i, String s, String s1)
    {
        b = i;
        c = (String)px.a(s);
        d = "";
        e = s1;
    }

    private a(String s, String s1)
    {
        this(1, s, s1);
    }

    public final String a()
    {
        return c;
    }

    public final String b()
    {
        return d;
    }

    public final String c()
    {
        return e;
    }

    final a d()
    {
        String s = rt.a(c);
        rt.a(d);
        return new a(s, rt.a(e));
    }

    public final int describeContents()
    {
        return 0;
    }

    final int e()
    {
        return b;
    }

    public final boolean equals(Object obj)
    {
label0:
        {
            if (this != obj)
            {
                boolean flag1 = obj instanceof a;
                boolean flag = false;
                if (!flag1)
                {
                    break label0;
                }
                a a1 = (a)obj;
                boolean flag2;
                if (c.equals(a1.c) && pt.a(d, a1.d) && pt.a(e, a1.e))
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
        Object aobj[] = new Object[3];
        aobj[0] = c;
        aobj[1] = d;
        aobj[2] = e;
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        Object aobj[] = new Object[3];
        aobj[0] = c;
        aobj[1] = d;
        aobj[2] = e;
        return String.format("Application{%s:%s:%s}", aobj);
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.fitness.data.c.a(this, parcel);
    }

    static 
    {
        String.valueOf(0x648278);
    }
}
