// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.internal:
//            ea

public final class gd
    implements android.os.Parcelable.Creator
{

    public gd()
    {
    }

    static void a(ea ea1, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, ea1.a);
        c.a(parcel, 3, ea1.b());
        c.a(parcel, 4, ea1.c());
        c.a(parcel, 5, ea1.d());
        c.a(parcel, 6, ea1.a());
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        android.os.IBinder ibinder = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        android.os.IBinder ibinder1 = null;
        android.os.IBinder ibinder2 = null;
        android.os.IBinder ibinder3 = null;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int k = parcel.readInt();
                switch (0xffff & k)
                {
                case 2: // '\002'
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 3: // '\003'
                    ibinder3 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, k);
                    break;

                case 4: // '\004'
                    ibinder2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, k);
                    break;

                case 5: // '\005'
                    ibinder1 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, k);
                    break;

                case 6: // '\006'
                    ibinder = com.google.android.gms.common.internal.safeparcel.a.p(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new ea(j, ibinder3, ibinder2, ibinder1, ibinder);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new ea[i];
    }
}
