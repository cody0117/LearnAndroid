// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            np

public class if
    implements SafeParcelable
{

    public static final np CREATOR = new np();
    final int a;
    final int b;
    final Bundle c;
    final byte d[];

    public if(int i, int j, Bundle bundle, byte abyte0[])
    {
        a = i;
        b = j;
        c = bundle;
        d = abyte0;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        np.a(this, parcel);
    }

}
