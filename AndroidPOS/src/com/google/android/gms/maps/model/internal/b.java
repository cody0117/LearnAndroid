// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model.internal;

import android.graphics.Bitmap;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.maps.model.internal:
//            a

public final class b
    implements android.os.Parcelable.Creator
{

    public b()
    {
    }

    static void a(com.google.android.gms.maps.model.internal.a a1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, a1.a());
        c.a(parcel, 2, a1.b());
        c.a(parcel, 3, a1.c());
        c.a(parcel, 4, a1.d(), i, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        Bitmap bitmap = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        byte byte0 = 0;
        int j = 0;
        android.os.Bundle bundle = null;
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
                    byte0 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, k);
                    break;

                case 3: // '\003'
                    bundle = com.google.android.gms.common.internal.safeparcel.a.q(parcel, k);
                    break;

                case 4: // '\004'
                    bitmap = (Bitmap)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, Bitmap.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new com.google.android.gms.maps.model.internal.a(j, byte0, bundle, bitmap);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new com.google.android.gms.maps.model.internal.a[i];
    }
}
