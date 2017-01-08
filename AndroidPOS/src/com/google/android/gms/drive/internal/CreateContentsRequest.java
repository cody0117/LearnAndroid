// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.px;

// Referenced classes of package com.google.android.gms.drive.internal:
//            ai

public class CreateContentsRequest
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new ai();
    final int a;
    final int b;

    CreateContentsRequest(int i, int j)
    {
        a = i;
        boolean flag;
        if (j == 0x20000000 || j == 0x30000000)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        px.b(flag, "Cannot create a new read-only contents!");
        b = j;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ai.a(this, parcel);
    }

}
