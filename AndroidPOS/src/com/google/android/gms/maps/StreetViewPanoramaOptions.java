// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.a;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;

// Referenced classes of package com.google.android.gms.maps:
//            d

public final class StreetViewPanoramaOptions
    implements SafeParcelable
{

    public static final d CREATOR = new d();
    private final int a;
    private StreetViewPanoramaCamera b;
    private String c;
    private LatLng d;
    private Integer e;
    private Boolean f;
    private Boolean g;
    private Boolean h;
    private Boolean i;
    private Boolean j;

    public StreetViewPanoramaOptions()
    {
        f = Boolean.valueOf(true);
        g = Boolean.valueOf(true);
        h = Boolean.valueOf(true);
        i = Boolean.valueOf(true);
        a = 1;
    }

    StreetViewPanoramaOptions(int k, StreetViewPanoramaCamera streetviewpanoramacamera, String s, LatLng latlng, Integer integer, byte byte0, byte byte1, 
            byte byte2, byte byte3, byte byte4)
    {
        f = Boolean.valueOf(true);
        g = Boolean.valueOf(true);
        h = Boolean.valueOf(true);
        i = Boolean.valueOf(true);
        a = k;
        b = streetviewpanoramacamera;
        d = latlng;
        e = integer;
        c = s;
        f = com.google.android.gms.maps.internal.a.a(byte0);
        g = com.google.android.gms.maps.internal.a.a(byte1);
        h = com.google.android.gms.maps.internal.a.a(byte2);
        i = com.google.android.gms.maps.internal.a.a(byte3);
        j = com.google.android.gms.maps.internal.a.a(byte4);
    }

    final int a()
    {
        return a;
    }

    final byte b()
    {
        return com.google.android.gms.maps.internal.a.a(f);
    }

    final byte c()
    {
        return com.google.android.gms.maps.internal.a.a(g);
    }

    final byte d()
    {
        return com.google.android.gms.maps.internal.a.a(h);
    }

    public final int describeContents()
    {
        return 0;
    }

    final byte e()
    {
        return com.google.android.gms.maps.internal.a.a(i);
    }

    final byte f()
    {
        return com.google.android.gms.maps.internal.a.a(j);
    }

    public final StreetViewPanoramaCamera g()
    {
        return b;
    }

    public final LatLng h()
    {
        return d;
    }

    public final Integer i()
    {
        return e;
    }

    public final String j()
    {
        return c;
    }

    public final void writeToParcel(Parcel parcel, int k)
    {
        com.google.android.gms.maps.d.a(this, parcel, k);
    }

}
