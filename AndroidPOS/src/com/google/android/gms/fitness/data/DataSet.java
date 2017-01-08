// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.google.android.gms.fitness.data:
//            g, RawDataPoint, DataPoint, RawDataSet, 
//            DataSource, DataType

public final class DataSet
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new g();
    private final int a;
    private final DataSource b;
    private final DataType c;
    private final List d;
    private final List e;
    private boolean f;

    DataSet(int i, DataSource datasource, DataType datatype, List list, List list1, boolean flag)
    {
        f = false;
        a = i;
        b = datasource;
        c = datatype;
        f = flag;
        d = new ArrayList(list.size());
        if (i < 2)
        {
            list1 = Collections.singletonList(datasource);
        }
        e = list1;
        RawDataPoint rawdatapoint;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); d.add(new DataPoint(e, rawdatapoint)))
        {
            rawdatapoint = (RawDataPoint)iterator.next();
        }

    }

    public DataSet(RawDataSet rawdataset, List list, List list1)
    {
        this(3, (DataSource)a(list, rawdataset.b), (DataType)a(list1, rawdataset.c), rawdataset.d, list, rawdataset.e);
    }

    private static Object a(List list, int i)
    {
        if (i >= 0 && i < list.size())
        {
            return list.get(i);
        } else
        {
            return null;
        }
    }

    public final DataSource a()
    {
        return b;
    }

    final List a(List list)
    {
        ArrayList arraylist = new ArrayList(d.size());
        for (Iterator iterator = d.iterator(); iterator.hasNext(); arraylist.add(new RawDataPoint((DataPoint)iterator.next(), list))) { }
        return arraylist;
    }

    public final DataType b()
    {
        return c;
    }

    public final boolean c()
    {
        return f;
    }

    final int d()
    {
        return a;
    }

    public final int describeContents()
    {
        return 0;
    }

    final List e()
    {
        return a(e);
    }

    public final boolean equals(Object obj)
    {
label0:
        {
            if (obj != this)
            {
                boolean flag1 = obj instanceof DataSet;
                boolean flag = false;
                if (!flag1)
                {
                    break label0;
                }
                DataSet dataset = (DataSet)obj;
                boolean flag2;
                if (pt.a(c, dataset.c) && pt.a(b, dataset.b) && pt.a(d, dataset.d) && f == dataset.f)
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

    final List f()
    {
        return e;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[2];
        aobj[0] = c;
        aobj[1] = b;
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        Object obj = e();
        Object aobj[] = new Object[2];
        aobj[0] = b.i();
        if (d.size() >= 10)
        {
            Object aobj1[] = new Object[2];
            aobj1[0] = Integer.valueOf(d.size());
            aobj1[1] = ((List) (obj)).subList(0, 5);
            obj = String.format("%d data points, first 5: %s", aobj1);
        }
        aobj[1] = obj;
        return String.format("DataSet{%s %s}", aobj);
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        g.a(this, parcel, i);
    }

}
