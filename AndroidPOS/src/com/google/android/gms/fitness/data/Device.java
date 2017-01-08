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
//            j

public final class Device
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new j();
    private final int a;
    private final String b;
    private final String c;
    private final String d;
    private final String e;
    private final int f;
    private final int g;

    Device(int k, String s, String s1, String s2, int l, int i1)
    {
        a = k;
        b = (String)px.a(s);
        c = (String)px.a(s1);
        d = "";
        e = (String)px.a(s2);
        f = l;
        g = i1;
    }

    private Device(String s, String s1, String s2, int k)
    {
        this(s, s1, s2, k, '\0');
    }

    private Device(String s, String s1, String s2, int k, byte byte0)
    {
        this(s, s1, s2, k);
    }

    private Device(String s, String s1, String s2, int k, char c1)
    {
        this(1, s, s1, s2, k, 0);
    }

    public final String a()
    {
        return b;
    }

    public final String b()
    {
        return c;
    }

    public final String c()
    {
        return d;
    }

    public final String d()
    {
        return e;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final int e()
    {
        return f;
    }

    public final boolean equals(Object obj)
    {
label0:
        {
            if (this != obj)
            {
                boolean flag1 = obj instanceof Device;
                boolean flag = false;
                if (!flag1)
                {
                    break label0;
                }
                Device device = (Device)obj;
                boolean flag2;
                if (pt.a(b, device.b) && pt.a(c, device.c) && pt.a(d, device.d) && pt.a(e, device.e) && f == device.f && g == device.g)
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

    public final int f()
    {
        return g;
    }

    final String g()
    {
        Object aobj[] = new Object[3];
        aobj[0] = b;
        aobj[1] = c;
        aobj[2] = e;
        return String.format("%s:%s:%s", aobj);
    }

    final Device h()
    {
        String s = rt.a(b);
        String s1 = rt.a(c);
        rt.a(d);
        return new Device(s, s1, e, f, (byte)0);
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[5];
        aobj[0] = b;
        aobj[1] = c;
        aobj[2] = d;
        aobj[3] = e;
        aobj[4] = Integer.valueOf(f);
        return Arrays.hashCode(aobj);
    }

    public final String i()
    {
label0:
        {
            int k = 1;
            if (!rt.a())
            {
                if (g != k)
                {
                    k = 0;
                }
                if (k == 0)
                {
                    break label0;
                }
            }
            return e;
        }
        return rt.a(e);
    }

    final int j()
    {
        return a;
    }

    public final String toString()
    {
        Object aobj[] = new Object[4];
        aobj[0] = g();
        aobj[1] = d;
        aobj[2] = Integer.valueOf(f);
        aobj[3] = Integer.valueOf(g);
        return String.format("Device{%s:%s:%s:%s}", aobj);
    }

    public final void writeToParcel(Parcel parcel, int k)
    {
        com.google.android.gms.fitness.data.j.a(this, parcel);
    }

}
