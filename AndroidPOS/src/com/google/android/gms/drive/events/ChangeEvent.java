// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.events;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import java.util.Locale;

// Referenced classes of package com.google.android.gms.drive.events:
//            ResourceEvent, a

public final class ChangeEvent
    implements SafeParcelable, ResourceEvent
{

    public static final android.os.Parcelable.Creator CREATOR = new a();
    final int a;
    final DriveId b;
    final int c;

    ChangeEvent(int i, DriveId driveid, int j)
    {
        a = i;
        b = driveid;
        c = j;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final String toString()
    {
        Locale locale = Locale.US;
        Object aobj[] = new Object[2];
        aobj[0] = b;
        aobj[1] = Integer.valueOf(c);
        return String.format(locale, "ChangeEvent [id=%s,changeFlags=%x]", aobj);
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.drive.events.a.a(this, parcel, i);
    }

}
