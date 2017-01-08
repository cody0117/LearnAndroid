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
//            n, c, StreetViewPanoramaOrientation

public class StreetViewPanoramaCamera
    implements SafeParcelable
{

    public static final n CREATOR = new n();
    public final float a;
    public final float b;
    public final float c;
    private final int d;
    private StreetViewPanoramaOrientation e;

    StreetViewPanoramaCamera(int i, float f, float f1, float f2)
    {
        boolean flag;
        float f3;
        c c1;
        if (-90F <= f1 && f1 <= 90F)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        px.b(flag, "Tilt needs to be between -90 and 90 inclusive");
        d = i;
        if ((double)f <= 0.0D)
        {
            f = 0.0F;
        }
        a = f;
        b = f1 + 0.0F;
        if ((double)f2 <= 0.0D)
        {
            f3 = 360F + f2 % 360F;
        } else
        {
            f3 = f2;
        }
        c = f3 % 360F;
        c1 = new c();
        c1.b = f1;
        c1.a = f2;
        e = new StreetViewPanoramaOrientation(c1.b, c1.a);
    }

    final int a()
    {
        return d;
    }

    public int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof StreetViewPanoramaCamera))
            {
                return false;
            }
            StreetViewPanoramaCamera streetviewpanoramacamera = (StreetViewPanoramaCamera)obj;
            if (Float.floatToIntBits(a) != Float.floatToIntBits(streetviewpanoramacamera.a) || Float.floatToIntBits(b) != Float.floatToIntBits(streetviewpanoramacamera.b) || Float.floatToIntBits(c) != Float.floatToIntBits(streetviewpanoramacamera.c))
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[3];
        aobj[0] = Float.valueOf(a);
        aobj[1] = Float.valueOf(b);
        aobj[2] = Float.valueOf(c);
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        return pt.a(this).a("zoom", Float.valueOf(a)).a("tilt", Float.valueOf(b)).a("bearing", Float.valueOf(c)).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        n.a(this, parcel);
    }

}
