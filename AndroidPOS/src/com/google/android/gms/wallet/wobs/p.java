// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.wallet.wobs:
//            r, l, n

public final class p
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new r();
    String a;
    String b;
    l c;
    n d;
    n e;
    private final int f;

    p()
    {
        f = 1;
    }

    p(int i, String s, String s1, l l, n n, n n1)
    {
        f = i;
        a = s;
        b = s1;
        c = l;
        d = n;
        e = n1;
    }

    public final int a()
    {
        return f;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        r.a(this, parcel, i);
    }

}
