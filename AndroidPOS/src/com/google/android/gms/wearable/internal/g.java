// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            ai

public final class g
    implements android.os.Parcelable.Creator
{

    public g()
    {
    }

    static void a(ai ai1, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, ai1.a);
        c.a(parcel, 2, ai1.a());
        c.a(parcel, 3, ai1.b(), false);
        c.a(parcel, 4, ai1.c());
        c.a(parcel, 5, ai1.d(), false);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = 0;
        String s = null;
        int j = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        byte abyte0[] = null;
        String s1 = null;
        int k = 0;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int l = parcel.readInt();
                switch (0xffff & l)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
                    break;

                case 1: // '\001'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 2: // '\002'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 3: // '\003'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    break;

                case 4: // '\004'
                    abyte0 = com.google.android.gms.common.internal.safeparcel.a.r(parcel, l);
                    break;

                case 5: // '\005'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(j).toString(), parcel);
            } else
            {
                return new ai(k, i, s1, abyte0, s);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new ai[i];
    }
}
