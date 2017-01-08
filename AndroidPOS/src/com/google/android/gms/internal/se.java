// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.internal:
//            ny, nu

public final class se
    implements android.os.Parcelable.Creator
{

    public se()
    {
    }

    static void a(ny ny1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1000, ny1.b);
        c.a(parcel, 2, ny1.a(), i, false);
        c.a(parcel, 3, ny1.b());
        c.a(parcel, 4, ny1.c());
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        nu nu1 = null;
        long l = com.google.android.gms.internal.ny.a;
        int k = 102;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int i1 = parcel.readInt();
                switch (0xffff & i1)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 2: // '\002'
                    nu1 = (nu)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, nu.CREATOR);
                    break;

                case 3: // '\003'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
                    break;

                case 4: // '\004'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new ny(j, nu1, l, k);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new ny[i];
    }
}
