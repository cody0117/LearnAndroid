// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.fitness.data:
//            u, DataSource, DataType

public class Subscription
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new u();
    private final int a;
    private final DataSource b;
    private final DataType c;
    private final long d;
    private final int e;

    Subscription(int i, DataSource datasource, DataType datatype, long l, int j)
    {
        a = i;
        b = datasource;
        c = datatype;
        d = l;
        e = j;
    }

    public final DataSource a()
    {
        return b;
    }

    public final DataType b()
    {
        return c;
    }

    public final int c()
    {
        return e;
    }

    public final long d()
    {
        return d;
    }

    public int describeContents()
    {
        return 0;
    }

    final int e()
    {
        return a;
    }

    public final boolean equals(Object obj)
    {
label0:
        {
            if (this != obj)
            {
                boolean flag1 = obj instanceof Subscription;
                boolean flag = false;
                if (!flag1)
                {
                    break label0;
                }
                Subscription subscription = (Subscription)obj;
                boolean flag2;
                if (pt.a(b, subscription.b) && pt.a(c, subscription.c) && d == subscription.d && e == subscription.e)
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
        Object aobj[] = new Object[4];
        aobj[0] = b;
        aobj[1] = b;
        aobj[2] = Long.valueOf(d);
        aobj[3] = Integer.valueOf(e);
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        return pt.a(this).a("dataSource", b).a("dataType", c).a("samplingIntervalMicros", Long.valueOf(d)).a("accuracyMode", Integer.valueOf(e)).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        u.a(this, parcel, i);
    }

}
