// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.fitness.data:
//            f, RawDataPoint, DataSource, Value

public final class DataPoint
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new f();
    private final int a;
    private final DataSource b;
    private long c;
    private long d;
    private final Value e[];
    private DataSource f;
    private long g;
    private long h;

    DataPoint(int i, DataSource datasource, long l, long l1, Value avalue[], 
            DataSource datasource1, long l2, long l3)
    {
        a = i;
        b = datasource;
        f = datasource1;
        c = l;
        d = l1;
        e = avalue;
        g = l2;
        h = l3;
    }

    DataPoint(List list, RawDataPoint rawdatapoint)
    {
        this(4, a(list, rawdatapoint.e), rawdatapoint.b, rawdatapoint.c, rawdatapoint.d, a(list, rawdatapoint.f), rawdatapoint.g, rawdatapoint.h);
    }

    private static DataSource a(List list, int i)
    {
        if (i >= 0 && i < list.size())
        {
            return (DataSource)list.get(i);
        } else
        {
            return null;
        }
    }

    public final long a(TimeUnit timeunit)
    {
        return timeunit.convert(c, TimeUnit.NANOSECONDS);
    }

    public final Value[] a()
    {
        return e;
    }

    public final long b(TimeUnit timeunit)
    {
        return timeunit.convert(d, TimeUnit.NANOSECONDS);
    }

    public final DataSource b()
    {
        return b;
    }

    public final DataSource c()
    {
        return f;
    }

    public final long d()
    {
        return g;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final long e()
    {
        return h;
    }

    public final boolean equals(Object obj)
    {
label0:
        {
            if (this != obj)
            {
                boolean flag1 = obj instanceof DataPoint;
                boolean flag = false;
                if (!flag1)
                {
                    break label0;
                }
                DataPoint datapoint = (DataPoint)obj;
                boolean flag2;
                if (pt.a(b, datapoint.b) && c == datapoint.c && d == datapoint.d && Arrays.equals(e, datapoint.e) && pt.a(f, datapoint.f))
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
        return a;
    }

    public final long g()
    {
        return c;
    }

    public final long h()
    {
        return d;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[3];
        aobj[0] = b;
        aobj[1] = Long.valueOf(c);
        aobj[2] = Long.valueOf(d);
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        Object aobj[] = new Object[7];
        aobj[0] = Arrays.toString(e);
        aobj[1] = Long.valueOf(d);
        aobj[2] = Long.valueOf(c);
        aobj[3] = Long.valueOf(g);
        aobj[4] = Long.valueOf(h);
        aobj[5] = b;
        aobj[6] = f;
        return String.format("DataPoint{%s@[%s, %s,raw=%s,insert=%s](%s %s)}", aobj);
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.fitness.data.f.a(this, parcel, i);
    }

}
