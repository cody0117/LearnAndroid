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
//            LoadRealtimeRequest

public final class f
    implements android.os.Parcelable.Creator
{

    public f()
    {
    }

    static void a(LoadRealtimeRequest loadrealtimerequest, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, loadrealtimerequest.a);
        c.a(parcel, 2, loadrealtimerequest.b, i, false);
        c.a(parcel, 3, loadrealtimerequest.c);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        DriveId driveid = null;
        int j = 0;
        boolean flag = false;
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
                    driveid = (DriveId)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, DriveId.CREATOR);
                    break;

                case 3: // '\003'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new LoadRealtimeRequest(j, driveid, flag);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new LoadRealtimeRequest[i];
    }
}
