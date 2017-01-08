// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            na, hh

public class hd
    implements SafeParcelable
{

    public static final na CREATOR = new na();
    final int a;
    final hh b[];
    public final String c;
    public final boolean d;
    public final Account e;

    hd(int i, hh ahh[], String s, boolean flag, Account account)
    {
        a = i;
        b = ahh;
        c = s;
        d = flag;
        e = account;
    }

    public int describeContents()
    {
        na _tmp = CREATOR;
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        na _tmp = CREATOR;
        na.a(this, parcel, i);
    }

}
