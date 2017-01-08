// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.appcontent;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.games.appcontent:
//            AppContentActionEntity, AppContentConditionEntity

public final class a
    implements android.os.Parcelable.Creator
{

    public a()
    {
    }

    static void a(AppContentActionEntity appcontentactionentity, Parcel parcel)
    {
        int i = c.a(parcel);
        c.b(parcel, 1, appcontentactionentity.d_(), false);
        c.a(parcel, 1000, appcontentactionentity.h());
        c.a(parcel, 2, appcontentactionentity.c(), false);
        c.a(parcel, 3, appcontentactionentity.d());
        c.a(parcel, 4, appcontentactionentity.e(), false);
        c.a(parcel, 5, appcontentactionentity.f(), false);
        c.a(parcel, 6, appcontentactionentity.g(), false);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        String s = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        String s1 = null;
        String s2 = null;
        android.os.Bundle bundle = null;
        String s3 = null;
        java.util.ArrayList arraylist = null;
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
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, AppContentConditionEntity.CREATOR);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 3: // '\003'
                    bundle = com.google.android.gms.common.internal.safeparcel.a.q(parcel, k);
                    break;

                case 4: // '\004'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 5: // '\005'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
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
                return new AppContentActionEntity(j, arraylist, s3, bundle, s2, s1, s);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new AppContentActionEntity[i];
    }
}
