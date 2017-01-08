// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.drive.internal:
//            b

public final class FileUploadPreferencesImpl
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new b();
    final int a;
    int b;
    int c;
    boolean d;

    FileUploadPreferencesImpl(int i, int j, int k, boolean flag)
    {
        a = i;
        b = j;
        c = k;
        d = flag;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.drive.internal.b.a(this, parcel);
    }

}
