// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.common.images:
//            h

public final class WebImage
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new h();
    private final int a;
    private final Uri b;
    private final int c;
    private final int d;

    WebImage(int i, Uri uri, int j, int k)
    {
        a = i;
        b = uri;
        c = j;
        d = k;
    }

    final int a()
    {
        return a;
    }

    public final Uri b()
    {
        return b;
    }

    public final int c()
    {
        return c;
    }

    public final int d()
    {
        return d;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || !(obj instanceof WebImage))
            {
                return false;
            }
            WebImage webimage = (WebImage)obj;
            if (!pt.a(b, webimage.b) || c != webimage.c || d != webimage.d)
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[3];
        aobj[0] = b;
        aobj[1] = Integer.valueOf(c);
        aobj[2] = Integer.valueOf(d);
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        Object aobj[] = new Object[3];
        aobj[0] = Integer.valueOf(c);
        aobj[1] = Integer.valueOf(d);
        aobj[2] = b.toString();
        return String.format("Image %dx%d %s", aobj);
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        h.a(this, parcel, i);
    }

}
