// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            oq

public class jj
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new oq();
    final int a;
    final int b;
    int c;
    String d;
    IBinder e;
    Scope f[];
    Bundle g;

    jj(int i, int j, int k, String s, IBinder ibinder, Scope ascope[], Bundle bundle)
    {
        a = i;
        b = j;
        c = k;
        d = s;
        e = ibinder;
        f = ascope;
        g = bundle;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        oq.a(this, parcel, i);
    }

}
