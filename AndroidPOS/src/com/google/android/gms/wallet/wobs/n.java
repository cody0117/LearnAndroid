// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.wallet.wobs:
//            q

public final class n
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new q();
    String a;
    String b;
    private final int c;

    n()
    {
        c = 1;
    }

    n(int i, String s, String s1)
    {
        c = i;
        a = s;
        b = s1;
    }

    public final int a()
    {
        return c;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        q.a(this, parcel);
    }

}
