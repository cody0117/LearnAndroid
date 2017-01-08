// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.px;
import java.util.List;

// Referenced classes of package com.google.android.gms.drive:
//            d

public class RealtimeDocumentSyncRequest
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new d();
    final int a;
    final List b;
    final List c;

    RealtimeDocumentSyncRequest(int i, List list, List list1)
    {
        a = i;
        b = (List)px.a(list);
        c = (List)px.a(list1);
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        d.a(this, parcel);
    }

}
