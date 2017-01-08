// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.drive:
//            UserMetadata

public final class f
    implements android.os.Parcelable.Creator
{

    public f()
    {
    }

    static void a(UserMetadata usermetadata, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, usermetadata.a);
        c.a(parcel, 2, usermetadata.b, false);
        c.a(parcel, 3, usermetadata.c, false);
        c.a(parcel, 4, usermetadata.d, false);
        c.a(parcel, 5, usermetadata.e);
        c.a(parcel, 6, usermetadata.f, false);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        boolean flag = false;
        String s = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        String s1 = null;
        String s2 = null;
        String s3 = null;
        int j = 0;
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
                    s3 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 3: // '\003'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 4: // '\004'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 5: // '\005'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;

                case 6: // '\006'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new UserMetadata(j, s3, s2, s1, flag, s);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new UserMetadata[i];
    }
}
