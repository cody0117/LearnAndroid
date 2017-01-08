// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.fitness.data:
//            Device

public final class j
    implements android.os.Parcelable.Creator
{

    public j()
    {
    }

    static void a(Device device, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, device.a(), false);
        c.a(parcel, 1000, device.j());
        c.a(parcel, 2, device.b(), false);
        c.a(parcel, 3, device.c(), false);
        c.a(parcel, 4, device.i(), false);
        c.a(parcel, 5, device.e());
        c.a(parcel, 6, device.f());
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        String s = null;
        int i = 0;
        int k = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int l = 0;
        String s1 = null;
        String s2 = null;
        int i1 = 0;
        do
        {
            if (parcel.dataPosition() < k)
            {
                int j1 = parcel.readInt();
                switch (0xffff & j1)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, j1);
                    break;

                case 1: // '\001'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;

                case 1000: 
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 2: // '\002'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;

                case 3: // '\003'
                    com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;

                case 4: // '\004'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;

                case 5: // '\005'
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 6: // '\006'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;
                }
            } else
            if (parcel.dataPosition() != k)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(k).toString(), parcel);
            } else
            {
                return new Device(i1, s2, s1, s, l, i);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new Device[i];
    }
}
