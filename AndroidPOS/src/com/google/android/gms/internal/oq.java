// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.internal:
//            jj

public final class oq
    implements android.os.Parcelable.Creator
{

    public oq()
    {
    }

    static void a(jj jj1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, jj1.a);
        c.a(parcel, 2, jj1.b);
        c.a(parcel, 3, jj1.c);
        c.a(parcel, 4, jj1.d, false);
        c.a(parcel, 5, jj1.e);
        c.a(parcel, 6, jj1.f, i);
        c.a(parcel, 7, jj1.g);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = 0;
        android.os.Bundle bundle = null;
        int j = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        Scope ascope[] = null;
        android.os.IBinder ibinder = null;
        String s = null;
        int k = 0;
        int l = 0;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int i1 = parcel.readInt();
                switch (0xffff & i1)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
                    break;

                case 1: // '\001'
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 2: // '\002'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 3: // '\003'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 4: // '\004'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
                    break;

                case 5: // '\005'
                    ibinder = com.google.android.gms.common.internal.safeparcel.a.p(parcel, i1);
                    break;

                case 6: // '\006'
                    ascope = (Scope[])com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1, Scope.CREATOR);
                    break;

                case 7: // '\007'
                    bundle = com.google.android.gms.common.internal.safeparcel.a.q(parcel, i1);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(j).toString(), parcel);
            } else
            {
                return new jj(l, k, i, s, ibinder, ascope, bundle);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new jj[i];
    }
}
