// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.internal:
//            py

public final class tb
    implements android.os.Parcelable.Creator
{

    public tb()
    {
    }

    static void a(py py1, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, py1.a());
        c.a(parcel, 2, py1.a);
        c.a(parcel, py1.b);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        byte abyte0[][] = null;
        String as[] = null;
        int j = 0;
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
                    as = com.google.android.gms.common.internal.safeparcel.a.u(parcel, k);
                    break;

                case 3: // '\003'
                    int l = com.google.android.gms.common.internal.safeparcel.a.a(parcel, k);
                    int i1 = parcel.dataPosition();
                    if (l == 0)
                    {
                        abyte0 = null;
                    } else
                    {
                        int j1 = parcel.readInt();
                        abyte0 = new byte[j1][];
                        for (int k1 = 0; k1 < j1; k1++)
                        {
                            abyte0[k1] = parcel.createByteArray();
                        }

                        parcel.setDataPosition(i1 + l);
                    }
                    break;
                }
            } else
            {
                if (parcel.dataPosition() != i)
                {
                    throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
                }
                return new py(j, as, abyte0);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new py[i];
    }
}
