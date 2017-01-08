// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.cast;

import android.os.Parcel;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.cast:
//            CastDevice

public final class b
    implements android.os.Parcelable.Creator
{

    public b()
    {
    }

    static void a(CastDevice castdevice, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, castdevice.a());
        c.a(parcel, 2, castdevice.b(), false);
        c.a(parcel, 3, castdevice.a, false);
        c.a(parcel, 4, castdevice.c(), false);
        c.a(parcel, 5, castdevice.d(), false);
        c.a(parcel, 6, castdevice.e(), false);
        c.a(parcel, 7, castdevice.f());
        c.b(parcel, 8, castdevice.g(), false);
        c.a(parcel, 9, castdevice.h());
        c.a(parcel, 10, castdevice.i());
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = 0;
        java.util.ArrayList arraylist = null;
        int j = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int k = 0;
        int l = 0;
        String s = null;
        String s1 = null;
        String s2 = null;
        String s3 = null;
        String s4 = null;
        int i1 = 0;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int j1 = parcel.readInt();
                switch (0xffff & j1)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, j1);
                    break;

                case 1: // '\001'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 2: // '\002'
                    s4 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;

                case 3: // '\003'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;

                case 4: // '\004'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;

                case 5: // '\005'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;

                case 6: // '\006'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;

                case 7: // '\007'
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 8: // '\b'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1, WebImage.CREATOR);
                    break;

                case 9: // '\t'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 10: // '\n'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.b((new StringBuilder("Overread allowed size end=")).append(j).toString(), parcel);
            } else
            {
                return new CastDevice(i1, s4, s3, s2, s1, s, l, arraylist, k, i);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new CastDevice[i];
    }
}
