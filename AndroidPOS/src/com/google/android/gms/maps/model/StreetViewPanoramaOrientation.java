// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import com.google.android.gms.internal.px;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.maps.model:
//            q

public class StreetViewPanoramaOrientation
    implements SafeParcelable
{

    public static final q CREATOR = new q();
    public final float a;
    public final float b;
    private final int c;

    public StreetViewPanoramaOrientation(float f, float f1)
    {
        this(1, f, f1);
    }

    StreetViewPanoramaOrientation(int i, float f, float f1)
    {
        boolean flag;
        if (-90F <= f && f <= 90F)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        px.b(flag, "Tilt needs to be between -90 and 90 inclusive");
        c = i;
        a = 0.0F + f;
        if ((double)f1 <= 0.0D)
        {
            f1 = 360F + f1 % 360F;
        }
        b = f1 % 360F;
    }

    final int a()
    {
        return c;
    }

    public int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof StreetViewPanoramaOrientation))
            {
                return false;
            }
            StreetViewPanoramaOrientation streetviewpanoramaorientation = (StreetViewPanoramaOrientation)obj;
            if (Float.floatToIntBits(a) != Float.floatToIntBits(streetviewpanoramaorientation.a) || Float.floatToIntBits(b) != Float.floatToIntBits(streetviewpanoramaorientation.b))
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[2];
        aobj[0] = Float.valueOf(a);
        aobj[1] = Float.valueOf(b);
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        return pt.a(this).a("tilt", Float.valueOf(a)).a("bearing", Float.valueOf(b)).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        q.a(this, parcel);
    }

}
