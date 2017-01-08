// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            ru, pt, pu

public class mq
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new ru();
    private final int a;
    private final List b;

    mq(int i, List list)
    {
        a = i;
        b = list;
    }

    public final List a()
    {
        return Collections.unmodifiableList(b);
    }

    final int b()
    {
        return a;
    }

    public int describeContents()
    {
        return 0;
    }

    public final String toString()
    {
        return pt.a(this).a("dataTypes", b).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ru.a(this, parcel);
    }

}
