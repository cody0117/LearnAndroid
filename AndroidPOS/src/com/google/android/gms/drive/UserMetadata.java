// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.drive:
//            f

public class UserMetadata
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new f();
    final int a;
    final String b;
    final String c;
    final String d;
    final boolean e;
    final String f;

    UserMetadata(int i, String s, String s1, String s2, boolean flag, String s3)
    {
        a = i;
        b = s;
        c = s1;
        d = s2;
        e = flag;
        f = s3;
    }

    public int describeContents()
    {
        return 0;
    }

    public final String toString()
    {
        Object aobj[] = new Object[5];
        aobj[0] = b;
        aobj[1] = c;
        aobj[2] = d;
        aobj[3] = Boolean.valueOf(e);
        aobj[4] = f;
        return String.format("Permission ID: '%s', Display Name: '%s', Picture URL: '%s', Authenticated User: %b, Email: '%s'", aobj);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.drive.f.a(this, parcel);
    }

}
