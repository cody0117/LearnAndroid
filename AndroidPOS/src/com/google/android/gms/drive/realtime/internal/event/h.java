// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.drive.realtime.internal.event:
//            ValuesAddedDetails

public final class h
    implements android.os.Parcelable.Creator
{

    public h()
    {
    }

    static void a(ValuesAddedDetails valuesaddeddetails, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, valuesaddeddetails.a);
        c.a(parcel, 2, valuesaddeddetails.b);
        c.a(parcel, 3, valuesaddeddetails.c);
        c.a(parcel, 4, valuesaddeddetails.d);
        c.a(parcel, 5, valuesaddeddetails.e, false);
        c.a(parcel, 6, valuesaddeddetails.f);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = 0;
        int j = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        String s = null;
        int k = 0;
        int l = 0;
        int i1 = 0;
        int j1 = 0;
        do
        {
            if (parcel.dataPosition() < j)
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
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
                    break;

                case 5: // '\005'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k1);
                    break;

                case 6: // '\006'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(j).toString(), parcel);
            } else
            {
                return new ValuesAddedDetails(j1, i1, l, k, s, i);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new ValuesAddedDetails[i];
    }
}
