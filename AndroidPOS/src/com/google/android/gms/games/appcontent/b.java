// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.appcontent;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.games.appcontent:
//            AppContentAnnotationEntity

public final class b
    implements android.os.Parcelable.Creator
{

    public b()
    {
    }

    static void a(AppContentAnnotationEntity appcontentannotationentity, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, appcontentannotationentity.e_(), false);
        c.a(parcel, 1000, appcontentannotationentity.f());
        c.a(parcel, 2, appcontentannotationentity.c(), i, false);
        c.a(parcel, 3, appcontentannotationentity.d(), false);
        c.a(parcel, 4, appcontentannotationentity.e(), false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        String s = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        String s1 = null;
        Uri uri = null;
        String s2 = null;
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
                    s2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    uri = (Uri)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, Uri.CREATOR);
                    break;

                case 3: // '\003'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 4: // '\004'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new AppContentAnnotationEntity(j, s2, uri, s1, s);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new AppContentAnnotationEntity[i];
    }
}
