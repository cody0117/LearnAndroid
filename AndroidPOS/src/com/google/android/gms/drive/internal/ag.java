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
//            CloseContentsAndUpdateMetadataRequest

public final class ag
    implements android.os.Parcelable.Creator
{

    public ag()
    {
    }

    static void a(CloseContentsAndUpdateMetadataRequest closecontentsandupdatemetadatarequest, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, closecontentsandupdatemetadatarequest.a);
        c.a(parcel, 2, closecontentsandupdatemetadatarequest.b, i, false);
        c.a(parcel, 3, closecontentsandupdatemetadatarequest.c, i, false);
        c.a(parcel, 4, closecontentsandupdatemetadatarequest.d, i, false);
        c.a(parcel, 5, closecontentsandupdatemetadatarequest.e);
        c.a(parcel, 6, closecontentsandupdatemetadatarequest.f, false);
        c.a(parcel, 7, closecontentsandupdatemetadatarequest.g);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = 0;
        String s = null;
        int j = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        boolean flag = false;
        Contents contents = null;
        MetadataBundle metadatabundle = null;
        DriveId driveid = null;
        int k = 0;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int l = parcel.readInt();
                switch (0xffff & l)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
                    break;

                case 1: // '\001'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 2: // '\002'
                    driveid = (DriveId)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, DriveId.CREATOR);
                    break;

                case 3: // '\003'
                    metadatabundle = (MetadataBundle)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, MetadataBundle.CREATOR);
                    break;

                case 4: // '\004'
                    contents = (Contents)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, Contents.CREATOR);
                    break;

                case 5: // '\005'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l);
                    break;

                case 6: // '\006'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    break;

                case 7: // '\007'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(j).toString(), parcel);
            } else
            {
                return new CloseContentsAndUpdateMetadataRequest(k, driveid, metadatabundle, contents, flag, s, i);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new CloseContentsAndUpdateMetadataRequest[i];
    }
}
