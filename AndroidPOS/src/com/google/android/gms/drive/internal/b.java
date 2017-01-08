// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.drive.internal:
//            FileUploadPreferencesImpl

public final class b
    implements android.os.Parcelable.Creator
{

    public b()
    {
    }

    static void a(FileUploadPreferencesImpl fileuploadpreferencesimpl, Parcel parcel)
    {
        int i = c.a(parcel);
        c.a(parcel, 1, fileuploadpreferencesimpl.a);
        c.a(parcel, 2, fileuploadpreferencesimpl.b);
        c.a(parcel, 3, fileuploadpreferencesimpl.c);
        c.a(parcel, 4, fileuploadpreferencesimpl.d);
        c.a(parcel, i);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        boolean flag = false;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        int k = 0;
        int l = 0;
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
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 2: // '\002'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 3: // '\003'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 4: // '\004'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new FileUploadPreferencesImpl(l, k, j, flag);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new FileUploadPreferencesImpl[i];
    }
}
