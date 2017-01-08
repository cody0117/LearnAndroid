// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import com.google.android.gms.internal.px;
import com.google.android.gms.maps.internal.b;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.maps.model:
//            f, LatLng, b

public final class CameraPosition
    implements SafeParcelable
{

    public static final f CREATOR = new f();
    public final LatLng a;
    public final float b;
    public final float c;
    public final float d;
    private final int e;

    CameraPosition(int i, LatLng latlng, float f1, float f2, float f3)
    {
        px.a(latlng, "null camera target");
        boolean flag;
        if (0.0F <= f2 && f2 <= 90F)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        px.b(flag, "Tilt needs to be between 0 and 90 inclusive");
        e = i;
        a = latlng;
        b = f1;
        c = f2 + 0.0F;
        if ((double)f3 <= 0.0D)
        {
            f3 = 360F + f3 % 360F;
        }
        d = f3 % 360F;
    }

    public CameraPosition(LatLng latlng, float f1, float f2, float f3)
    {
        this(1, latlng, f1, f2, f3);
    }

    public static CameraPosition a(Context context, AttributeSet attributeset)
    {
        if (attributeset == null)
        {
            return null;
        }
        TypedArray typedarray = context.getResources().obtainAttributes(attributeset, com.google.android.gms.R.styleable.MapAttrs);
        float f1;
        float f2;
        LatLng latlng;
        com.google.android.gms.maps.model.b b1;
        if (typedarray.hasValue(com.google.android.gms.R.styleable.MapAttrs_cameraTargetLat))
        {
            f1 = typedarray.getFloat(com.google.android.gms.R.styleable.MapAttrs_cameraTargetLat, 0.0F);
        } else
        {
            f1 = 0.0F;
        }
        if (typedarray.hasValue(com.google.android.gms.R.styleable.MapAttrs_cameraTargetLng))
        {
            f2 = typedarray.getFloat(com.google.android.gms.R.styleable.MapAttrs_cameraTargetLng, 0.0F);
        } else
        {
            f2 = 0.0F;
        }
        latlng = new LatLng(f1, f2);
        b1 = new com.google.android.gms.maps.model.b();
        b1.a(latlng);
        if (typedarray.hasValue(com.google.android.gms.R.styleable.MapAttrs_cameraZoom))
        {
            b1.a(typedarray.getFloat(com.google.android.gms.R.styleable.MapAttrs_cameraZoom, 0.0F));
        }
        if (typedarray.hasValue(com.google.android.gms.R.styleable.MapAttrs_cameraBearing))
        {
            b1.c(typedarray.getFloat(com.google.android.gms.R.styleable.MapAttrs_cameraBearing, 0.0F));
        }
        if (typedarray.hasValue(com.google.android.gms.R.styleable.MapAttrs_cameraTilt))
        {
            b1.b(typedarray.getFloat(com.google.android.gms.R.styleable.MapAttrs_cameraTilt, 0.0F));
        }
        return b1.a();
    }

    final int a()
    {
        return e;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof CameraPosition))
            {
                return false;
            }
            CameraPosition cameraposition = (CameraPosition)obj;
            if (!a.equals(cameraposition.a) || Float.floatToIntBits(b) != Float.floatToIntBits(cameraposition.b) || Float.floatToIntBits(c) != Float.floatToIntBits(cameraposition.c) || Float.floatToIntBits(d) != Float.floatToIntBits(cameraposition.d))
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[4];
        aobj[0] = a;
        aobj[1] = Float.valueOf(b);
        aobj[2] = Float.valueOf(c);
        aobj[3] = Float.valueOf(d);
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        return pt.a(this).a("target", a).a("zoom", Float.valueOf(b)).a("tilt", Float.valueOf(c)).a("bearing", Float.valueOf(d)).toString();
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        if (com.google.android.gms.maps.internal.b.a())
        {
            int j = com.google.android.gms.common.internal.safeparcel.c.a(parcel);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 1, e);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 2, a, i, false);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 3, b);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 4, c);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 5, d);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, j);
            return;
        } else
        {
            f.a(this, parcel, i);
            return;
        }
    }

}
