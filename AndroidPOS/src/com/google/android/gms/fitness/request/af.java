// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.Subscription;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;

// Referenced classes of package com.google.android.gms.fitness.request:
//            f

public class af
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new f();
    private final int a;
    private final Subscription b;
    private final boolean c;

    af(int i, Subscription subscription, boolean flag)
    {
        a = i;
        b = subscription;
        c = flag;
    }

    public final Subscription a()
    {
        return b;
    }

    public final boolean b()
    {
        return c;
    }

    final int c()
    {
        return a;
    }

    public int describeContents()
    {
        return 0;
    }

    public final String toString()
    {
        return pt.a(this).a("subscription", b).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        f.a(this, parcel, i);
    }

}
