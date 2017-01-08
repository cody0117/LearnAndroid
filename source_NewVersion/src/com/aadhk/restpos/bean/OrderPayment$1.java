// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;

import android.os.Parcel;

// Referenced classes of package com.aadhk.restpos.bean:
//            OrderPayment

final class 
    implements android.os.tor
{

    public final OrderPayment createFromParcel(Parcel parcel)
    {
        return new OrderPayment(parcel);
    }

    public final volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public final OrderPayment[] newArray(int i)
    {
        return new OrderPayment[i];
    }

    public final volatile Object[] newArray(int i)
    {
        return newArray(i);
    }

    ()
    {
    }
}
