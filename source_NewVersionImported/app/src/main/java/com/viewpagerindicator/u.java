// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.viewpagerindicator;

import android.os.Parcel;

final class u
    implements android.os.Parcelable.Creator
{

    u()
    {
    }

    public final Object createFromParcel(Parcel parcel)
    {
        return new TitlePageIndicator.SavedState(parcel, (byte)0);
    }

    public final volatile Object[] newArray(int i)
    {
        return new TitlePageIndicator.SavedState[i];
    }
}
