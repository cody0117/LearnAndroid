// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.maps.model.internal:
//            f, a

public final class e
    implements SafeParcelable
{

    public static final f CREATOR = new f();
    private final int a;
    private a b;

    public e()
    {
        a = 1;
    }

    e(int i, a a1)
    {
        a = i;
        b = a1;
    }

    final int a()
    {
        return a;
    }

    public final a b()
    {
        return b;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        f.a(this, parcel, i);
    }

}
