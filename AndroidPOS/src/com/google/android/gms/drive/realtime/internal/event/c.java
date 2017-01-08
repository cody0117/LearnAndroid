// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.drive.realtime.internal.event:
//            ParcelableEventList, ParcelableEvent

public final class c
    implements android.os.Parcelable.Creator
{

    public c()
    {
    }

    static void a(ParcelableEventList parcelableeventlist, Parcel parcel, int i)
    {
        int j = com.google.android.gms.common.internal.safeparcel.c.a(parcel);
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 1, parcelableeventlist.a);
        com.google.android.gms.common.internal.safeparcel.c.b(parcel, 2, parcelableeventlist.b, false);
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 3, parcelableeventlist.c, i, false);
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 4, parcelableeventlist.d);
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 5, parcelableeventlist.e, false);
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        boolean flag = false;
        java.util.ArrayList arraylist = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        DataHolder dataholder = null;
        java.util.ArrayList arraylist1 = null;
        int j = 0;
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
                    arraylist1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, ParcelableEvent.CREATOR);
                    break;

                case 3: // '\003'
                    dataholder = (DataHolder)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, DataHolder.CREATOR);
                    break;

                case 4: // '\004'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;

                case 5: // '\005'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.v(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new ParcelableEventList(j, arraylist1, dataholder, flag, arraylist);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new ParcelableEventList[i];
    }
}
