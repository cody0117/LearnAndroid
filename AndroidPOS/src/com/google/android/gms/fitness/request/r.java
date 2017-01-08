// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.fitness.data.Field;

// Referenced classes of package com.google.android.gms.fitness.request:
//            DataTypeCreateRequest

public final class r
    implements android.os.Parcelable.Creator
{

    public r()
    {
    }

    static void a(DataTypeCreateRequest datatypecreaterequest, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, datatypecreaterequest.a(), false);
        c.a(parcel, 1000, datatypecreaterequest.c());
        c.b(parcel, 2, datatypecreaterequest.b(), false);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        java.util.ArrayList arraylist = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        String s = null;
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
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, Field.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new DataTypeCreateRequest(j, s, arraylist);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new DataTypeCreateRequest[i];
    }
}
