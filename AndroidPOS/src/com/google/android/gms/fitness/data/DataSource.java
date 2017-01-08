// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.rt;

// Referenced classes of package com.google.android.gms.fitness.data:
//            h, DataType, a, Device

public class DataSource
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new h();
    private final int a;
    private final DataType b;
    private final String c;
    private final int d;
    private final Device e;
    private final a f;
    private final String g;
    private final boolean h;
    private final String i;

    DataSource(int i1, DataType datatype, String s, int j1, Device device, a a1, String s1, 
            boolean flag)
    {
        a = i1;
        b = datatype;
        d = j1;
        c = s;
        e = device;
        f = a1;
        g = s1;
        h = flag;
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(l());
        stringbuilder.append(":").append(b.a());
        if (f != null)
        {
            stringbuilder.append(":").append(f.a());
        }
        if (e != null)
        {
            stringbuilder.append(":").append(e.g());
        }
        if (g != null)
        {
            stringbuilder.append(":").append(g);
        }
        i = stringbuilder.toString();
    }

    private String l()
    {
        switch (d)
        {
        default:
            throw new IllegalArgumentException("invalid type value");

        case 0: // '\0'
            return "raw";

        case 1: // '\001'
            return "derived";
        }
    }

    public final DataType a()
    {
        return b;
    }

    public final int b()
    {
        return d;
    }

    public final String c()
    {
        return c;
    }

    public final String d()
    {
        if (f == null)
        {
            return null;
        } else
        {
            return f.a();
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public final a e()
    {
        return f;
    }

    public final boolean equals(Object obj)
    {
label0:
        {
            if (this != obj)
            {
                if (!(obj instanceof DataSource))
                {
                    break label0;
                }
                DataSource datasource = (DataSource)obj;
                if (!i.equals(datasource.i))
                {
                    break label0;
                }
            }
            return true;
        }
        return false;
    }

    public final Device f()
    {
        return e;
    }

    public final String g()
    {
        return g;
    }

    public final boolean h()
    {
        return h;
    }

    public final int hashCode()
    {
        return i.hashCode();
    }

    public final String i()
    {
        StringBuilder stringbuilder = new StringBuilder();
        String s;
        StringBuilder stringbuilder1;
        String s1;
        StringBuilder stringbuilder2;
        String s2;
        StringBuilder stringbuilder3;
        String s3;
        if (d == 0)
        {
            s = "r";
        } else
        {
            s = "d";
        }
        stringbuilder1 = stringbuilder.append(s).append(":").append(b.c());
        if (f == null)
        {
            s1 = "";
        } else
        if (f.equals(a.a))
        {
            s1 = ":gms";
        } else
        {
            s1 = (new StringBuilder(":")).append(f.a()).toString();
        }
        stringbuilder2 = stringbuilder1.append(s1);
        if (e != null)
        {
            s2 = (new StringBuilder(":")).append(e.b()).append(":").append(e.d()).toString();
        } else
        {
            s2 = "";
        }
        stringbuilder3 = stringbuilder2.append(s2);
        if (g != null)
        {
            s3 = (new StringBuilder(":")).append(g).toString();
        } else
        {
            s3 = "";
        }
        return stringbuilder3.append(s3).toString();
    }

    public final DataSource j()
    {
        Device device;
        a a1;
        if (e == null)
        {
            device = null;
        } else
        {
            device = e.h();
        }
        if (f == null)
        {
            a1 = null;
        } else
        {
            a1 = f.d();
        }
        return new DataSource(3, b, c, d, device, a1, rt.a(g), h);
    }

    final int k()
    {
        return a;
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("DataSource{");
        stringbuilder.append(l());
        if (c != null)
        {
            stringbuilder.append(":").append(c);
        }
        if (f != null)
        {
            stringbuilder.append(":").append(f);
        }
        if (e != null)
        {
            stringbuilder.append(":").append(e);
        }
        if (g != null)
        {
            stringbuilder.append(":").append(g);
        }
        stringbuilder.append(":").append(b);
        return stringbuilder.append("}").toString();
    }

    public void writeToParcel(Parcel parcel, int i1)
    {
        com.google.android.gms.fitness.data.h.a(rt.a(this), parcel, i1);
    }

}
