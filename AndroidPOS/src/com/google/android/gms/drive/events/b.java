// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

// Referenced classes of package com.google.android.gms.drive.events:
//            CompletionEvent

public final class b
    implements android.os.Parcelable.Creator
{

    public b()
    {
    }

    static void a(CompletionEvent completionevent, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, completionevent.a);
        c.a(parcel, 2, completionevent.b, i, false);
        c.a(parcel, 3, completionevent.c, false);
        c.a(parcel, 4, completionevent.d, i, false);
        c.a(parcel, 5, completionevent.e, i, false);
        c.a(parcel, 6, completionevent.f, i, false);
        c.a(parcel, 7, completionevent.g, false);
        c.a(parcel, 8, completionevent.h);
        c.a(parcel, 9, completionevent.i);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = 0;
        android.os.IBinder ibinder = null;
        int j = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        java.util.ArrayList arraylist = null;
        MetadataBundle metadatabundle = null;
        ParcelFileDescriptor parcelfiledescriptor = null;
        ParcelFileDescriptor parcelfiledescriptor1 = null;
        String s = null;
        DriveId driveid = null;
        int k = 0;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int l = parcel.readInt();
                switch (0xffff & l)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
                    break;

                case 1: // '\001'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 2: // '\002'
                    driveid = (DriveId)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, DriveId.CREATOR);
                    break;

                case 3: // '\003'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    break;

                case 4: // '\004'
                    parcelfiledescriptor1 = (ParcelFileDescriptor)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, ParcelFileDescriptor.CREATOR);
                    break;

                case 5: // '\005'
                    parcelfiledescriptor = (ParcelFileDescriptor)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, ParcelFileDescriptor.CREATOR);
                    break;

                case 6: // '\006'
                    metadatabundle = (MetadataBundle)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, MetadataBundle.CREATOR);
                    break;

                case 7: // '\007'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.v(parcel, l);
                    break;

                case 8: // '\b'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 9: // '\t'
                    ibinder = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.b((new StringBuilder("Overread allowed size end=")).append(j).toString(), parcel);
            } else
            {
                return new CompletionEvent(k, driveid, s, parcelfiledescriptor1, parcelfiledescriptor, metadatabundle, arraylist, i, ibinder);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new CompletionEvent[i];
    }
}
