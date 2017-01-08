// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.result;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.Bucket;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.RawBucket;
import com.google.android.gms.fitness.data.RawDataSet;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.google.android.gms.fitness.result:
//            b

public class DataReadResult
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new b();
    private final int a;
    private final List b;
    private final Status c;
    private final List d;
    private int e;
    private final List f;
    private final List g;

    DataReadResult(int i, List list, Status status, List list1, int j, List list2, List list3)
    {
        a = i;
        c = status;
        e = j;
        f = list2;
        g = list3;
        b = new ArrayList(list.size());
        RawDataSet rawdataset;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); b.add(new DataSet(rawdataset, list2, list3)))
        {
            rawdataset = (RawDataSet)iterator.next();
        }

        d = new ArrayList(list1.size());
        RawBucket rawbucket;
        for (Iterator iterator1 = list1.iterator(); iterator1.hasNext(); d.add(new Bucket(rawbucket, list2, list3)))
        {
            rawbucket = (RawBucket)iterator1.next();
        }

    }

    public final int a()
    {
        return e;
    }

    public final Status b()
    {
        return c;
    }

    final int c()
    {
        return a;
    }

    final List d()
    {
        ArrayList arraylist = new ArrayList(d.size());
        for (Iterator iterator = d.iterator(); iterator.hasNext(); arraylist.add(new RawBucket((Bucket)iterator.next(), f, g))) { }
        return arraylist;
    }

    public int describeContents()
    {
        return 0;
    }

    final List e()
    {
        ArrayList arraylist = new ArrayList(b.size());
        for (Iterator iterator = b.iterator(); iterator.hasNext(); arraylist.add(new RawDataSet((DataSet)iterator.next(), f, g))) { }
        return arraylist;
    }

    public final boolean equals(Object obj)
    {
label0:
        {
            if (this != obj)
            {
                boolean flag1 = obj instanceof DataReadResult;
                boolean flag = false;
                if (!flag1)
                {
                    break label0;
                }
                DataReadResult datareadresult = (DataReadResult)obj;
                boolean flag2;
                if (c.equals(datareadresult.c) && pt.a(b, datareadresult.b) && pt.a(d, datareadresult.d))
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
        return f;
    }

    final List g()
    {
        return g;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[3];
        aobj[0] = c;
        aobj[1] = b;
        aobj[2] = d;
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        pu pu1 = pt.a(this).a("status", c);
        Object obj;
        pu pu2;
        Object obj1;
        if (b.size() > 5)
        {
            obj = (new StringBuilder()).append(b.size()).append(" data sets").toString();
        } else
        {
            obj = b;
        }
        pu2 = pu1.a("dataSets", obj);
        if (d.size() > 5)
        {
            obj1 = (new StringBuilder()).append(d.size()).append(" buckets").toString();
        } else
        {
            obj1 = d;
        }
        return pu2.a("buckets", obj1).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.fitness.result.b.a(this, parcel, i);
    }

}
