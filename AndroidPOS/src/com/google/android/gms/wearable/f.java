// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.wearable:
//            PutDataRequest

public final class f
    implements android.os.Parcelable.Creator
{

    public f()
    {
    }

    static void a(PutDataRequest putdatarequest, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, putdatarequest.a);
        c.a(parcel, 2, putdatarequest.a(), i, false);
        c.a(parcel, 4, putdatarequest.c());
        c.a(parcel, 5, putdatarequest.b());
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        android.os.Bundle bundle = null;
        Uri uri = null;
        int j = 0;
        byte abyte0[] = null;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int k = parcel.readInt();
                switch (0xffff & k)
                {
                case 3: // '\003'
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    uri = (Uri)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, Uri.CREATOR);
                    break;

                case 4: // '\004'
                    bundle = com.google.android.gms.common.internal.safeparcel.a.q(parcel, k);
                    break;

                case 5: // '\005'
                    abyte0 = com.google.android.gms.common.internal.safeparcel.a.r(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new PutDataRequest(j, uri, bundle, abyte0);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new PutDataRequest[i];
    }
}
