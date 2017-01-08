// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.google.android.gms.fitness.request:
//            c, v, t

public class StartBleScanRequest
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new c();
    private final int a;
    private final List b;
    private final t c;
    private final int d;

    StartBleScanRequest(int i, List list, IBinder ibinder, int j)
    {
        a = i;
        b = list;
        c = v.a(ibinder);
        d = j;
    }

    public final List a()
    {
        return Collections.unmodifiableList(b);
    }

    public final int b()
    {
        return d;
    }

    public final IBinder c()
    {
        return c.asBinder();
    }

    final int d()
    {
        return a;
    }

    public int describeContents()
    {
        return 0;
    }

    public final String toString()
    {
        return pt.a(this).a("dataTypes", b).a("timeoutSecs", Integer.valueOf(d)).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.fitness.request.c.a(this, parcel);
    }

}
