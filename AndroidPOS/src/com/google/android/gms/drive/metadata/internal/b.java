// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.drive.metadata.internal:
//            AppVisibleCustomProperties, CustomProperty

public final class b
    implements android.os.Parcelable.Creator
{

    public b()
    {
    }

    static void a(AppVisibleCustomProperties appvisiblecustomproperties, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, appvisiblecustomproperties.b);
        c.b(parcel, 2, appvisiblecustomproperties.c, false);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
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
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, CustomProperty.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new AppVisibleCustomProperties(j, arraylist);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new AppVisibleCustomProperties[i];
    }
}