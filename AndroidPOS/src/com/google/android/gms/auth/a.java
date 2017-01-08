// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.auth;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.auth:
//            AccountChangeEvent

public final class a
    implements android.os.Parcelable.Creator
{

    public a()
    {
    }

    static void a(AccountChangeEvent accountchangeevent, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, accountchangeevent.a);
        c.a(parcel, 2, accountchangeevent.b);
        c.a(parcel, 3, accountchangeevent.c, false);
        c.a(parcel, 4, accountchangeevent.d);
        c.a(parcel, 5, accountchangeevent.e);
        c.a(parcel, 6, accountchangeevent.f, false);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        String s = null;
        int i = 0;
        int j = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        long l = 0L;
        int k = 0;
        String s1 = null;
        int i1 = 0;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int j1 = parcel.readInt();
                switch (0xffff & j1)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, j1);
                    break;

                case 1: // '\001'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 2: // '\002'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 3: // '\003'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;

                case 4: // '\004'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 5: // '\005'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 6: // '\006'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(j).toString(), parcel);
            } else
            {
                return new AccountChangeEvent(i1, l, s1, k, i, s);
            }
        } while (true);
    }

    public final volatile Object[] newArray(int i)
    {
        return new AccountChangeEvent[i];
    }
}
