// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.fitness.data:
//            p, DataPoint, v, Value

public final class RawDataPoint
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new p();
    final int a;
    final long b;
    final long c;
    final Value d[];
    final int e;
    final int f;
    final long g;
    final long h;

    RawDataPoint(int i, long l, long l1, Value avalue[], int j, 
            int k, long l2, long l3)
    {
        a = i;
        b = l;
        c = l1;
        e = j;
        f = k;
        g = l2;
        h = l3;
        d = avalue;
    }

    RawDataPoint(DataPoint datapoint, List list)
    {
        a = 4;
        b = datapoint.a(TimeUnit.NANOSECONDS);
        c = datapoint.b(TimeUnit.NANOSECONDS);
        d = datapoint.a();
        e = v.a(datapoint.b(), list);
        f = v.a(datapoint.c(), list);
        g = datapoint.d();
        h = datapoint.e();
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
                boolean flag1 = obj instanceof RawDataPoint;
                boolean flag = false;
                if (!flag1)
                {
                    break label0;
                }
                RawDataPoint rawdatapoint = (RawDataPoint)obj;
                boolean flag2;
                if (b == rawdatapoint.b && c == rawdatapoint.c && Arrays.equals(d, rawdatapoint.d) && e == rawdatapoint.e && f == rawdatapoint.f && g == rawdatapoint.g)
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
        Object aobj[] = new Object[2];
        aobj[0] = Long.valueOf(b);
        aobj[1] = Long.valueOf(c);
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        Object aobj[] = new Object[5];
        aobj[0] = Arrays.toString(d);
        aobj[1] = Long.valueOf(c);
        aobj[2] = Long.valueOf(b);
        aobj[3] = Integer.valueOf(e);
        aobj[4] = Integer.valueOf(f);
        return String.format("RawDataPoint{%s@[%s, %s](%d,%d)}", aobj);
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        p.a(this, parcel, i);
    }

}
