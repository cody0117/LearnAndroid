// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.quest;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.games.quest:
//            MilestoneEntity

public final class a
    implements android.os.Parcelable.Creator
{

    public a()
    {
    }

    static void a(MilestoneEntity milestoneentity, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, milestoneentity.q_(), false);
        c.a(parcel, 1000, milestoneentity.h());
        c.a(parcel, 2, milestoneentity.c());
        c.a(parcel, 3, milestoneentity.f());
        c.a(parcel, 4, milestoneentity.g());
        c.a(parcel, 5, milestoneentity.e());
        c.a(parcel, 6, milestoneentity.d(), false);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        long l = 0L;
        int i = 0;
        String s = null;
        int j = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        long l1 = l;
        byte abyte0[] = null;
        String s1 = null;
        int k = 0;
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
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
                    break;

                case 1000: 
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 2: // '\002'
                    l1 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
                    break;

                case 3: // '\003'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
                    break;

                case 4: // '\004'
                    abyte0 = com.google.android.gms.common.internal.safeparcel.a.r(parcel, i1);
                    break;

                case 5: // '\005'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 6: // '\006'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(j).toString(), parcel);
            } else
            {
                return new MilestoneEntity(k, s1, l1, l, abyte0, i, s);
            }
        } while (true);
    }

    public final volatile Object[] newArray(int i)
    {
        return new MilestoneEntity[i];
    }
}
