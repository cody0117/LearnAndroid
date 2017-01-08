// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.model.CameraPosition;

// Referenced classes of package com.google.android.gms.maps:
//            GoogleMapOptions

public final class c
    implements android.os.Parcelable.Creator
{

    public c()
    {
    }

    static void a(GoogleMapOptions googlemapoptions, Parcel parcel, int i)
    {
        int j = com.google.android.gms.common.internal.safeparcel.c.a(parcel);
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 1, googlemapoptions.a());
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 2, googlemapoptions.b());
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 3, googlemapoptions.c());
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 4, googlemapoptions.l());
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 5, googlemapoptions.m(), i, false);
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 6, googlemapoptions.d());
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 7, googlemapoptions.e());
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 8, googlemapoptions.f());
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 9, googlemapoptions.g());
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 10, googlemapoptions.h());
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 11, googlemapoptions.i());
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 12, googlemapoptions.j());
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 14, googlemapoptions.k());
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        byte byte0 = 0;
        byte byte1 = 0;
        int k = 0;
        CameraPosition cameraposition = null;
        byte byte2 = 0;
        byte byte3 = 0;
        byte byte4 = 0;
        byte byte5 = 0;
        byte byte6 = 0;
        byte byte7 = 0;
        byte byte8 = 0;
        byte byte9 = 0;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int l = parcel.readInt();
                switch (0xffff & l)
                {
                case 13: // '\r'
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 2: // '\002'
                    byte0 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, l);
                    break;

                case 3: // '\003'
                    byte1 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, l);
                    break;

                case 4: // '\004'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 5: // '\005'
                    cameraposition = (CameraPosition)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, CameraPosition.CREATOR);
                    break;

                case 6: // '\006'
                    byte2 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, l);
                    break;

                case 7: // '\007'
                    byte3 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, l);
                    break;

                case 8: // '\b'
                    byte4 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, l);
                    break;

                case 9: // '\t'
                    byte5 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, l);
                    break;

                case 10: // '\n'
                    byte6 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, l);
                    break;

                case 11: // '\013'
                    byte7 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, l);
                    break;

                case 12: // '\f'
                    byte8 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, l);
                    break;

                case 14: // '\016'
                    byte9 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, l);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new GoogleMapOptions(j, byte0, byte1, k, cameraposition, byte2, byte3, byte4, byte5, byte6, byte7, byte8, byte9);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new GoogleMapOptions[i];
    }
}
