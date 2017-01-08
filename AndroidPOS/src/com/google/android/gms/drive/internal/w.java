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
//            OpenFileIntentSenderRequest

public final class w
    implements android.os.Parcelable.Creator
{

    public w()
    {
    }

    static void a(OpenFileIntentSenderRequest openfileintentsenderrequest, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, openfileintentsenderrequest.a);
        c.a(parcel, 2, openfileintentsenderrequest.b, false);
        c.a(parcel, 3, openfileintentsenderrequest.c);
        c.a(parcel, 4, openfileintentsenderrequest.d, i, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        DriveId driveid = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        String s = null;
        int j = 0;
        String as[] = null;
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
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 3: // '\003'
                    as = com.google.android.gms.common.internal.safeparcel.a.u(parcel, k);
                    break;

                case 4: // '\004'
                    driveid = (DriveId)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, DriveId.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new OpenFileIntentSenderRequest(j, s, as, driveid);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new OpenFileIntentSenderRequest[i];
    }
}
