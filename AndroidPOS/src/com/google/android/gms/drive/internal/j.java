// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.drive.internal:
//            OnDownloadProgressResponse

public final class j
    implements android.os.Parcelable.Creator
{

    public j()
    {
    }

    static void a(OnDownloadProgressResponse ondownloadprogressresponse, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, ondownloadprogressresponse.a);
        c.a(parcel, 2, ondownloadprogressresponse.b);
        c.a(parcel, 3, ondownloadprogressresponse.c);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        long l = 0L;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int k = 0;
        long l1 = l;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int i1 = parcel.readInt();
                switch (0xffff & i1)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
                    break;

                case 1: // '\001'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 2: // '\002'
                    l1 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
                    break;

                case 3: // '\003'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new OnDownloadProgressResponse(k, l1, l);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new OnDownloadProgressResponse[i];
    }
}
