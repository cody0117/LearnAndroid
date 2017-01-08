// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.bean;

import android.os.Parcel;

// Referenced classes of package com.aadhk.product.library.bean:
//            Currency

final class a
    implements android.os.Parcelable.Creator
{

    a()
    {
    }

    public final Object createFromParcel(Parcel parcel)
    {
        return new Currency(parcel);
    }

    public final volatile Object[] newArray(int i)
    {
        return new Currency[i];
    }
}
