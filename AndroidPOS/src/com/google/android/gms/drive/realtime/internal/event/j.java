// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.drive.realtime.internal.event:
//            ValuesSetDetails

public final class j
    implements android.os.Parcelable.Creator
{

    public j()
    {
    }

    static void a(ValuesSetDetails valuessetdetails, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, valuessetdetails.a);
        c.a(parcel, 2, valuessetdetails.b);
        c.a(parcel, 3, valuessetdetails.c);
        c.a(parcel, 4, valuessetdetails.d);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = 0;
        int k = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int l = 0;
        int i1 = 0;
        int j1 = 0;
        do
        {
            if (parcel.dataPosition() < k)
            {
                int k1 = parcel.readInt();
                switch (0xffff & k1)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, k1);
                    break;

                case 1: // '\001'
                    j1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
                    break;

                case 2: // '\002'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
                    break;

                case 3: // '\003'
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
                    break;

                case 4: // '\004'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
                    break;
                }
            } else
            if (parcel.dataPosition() != k)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(k).toString(), parcel);
            } else
            {
                return new ValuesSetDetails(j1, i1, l, i);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new ValuesSetDetails[i];
    }
}
