// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

// Referenced classes of package com.google.android.gms.drive.internal:
//            OnMetadataResponse

public final class p
    implements android.os.Parcelable.Creator
{

    public p()
    {
    }

    static void a(OnMetadataResponse onmetadataresponse, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, onmetadataresponse.a);
        c.a(parcel, 2, onmetadataresponse.b, i, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        MetadataBundle metadatabundle = null;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int k = parcel.readInt();
                switch (0xffff & k)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    metadatabundle = (MetadataBundle)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, MetadataBundle.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new OnMetadataResponse(j, metadatabundle);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new OnMetadataResponse[i];
    }
}
