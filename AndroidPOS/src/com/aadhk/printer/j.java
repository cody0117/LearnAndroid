// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.printer;

import android.os.Parcel;

// Referenced classes of package com.aadhk.printer:
//            PrinterSetting

final class j
    implements android.os.Parcelable.Creator
{

    j()
    {
    }

    public final Object createFromParcel(Parcel parcel)
    {
        return new PrinterSetting(parcel);
    }

    public final volatile Object[] newArray(int i)
    {
        return new PrinterSetting[i];
    }
}
