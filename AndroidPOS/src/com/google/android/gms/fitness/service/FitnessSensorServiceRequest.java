// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.service;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.l;
import com.google.android.gms.fitness.data.m;
import com.google.android.gms.internal.pt;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.fitness.service:
//            a

public class FitnessSensorServiceRequest
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new a();
    private final int a;
    private final DataSource b;
    private final l c;
    private final long d;
    private final long e;

    FitnessSensorServiceRequest(int i, DataSource datasource, IBinder ibinder, long l1, long l2)
    {
        a = i;
        b = datasource;
        c = m.a(ibinder);
        d = l1;
        e = l2;
    }

    public final DataSource a()
    {
        return b;
    }

    final int b()
    {
        return a;
    }

    final IBinder c()
    {
        return c.asBinder();
    }

    public final long d()
    {
        return d;
    }

    public int describeContents()
    {
        return 0;
    }

    public final long e()
    {
        return e;
    }

    public final boolean equals(Object obj)
    {
label0:
        {
            if (this != obj)
            {
                boolean flag1 = obj instanceof FitnessSensorServiceRequest;
                boolean flag = false;
                if (!flag1)
                {
                    break label0;
                }
                FitnessSensorServiceRequest fitnesssensorservicerequest = (FitnessSensorServiceRequest)obj;
                boolean flag2;
                if (pt.a(b, fitnesssensorservicerequest.b) && d == fitnesssensorservicerequest.d && e == fitnesssensorservicerequest.e)
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
        aobj[0] = b;
        aobj[1] = Long.valueOf(d);
        aobj[2] = Long.valueOf(e);
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        Object aobj[] = new Object[1];
        aobj[0] = b;
        return String.format("FitnessSensorServiceRequest{%s}", aobj);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.fitness.service.a.a(this, parcel, i);
    }

}
