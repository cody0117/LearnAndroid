// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;

import android.os.Parcel;

// Referenced classes of package com.aadhk.restpos.bean:
//            Reservation

final class 
    implements android.os.ator
{

    public final Reservation createFromParcel(Parcel parcel)
    {
        return new Reservation(parcel);
    }

    public final volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public final Reservation[] newArray(int i)
    {
        return new Reservation[i];
    }

    public final volatile Object[] newArray(int i)
    {
        return newArray(i);
    }

    ()
    {
    }
}
