// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.CompletionEvent;

// Referenced classes of package com.google.android.gms.drive.internal:
//            OnEventResponse

public final class m
    implements android.os.Parcelable.Creator
{

    public m()
    {
    }

    static void a(OnEventResponse oneventresponse, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, oneventresponse.a);
        c.a(parcel, 2, oneventresponse.b);
        c.a(parcel, 3, oneventresponse.c, i, false);
        c.a(parcel, 5, oneventresponse.d, i, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        ChangeEvent changeevent = null;
        int j = 0;
        int k = 0;
        CompletionEvent completionevent = null;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int l = parcel.readInt();
                switch (0xffff & l)
                {
                case 4: // '\004'
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
                    break;

                case 1: // '\001'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 2: // '\002'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 3: // '\003'
                    changeevent = (ChangeEvent)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, ChangeEvent.CREATOR);
                    break;

                case 5: // '\005'
                    completionevent = (CompletionEvent)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, CompletionEvent.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new OnEventResponse(k, j, changeevent, completionevent);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new OnEventResponse[i];
    }
}
