// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.drive.realtime.internal.event:
//            ParcelableEvent, TextInsertedDetails, TextDeletedDetails, ValuesAddedDetails, 
//            ValuesRemovedDetails, ValuesSetDetails, ValueChangedDetails, ReferenceShiftedDetails, 
//            ObjectChangedDetails

public final class b
    implements android.os.Parcelable.Creator
{

    public b()
    {
    }

    static void a(ParcelableEvent parcelableevent, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, parcelableevent.a);
        c.a(parcel, 2, parcelableevent.b, false);
        c.a(parcel, 3, parcelableevent.c, false);
        c.a(parcel, 4, parcelableevent.d, false);
        c.a(parcel, 5, parcelableevent.e);
        c.a(parcel, 6, parcelableevent.f, false);
        c.a(parcel, 7, parcelableevent.g, false);
        c.a(parcel, 8, parcelableevent.h, i, false);
        c.a(parcel, 9, parcelableevent.i, i, false);
        c.a(parcel, 10, parcelableevent.j, i, false);
        c.a(parcel, 11, parcelableevent.k, i, false);
        c.a(parcel, 12, parcelableevent.l, i, false);
        c.a(parcel, 13, parcelableevent.m, i, false);
        c.a(parcel, 14, parcelableevent.n, i, false);
        c.a(parcel, 15, parcelableevent.o, i, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        String s = null;
        String s1 = null;
        java.util.ArrayList arraylist = null;
        boolean flag = false;
        String s2 = null;
        String s3 = null;
        TextInsertedDetails textinserteddetails = null;
        TextDeletedDetails textdeleteddetails = null;
        ValuesAddedDetails valuesaddeddetails = null;
        ValuesRemovedDetails valuesremoveddetails = null;
        ValuesSetDetails valuessetdetails = null;
        ValueChangedDetails valuechangeddetails = null;
        ReferenceShiftedDetails referenceshifteddetails = null;
        ObjectChangedDetails objectchangeddetails = null;
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
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 3: // '\003'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 4: // '\004'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.v(parcel, k);
                    break;

                case 5: // '\005'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;

                case 6: // '\006'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 7: // '\007'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 8: // '\b'
                    textinserteddetails = (TextInsertedDetails)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, TextInsertedDetails.CREATOR);
                    break;

                case 9: // '\t'
                    textdeleteddetails = (TextDeletedDetails)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, TextDeletedDetails.CREATOR);
                    break;

                case 10: // '\n'
                    valuesaddeddetails = (ValuesAddedDetails)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, ValuesAddedDetails.CREATOR);
                    break;

                case 11: // '\013'
                    valuesremoveddetails = (ValuesRemovedDetails)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, ValuesRemovedDetails.CREATOR);
                    break;

                case 12: // '\f'
                    valuessetdetails = (ValuesSetDetails)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, ValuesSetDetails.CREATOR);
                    break;

                case 13: // '\r'
                    valuechangeddetails = (ValueChangedDetails)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, ValueChangedDetails.CREATOR);
                    break;

                case 14: // '\016'
                    referenceshifteddetails = (ReferenceShiftedDetails)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, ReferenceShiftedDetails.CREATOR);
                    break;

                case 15: // '\017'
                    objectchangeddetails = (ObjectChangedDetails)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, ObjectChangedDetails.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new ParcelableEvent(j, s, s1, arraylist, flag, s2, s3, textinserteddetails, textdeleteddetails, valuesaddeddetails, valuesremoveddetails, valuessetdetails, valuechangeddetails, referenceshifteddetails, objectchangeddetails);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new ParcelableEvent[i];
    }
}
