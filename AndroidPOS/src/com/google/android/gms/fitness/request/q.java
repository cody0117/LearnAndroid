// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.l;
import com.google.android.gms.fitness.data.m;

// Referenced classes of package com.google.android.gms.fitness.request:
//            ac

public class q
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new ac();
    private final int a;
    private final l b;
    private final PendingIntent c;

    q(int i, IBinder ibinder, PendingIntent pendingintent)
    {
        a = i;
        l l1;
        if (ibinder == null)
        {
            l1 = null;
        } else
        {
            l1 = m.a(ibinder);
        }
        b = l1;
        c = pendingintent;
    }

    public final PendingIntent a()
    {
        return c;
    }

    final int b()
    {
        return a;
    }

    final IBinder c()
    {
        if (b == null)
        {
            return null;
        } else
        {
            return b.asBinder();
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public final String toString()
    {
        Object aobj[] = new Object[1];
        aobj[0] = b;
        return String.format("SensorUnregistrationRequest{%s}", aobj);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ac.a(this, parcel, i);
    }

}
