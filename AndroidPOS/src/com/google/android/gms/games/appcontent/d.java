// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.appcontent;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.games.appcontent:
//            AppContentConditionEntity

public final class d
    implements android.os.Parcelable.Creator
{

    public d()
    {
    }

    static void a(AppContentConditionEntity appcontentconditionentity, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, appcontentconditionentity.g_(), false);
        c.a(parcel, 1000, appcontentconditionentity.f());
        c.a(parcel, 2, appcontentconditionentity.c(), false);
        c.a(parcel, 3, appcontentconditionentity.d(), false);
        c.a(parcel, 4, appcontentconditionentity.e());
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        android.os.Bundle bundle = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        String s = null;
        String s1 = null;
        String s2 = null;
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
                    s2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 3: // '\003'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 4: // '\004'
                    bundle = com.google.android.gms.common.internal.safeparcel.a.q(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new AppContentConditionEntity(j, s2, s1, s, bundle);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new AppContentConditionEntity[i];
    }
}
