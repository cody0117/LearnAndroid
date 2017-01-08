// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.auth;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.auth:
//            b

public class AccountChangeEventsRequest
    implements SafeParcelable
{

    public static final b CREATOR = new b();
    final int a;
    int b;
    String c;

    public AccountChangeEventsRequest()
    {
        a = 1;
    }

    AccountChangeEventsRequest(int i, int j, String s)
    {
        a = i;
        b = j;
        c = s;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.auth.b.a(this, parcel);
    }

}
