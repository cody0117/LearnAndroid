// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.query;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.drive.query.internal.LogicalFilter;

// Referenced classes of package com.google.android.gms.drive.query:
//            Query, SortOrder

public final class a
    implements android.os.Parcelable.Creator
{

    public a()
    {
    }

    static void a(Query query, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1000, query.e);
        c.a(parcel, 1, query.a, i, false);
        c.a(parcel, 3, query.b, false);
        c.a(parcel, 4, query.c, i, false);
        c.a(parcel, 5, query.d, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        java.util.ArrayList arraylist = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        SortOrder sortorder = null;
        String s = null;
        LogicalFilter logicalfilter = null;
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

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 1: // '\001'
                    logicalfilter = (LogicalFilter)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, LogicalFilter.CREATOR);
                    break;

                case 3: // '\003'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 4: // '\004'
                    sortorder = (SortOrder)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, SortOrder.CREATOR);
                    break;

                case 5: // '\005'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.v(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new Query(j, logicalfilter, s, sortorder, arraylist);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new Query[i];
    }
}
