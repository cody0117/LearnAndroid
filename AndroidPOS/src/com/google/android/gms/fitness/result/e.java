// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.result;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.fitness.data.Subscription;

// Referenced classes of package com.google.android.gms.fitness.result:
//            ListSubscriptionsResult

public final class e
    implements android.os.Parcelable.Creator
{

    public e()
    {
    }

    static void a(ListSubscriptionsResult listsubscriptionsresult, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.b(parcel, 1, listsubscriptionsresult.a(), false);
        c.a(parcel, 1000, listsubscriptionsresult.c());
        c.a(parcel, 2, listsubscriptionsresult.b(), i, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        Status status = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
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
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, Subscription.CREATOR);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    status = (Status)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, Status.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new ListSubscriptionsResult(j, arraylist, status);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new ListSubscriptionsResult[i];
    }
}
