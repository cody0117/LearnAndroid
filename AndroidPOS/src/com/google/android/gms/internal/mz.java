// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;

// Referenced classes of package com.google.android.gms.internal:
//            ha

final class mz
    implements android.os.Parcelable.Creator
{

    mz()
    {
    }

    public final Object createFromParcel(Parcel parcel)
    {
        return new ha(parcel);
    }

    public final Object[] newArray(int i)
    {
        return new ha[i];
    }
}
