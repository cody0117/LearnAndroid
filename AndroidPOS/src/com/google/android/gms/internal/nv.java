// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.internal:
//            io

public final class nv
    implements android.os.Parcelable.Creator
{

    public nv()
    {
    }

    static void a(io io1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, io1.a());
        c.a(parcel, 2, io1.b());
        c.a(parcel, 3, io1.c());
        c.a(parcel, 4, io1.d());
        c.a(parcel, 5, io1.f(), i, false);
        c.a(parcel, 6, io1.e());
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = 0;
        int j = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        double d = 0.0D;
        ApplicationMetadata applicationmetadata = null;
        int k = 0;
        boolean flag = false;
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
                    d = com.google.android.gms.common.internal.safeparcel.a.m(parcel, i1);
                    break;

                case 3: // '\003'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1);
                    break;

                case 4: // '\004'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 5: // '\005'
                    applicationmetadata = (ApplicationMetadata)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, ApplicationMetadata.CREATOR);
                    break;

                case 6: // '\006'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(j).toString(), parcel);
            } else
            {
                return new io(l, d, flag, k, applicationmetadata, i);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new io[i];
    }
}
