// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import java.util.Arrays;
import java.util.List;

// Referenced classes of package com.google.android.gms.fitness.data:
//            r, DataSet, v

public final class RawDataSet
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new r();
    final int a;
    final int b;
    final int c;
    final List d;
    final boolean e;

    RawDataSet(int i, int j, int k, List list, boolean flag)
    {
        a = i;
        b = j;
        c = k;
        d = list;
        e = flag;
    }

    public RawDataSet(DataSet dataset, List list, List list1)
    {
        a = 2;
        d = dataset.a(list);
        e = dataset.c();
        b = v.a(dataset.a(), list);
        c = v.a(dataset.b(), list1);
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
                boolean flag1 = obj instanceof RawDataSet;
                boolean flag = false;
                if (!flag1)
                {
                    break label0;
                }
                RawDataSet rawdataset = (RawDataSet)obj;
                boolean flag2;
                if (b == rawdataset.b && c == rawdataset.c && e == rawdataset.e && pt.a(d, rawdataset.d))
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
        aobj[0] = Integer.valueOf(b);
        aobj[1] = Integer.valueOf(c);
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        Object aobj[] = new Object[3];
        aobj[0] = Integer.valueOf(b);
        aobj[1] = Integer.valueOf(c);
        aobj[2] = d;
        return String.format("RawDataSet{%s@[%s, %s]}", aobj);
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        r.a(this, parcel);
    }

}
