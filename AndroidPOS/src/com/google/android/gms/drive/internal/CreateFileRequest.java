// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.internal.px;

// Referenced classes of package com.google.android.gms.drive.internal:
//            ak

public class CreateFileRequest
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new ak();
    final int a;
    final DriveId b;
    final MetadataBundle c;
    final Contents d;
    final Integer e;
    final boolean f;
    final String g;
    final int h;
    final int i;

    CreateFileRequest(int j, DriveId driveid, MetadataBundle metadatabundle, Contents contents, Integer integer, boolean flag, String s, 
            int k, int l)
    {
        if (contents != null && l != 0)
        {
            boolean flag1;
            if (contents.a() == l)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            px.b(flag1, "inconsistent contents reference");
        }
        if ((integer == null || integer.intValue() == 0) && contents == null && l == 0)
        {
            throw new IllegalArgumentException("Need a valid contents");
        } else
        {
            a = j;
            b = (DriveId)px.a(driveid);
            c = (MetadataBundle)px.a(metadatabundle);
            d = contents;
            e = integer;
            g = s;
            h = k;
            f = flag;
            i = l;
            return;
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int j)
    {
        ak.a(this, parcel, j);
    }

}
