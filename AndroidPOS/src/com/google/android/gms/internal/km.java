// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            qe, ko, qh

public class km
    implements SafeParcelable
{

    public static final qe CREATOR = new qe();
    private final int a;
    private final ko b;

    km(int i, ko ko1)
    {
        a = i;
        b = ko1;
    }

    private km(ko ko1)
    {
        a = 1;
        b = ko1;
    }

    public static km a(qh qh)
    {
        if (qh instanceof ko)
        {
            return new km((ko)qh);
        } else
        {
            throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
        }
    }

    final int a()
    {
        return a;
    }

    final ko b()
    {
        return b;
    }

    public final qh c()
    {
        if (b != null)
        {
            return b;
        } else
        {
            throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
        }
    }

    public int describeContents()
    {
        qe _tmp = CREATOR;
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        qe _tmp = CREATOR;
        qe.a(this, parcel, i);
    }

}
