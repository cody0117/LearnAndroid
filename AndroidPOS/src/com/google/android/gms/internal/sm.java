// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.internal:
//            ov

public final class sm
    implements android.os.Parcelable.Creator
{

    public sm()
    {
    }

    static void a(ov ov1, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, ov1.a);
        c.a(parcel, 2, ov1.b, false);
        c.a(parcel, 3, ov1.c);
        c.a(parcel, 4, ov1.d);
        c.a(parcel, 5, ov1.e, false);
        c.a(parcel, 6, ov1.f, false);
        c.a(parcel, 7, ov1.g);
        c.a(parcel, 8, ov1.h, false);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = 0;
        String s = null;
        int j = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        boolean flag = true;
        String s1 = null;
        String s2 = null;
        int k = 0;
        String s3 = null;
        int l = 0;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int i1 = parcel.readInt();
                switch (0xffff & i1)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
                    break;

                case 1: // '\001'
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 2: // '\002'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
                    break;

                case 3: // '\003'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 4: // '\004'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 5: // '\005'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
                    break;

                case 6: // '\006'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
                    break;

                case 7: // '\007'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1);
                    break;

                case 8: // '\b'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(j).toString(), parcel);
            } else
            {
                return new ov(l, s3, k, i, s2, s1, flag, s);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new ov[i];
    }
}
