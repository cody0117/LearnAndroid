// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.internal:
//            ay

public final class at
    implements android.os.Parcelable.Creator
{

    public at()
    {
    }

    public static ay a(Parcel parcel)
    {
        ay aay[] = null;
        int i = 0;
        int j = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int k = 0;
        boolean flag = false;
        int l = 0;
        int i1 = 0;
        String s = null;
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
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k1);
                    break;

                case 3: // '\003'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
                    break;

                case 4: // '\004'
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
                    break;

                case 5: // '\005'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k1);
                    break;

                case 6: // '\006'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
                    break;

                case 7: // '\007'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
                    break;

                case 8: // '\b'
                    aay = (ay[])com.google.android.gms.common.internal.safeparcel.a.b(parcel, k1, ay.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(j).toString(), parcel);
            } else
            {
                return new ay(j1, s, i1, l, flag, k, i, aay);
            }
        } while (true);
    }

    static void a(ay ay1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, ay1.a);
        c.a(parcel, 2, ay1.b, false);
        c.a(parcel, 3, ay1.c);
        c.a(parcel, 4, ay1.d);
        c.a(parcel, 5, ay1.e);
        c.a(parcel, 6, ay1.f);
        c.a(parcel, 7, ay1.g);
        c.a(parcel, 8, ay1.h, i);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        return a(parcel);
    }

    public final Object[] newArray(int i)
    {
        return new ay[i];
    }
}
