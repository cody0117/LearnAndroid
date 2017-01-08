// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.realtime.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.drive.realtime.internal:
//            BeginCompoundOperationRequest

public final class a
    implements android.os.Parcelable.Creator
{

    public a()
    {
    }

    static void a(BeginCompoundOperationRequest begincompoundoperationrequest, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, begincompoundoperationrequest.a);
        c.a(parcel, 2, begincompoundoperationrequest.b);
        c.a(parcel, 3, begincompoundoperationrequest.c, false);
        c.a(parcel, 4, begincompoundoperationrequest.d);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        boolean flag = false;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        String s = null;
        boolean flag1 = true;
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
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;

                case 3: // '\003'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 4: // '\004'
                    flag1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new BeginCompoundOperationRequest(j, flag, s, flag1);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new BeginCompoundOperationRequest[i];
    }
}
