// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.drive.DriveId;

// Referenced classes of package com.google.android.gms.drive.internal:
//            AuthorizeAccessRequest

public final class v
    implements android.os.Parcelable.Creator
{

    public v()
    {
    }

    static void a(AuthorizeAccessRequest authorizeaccessrequest, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, authorizeaccessrequest.a);
        c.a(parcel, 2, authorizeaccessrequest.b);
        c.a(parcel, 3, authorizeaccessrequest.c, i, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        DriveId driveid = null;
        long l = 0L;
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
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, k);
                    break;

                case 3: // '\003'
                    driveid = (DriveId)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, DriveId.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new AuthorizeAccessRequest(j, l, driveid);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new AuthorizeAccessRequest[i];
    }
}
