// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.drive:
//            RealtimeDocumentSyncRequest

public final class d
    implements android.os.Parcelable.Creator
{

    public d()
    {
    }

    static void a(RealtimeDocumentSyncRequest realtimedocumentsyncrequest, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, realtimedocumentsyncrequest.a);
        c.a(parcel, 2, realtimedocumentsyncrequest.b, false);
        c.a(parcel, 3, realtimedocumentsyncrequest.c, false);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        java.util.ArrayList arraylist = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        java.util.ArrayList arraylist1 = null;
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
                    arraylist1 = com.google.android.gms.common.internal.safeparcel.a.v(parcel, k);
                    break;

                case 3: // '\003'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.v(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new RealtimeDocumentSyncRequest(j, arraylist1, arraylist);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new RealtimeDocumentSyncRequest[i];
    }
}
