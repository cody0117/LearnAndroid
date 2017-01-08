// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.appcontent;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.games.appcontent:
//            AppContentCardEntity, AppContentActionEntity, AppContentAnnotationEntity, AppContentConditionEntity

public final class c
    implements android.os.Parcelable.Creator
{

    public c()
    {
    }

    static void a(AppContentCardEntity appcontentcardentity, Parcel parcel, int i)
    {
        int j = com.google.android.gms.common.internal.safeparcel.c.a(parcel);
        com.google.android.gms.common.internal.safeparcel.c.b(parcel, 1, appcontentcardentity.f_(), false);
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 1000, appcontentcardentity.o());
        com.google.android.gms.common.internal.safeparcel.c.b(parcel, 2, appcontentcardentity.c(), false);
        com.google.android.gms.common.internal.safeparcel.c.b(parcel, 3, appcontentcardentity.d(), false);
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 4, appcontentcardentity.e(), false);
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 5, appcontentcardentity.f());
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 6, appcontentcardentity.g(), false);
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 7, appcontentcardentity.h());
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 8, appcontentcardentity.i(), i, false);
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 9, appcontentcardentity.j(), i, false);
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 10, appcontentcardentity.k(), false);
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 11, appcontentcardentity.l(), false);
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 12, appcontentcardentity.m());
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, 13, appcontentcardentity.n(), false);
        com.google.android.gms.common.internal.safeparcel.c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        java.util.ArrayList arraylist = null;
        java.util.ArrayList arraylist1 = null;
        java.util.ArrayList arraylist2 = null;
        String s = null;
        int k = 0;
        String s1 = null;
        android.os.Bundle bundle = null;
        Uri uri = null;
        Uri uri1 = null;
        String s2 = null;
        String s3 = null;
        int l = 0;
        String s4 = null;
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
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1, AppContentActionEntity.CREATOR);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 2: // '\002'
                    arraylist1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1, AppContentAnnotationEntity.CREATOR);
                    break;

                case 3: // '\003'
                    arraylist2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1, AppContentConditionEntity.CREATOR);
                    break;

                case 4: // '\004'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
                    break;

                case 5: // '\005'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 6: // '\006'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
                    break;

                case 7: // '\007'
                    bundle = com.google.android.gms.common.internal.safeparcel.a.q(parcel, i1);
                    break;

                case 8: // '\b'
                    uri = (Uri)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, Uri.CREATOR);
                    break;

                case 9: // '\t'
                    uri1 = (Uri)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, Uri.CREATOR);
                    break;

                case 10: // '\n'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
                    break;

                case 11: // '\013'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
                    break;

                case 12: // '\f'
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 13: // '\r'
                    s4 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new AppContentCardEntity(j, arraylist, arraylist1, arraylist2, s, k, s1, bundle, uri, uri1, s2, s3, l, s4);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new AppContentCardEntity[i];
    }
}
