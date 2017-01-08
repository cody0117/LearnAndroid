// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.drive.internal:
//            SetFileUploadPreferencesRequest, FileUploadPreferencesImpl

public final class aa
    implements android.os.Parcelable.Creator
{

    public aa()
    {
    }

    static void a(SetFileUploadPreferencesRequest setfileuploadpreferencesrequest, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, setfileuploadpreferencesrequest.a);
        c.a(parcel, 2, setfileuploadpreferencesrequest.b, i, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        FileUploadPreferencesImpl fileuploadpreferencesimpl = null;
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
                    fileuploadpreferencesimpl = (FileUploadPreferencesImpl)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, FileUploadPreferencesImpl.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new SetFileUploadPreferencesRequest(j, fileuploadpreferencesimpl);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new SetFileUploadPreferencesRequest[i];
    }
}
