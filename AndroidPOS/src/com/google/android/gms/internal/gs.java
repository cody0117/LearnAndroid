// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            mf

public final class gs
    implements SafeParcelable
{

    public static final mf CREATOR = new mf();
    public final int a;
    public String b;
    public int c;
    public int d;
    public boolean e;

    public gs()
    {
        this(1, "afma-sdk-a-v6587000.6587000.0", 0x648278, 0x648278, true);
    }

    gs(int i, String s, int j, int k, boolean flag)
    {
        a = i;
        b = s;
        c = j;
        d = k;
        e = flag;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        mf.a(this, parcel);
    }

}
