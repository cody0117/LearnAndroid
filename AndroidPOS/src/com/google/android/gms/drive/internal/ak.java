// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

// Referenced classes of package com.google.android.gms.drive.internal:
//            CreateFileRequest

public final class ak
    implements android.os.Parcelable.Creator
{

    public ak()
    {
    }

    static void a(CreateFileRequest createfilerequest, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, createfilerequest.a);
        c.a(parcel, 2, createfilerequest.b, i, false);
        c.a(parcel, 3, createfilerequest.c, i, false);
        c.a(parcel, 4, createfilerequest.d, i, false);
        c.a(parcel, 5, createfilerequest.e);
        c.a(parcel, 6, createfilerequest.f);
        c.a(parcel, 7, createfilerequest.g, false);
        c.a(parcel, 8, createfilerequest.h);
        c.a(parcel, 9, createfilerequest.i);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = 0;
        String s = null;
        int j = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int k = 0;
        boolean flag = false;
        Integer integer = null;
        Contents contents = null;
        MetadataBundle metadatabundle = null;
        DriveId driveid = null;
        int l = 0;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int i1 = parcel.readInt();
                switch (0xffff & i1)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
                    break;

                case 1: // '\001'
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 2: // '\002'
                    driveid = (DriveId)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, DriveId.CREATOR);
                    break;

                case 3: // '\003'
                    metadatabundle = (MetadataBundle)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, MetadataBundle.CREATOR);
                    break;

                case 4: // '\004'
                    contents = (Contents)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, Contents.CREATOR);
                    break;

                case 5: // '\005'
                    integer = com.google.android.gms.common.internal.safeparcel.a.h(parcel, i1);
                    break;

                case 6: // '\006'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1);
                    break;

                case 7: // '\007'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
                    break;

                case 8: // '\b'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 9: // '\t'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(j).toString(), parcel);
            } else
            {
                return new CreateFileRequest(l, driveid, metadatabundle, contents, integer, flag, s, k, i);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new CreateFileRequest[i];
    }
}
