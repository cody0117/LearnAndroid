// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.internal:
//            if

public final class np
    implements android.os.Parcelable.Creator
{

    public np()
    {
    }

    static void a(if if1, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, if1.b);
        c.a(parcel, 1000, if1.a);
        c.a(parcel, 2, if1.c);
        c.a(parcel, 3, if1.d);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        byte abyte0[] = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        int k = 0;
        android.os.Bundle bundle = null;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int l = parcel.readInt();
                switch (0xffff & l)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 1000: 
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 2: // '\002'
                    bundle = com.google.android.gms.common.internal.safeparcel.a.q(parcel, l);
                    break;

                case 3: // '\003'
                    abyte0 = com.google.android.gms.common.internal.safeparcel.a.r(parcel, l);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new if(k, j, bundle, abyte0);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new if[i];
    }
}
