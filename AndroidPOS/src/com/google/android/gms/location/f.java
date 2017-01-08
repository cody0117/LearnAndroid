// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.location:
//            LocationRequest

public final class f
    implements android.os.Parcelable.Creator
{

    public f()
    {
    }

    static void a(LocationRequest locationrequest, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, locationrequest.a);
        c.a(parcel, 1000, locationrequest.a());
        c.a(parcel, 2, locationrequest.b);
        c.a(parcel, 3, locationrequest.c);
        c.a(parcel, 4, locationrequest.d);
        c.a(parcel, 5, locationrequest.e);
        c.a(parcel, 6, locationrequest.f);
        c.a(parcel, 7, locationrequest.g);
        c.a(parcel, 8, locationrequest.h);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        int k = 102;
        long l = 0x36ee80L;
        long l1 = 0x927c0L;
        boolean flag = false;
        long l2 = 0x7fffffffffffffffL;
        int i1 = 0x7fffffff;
        float f1 = 0.0F;
        long l3 = 0L;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int j1 = parcel.readInt();
                switch (0xffff & j1)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, j1);
                    break;

                case 1: // '\001'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 2: // '\002'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 3: // '\003'
                    l1 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 4: // '\004'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;

                case 5: // '\005'
                    l2 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 6: // '\006'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 7: // '\007'
                    f1 = com.google.android.gms.common.internal.safeparcel.a.l(parcel, j1);
                    break;

                case 8: // '\b'
                    l3 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new LocationRequest(j, k, l, l1, flag, l2, i1, f1, l3);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new LocationRequest[i];
    }
}
