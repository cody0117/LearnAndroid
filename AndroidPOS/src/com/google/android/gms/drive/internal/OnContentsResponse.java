// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.Contents;

// Referenced classes of package com.google.android.gms.drive.internal:
//            h

public class OnContentsResponse
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new h();
    final int a;
    final Contents b;
    final boolean c;

    OnContentsResponse(int i, Contents contents, boolean flag)
    {
        a = i;
        b = contents;
        c = flag;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        h.a(this, parcel, i);
    }

}
