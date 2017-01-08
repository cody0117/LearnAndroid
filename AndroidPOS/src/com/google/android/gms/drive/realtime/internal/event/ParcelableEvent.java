// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

// Referenced classes of package com.google.android.gms.drive.realtime.internal.event:
//            b, TextInsertedDetails, TextDeletedDetails, ValuesAddedDetails, 
//            ValuesRemovedDetails, ValuesSetDetails, ValueChangedDetails, ReferenceShiftedDetails, 
//            ObjectChangedDetails

public class ParcelableEvent
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new b();
    final int a;
    final String b;
    final String c;
    final List d;
    final boolean e;
    final String f;
    final String g;
    final TextInsertedDetails h;
    final TextDeletedDetails i;
    final ValuesAddedDetails j;
    final ValuesRemovedDetails k;
    final ValuesSetDetails l;
    final ValueChangedDetails m;
    final ReferenceShiftedDetails n;
    final ObjectChangedDetails o;

    ParcelableEvent(int i1, String s, String s1, List list, boolean flag, String s2, String s3, 
            TextInsertedDetails textinserteddetails, TextDeletedDetails textdeleteddetails, ValuesAddedDetails valuesaddeddetails, ValuesRemovedDetails valuesremoveddetails, ValuesSetDetails valuessetdetails, ValueChangedDetails valuechangeddetails, ReferenceShiftedDetails referenceshifteddetails, 
            ObjectChangedDetails objectchangeddetails)
    {
        a = i1;
        b = s;
        c = s1;
        d = list;
        e = flag;
        f = s2;
        g = s3;
        h = textinserteddetails;
        i = textdeleteddetails;
        j = valuesaddeddetails;
        k = valuesremoveddetails;
        l = valuessetdetails;
        m = valuechangeddetails;
        n = referenceshifteddetails;
        o = objectchangeddetails;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i1)
    {
        com.google.android.gms.drive.realtime.internal.event.b.a(this, parcel, i1);
    }

}
