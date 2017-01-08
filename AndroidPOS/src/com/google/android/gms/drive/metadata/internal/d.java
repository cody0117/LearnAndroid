// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.drive.metadata.CustomPropertyKey;

// Referenced classes of package com.google.android.gms.drive.metadata.internal:
//            CustomProperty

public final class d
    implements android.os.Parcelable.Creator
{

    public d()
    {
    }

    static void a(CustomProperty customproperty, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, customproperty.a);
        c.a(parcel, 2, customproperty.b, i, false);
        c.a(parcel, 3, customproperty.c, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        CustomPropertyKey custompropertykey = null;
        int j = 0;
        String s = null;
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
                    custompropertykey = (CustomPropertyKey)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, CustomPropertyKey.CREATOR);
                    break;

                case 3: // '\003'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new CustomProperty(j, custompropertykey, s);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new CustomProperty[i];
    }
}
