// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.internal.px;

// Referenced classes of package com.google.android.gms.drive.internal:
//            al

public class CreateFolderRequest
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new al();
    final int a;
    final DriveId b;
    final MetadataBundle c;

    CreateFolderRequest(int i, DriveId driveid, MetadataBundle metadatabundle)
    {
        a = i;
        b = (DriveId)px.a(driveid);
        c = (MetadataBundle)px.a(metadatabundle);
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        al.a(this, parcel, i);
    }

}
