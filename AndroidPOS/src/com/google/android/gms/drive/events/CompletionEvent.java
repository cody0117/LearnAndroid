// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.events;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.google.android.gms.drive.events:
//            ResourceEvent, b

public final class CompletionEvent
    implements SafeParcelable, ResourceEvent
{

    public static final android.os.Parcelable.Creator CREATOR = new b();
    final int a;
    final DriveId b;
    final String c;
    final ParcelFileDescriptor d;
    final ParcelFileDescriptor e;
    final MetadataBundle f;
    final List g;
    final int h;
    final IBinder i;
    private boolean j;
    private boolean k;
    private boolean l;

    CompletionEvent(int i1, DriveId driveid, String s, ParcelFileDescriptor parcelfiledescriptor, ParcelFileDescriptor parcelfiledescriptor1, MetadataBundle metadatabundle, List list, 
            int j1, IBinder ibinder)
    {
        j = false;
        k = false;
        l = false;
        a = i1;
        b = driveid;
        c = s;
        d = parcelfiledescriptor;
        e = parcelfiledescriptor1;
        f = metadatabundle;
        g = list;
        h = j1;
        i = ibinder;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final String toString()
    {
        String s;
        Locale locale;
        Object aobj[];
        if (g == null)
        {
            s = "<null>";
        } else
        {
            s = (new StringBuilder("'")).append(TextUtils.join("','", g)).append("'").toString();
        }
        locale = Locale.US;
        aobj = new Object[3];
        aobj[0] = b;
        aobj[1] = Integer.valueOf(h);
        aobj[2] = s;
        return String.format(locale, "CompletionEvent [id=%s, status=%s, trackingTag=%s]", aobj);
    }

    public final void writeToParcel(Parcel parcel, int i1)
    {
        com.google.android.gms.drive.events.b.a(this, parcel, i1);
    }

}
