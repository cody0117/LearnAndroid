// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.i;

// Referenced classes of package com.google.android.gms.drive.internal:
//            n

public class OnListEntriesResponse extends i
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new n();
    final int a;
    final DataHolder b;
    final boolean c;

    OnListEntriesResponse(int j, DataHolder dataholder, boolean flag)
    {
        a = j;
        b = dataholder;
        c = flag;
    }

    protected final void a(Parcel parcel, int j)
    {
        n.a(this, parcel, j);
    }

    public int describeContents()
    {
        return 0;
    }

}
