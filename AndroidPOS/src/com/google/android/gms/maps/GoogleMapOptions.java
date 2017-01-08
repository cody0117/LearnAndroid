// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.maps.internal.a;
import com.google.android.gms.maps.internal.b;
import com.google.android.gms.maps.model.CameraPosition;

// Referenced classes of package com.google.android.gms.maps:
//            c

public final class GoogleMapOptions
    implements SafeParcelable
{

    public static final com.google.android.gms.maps.c CREATOR = new com.google.android.gms.maps.c();
    private final int a;
    private Boolean b;
    private Boolean c;
    private int d;
    private CameraPosition e;
    private Boolean f;
    private Boolean g;
    private Boolean h;
    private Boolean i;
    private Boolean j;
    private Boolean k;
    private Boolean l;
    private Boolean m;

    public GoogleMapOptions()
    {
        d = -1;
        a = 1;
    }

    GoogleMapOptions(int i1, byte byte0, byte byte1, int j1, CameraPosition cameraposition, byte byte2, byte byte3, 
            byte byte4, byte byte5, byte byte6, byte byte7, byte byte8, byte byte9)
    {
        d = -1;
        a = i1;
        b = com.google.android.gms.maps.internal.a.a(byte0);
        c = com.google.android.gms.maps.internal.a.a(byte1);
        d = j1;
        e = cameraposition;
        f = com.google.android.gms.maps.internal.a.a(byte2);
        g = com.google.android.gms.maps.internal.a.a(byte3);
        h = com.google.android.gms.maps.internal.a.a(byte4);
        i = com.google.android.gms.maps.internal.a.a(byte5);
        j = com.google.android.gms.maps.internal.a.a(byte6);
        k = com.google.android.gms.maps.internal.a.a(byte7);
        l = com.google.android.gms.maps.internal.a.a(byte8);
        m = com.google.android.gms.maps.internal.a.a(byte9);
    }

    public static GoogleMapOptions a(Context context, AttributeSet attributeset)
    {
        if (attributeset == null)
        {
            return null;
        }
        TypedArray typedarray = context.getResources().obtainAttributes(attributeset, com.google.android.gms.R.styleable.MapAttrs);
        GoogleMapOptions googlemapoptions = new GoogleMapOptions();
        if (typedarray.hasValue(com.google.android.gms.R.styleable.MapAttrs_mapType))
        {
            googlemapoptions.d = typedarray.getInt(com.google.android.gms.R.styleable.MapAttrs_mapType, -1);
        }
        if (typedarray.hasValue(com.google.android.gms.R.styleable.MapAttrs_zOrderOnTop))
        {
            googlemapoptions.b = Boolean.valueOf(typedarray.getBoolean(com.google.android.gms.R.styleable.MapAttrs_zOrderOnTop, false));
        }
        if (typedarray.hasValue(com.google.android.gms.R.styleable.MapAttrs_useViewLifecycle))
        {
            googlemapoptions.c = Boolean.valueOf(typedarray.getBoolean(com.google.android.gms.R.styleable.MapAttrs_useViewLifecycle, false));
        }
        if (typedarray.hasValue(com.google.android.gms.R.styleable.MapAttrs_uiCompass))
        {
            googlemapoptions.g = Boolean.valueOf(typedarray.getBoolean(com.google.android.gms.R.styleable.MapAttrs_uiCompass, true));
        }
        if (typedarray.hasValue(com.google.android.gms.R.styleable.MapAttrs_uiRotateGestures))
        {
            googlemapoptions.k = Boolean.valueOf(typedarray.getBoolean(com.google.android.gms.R.styleable.MapAttrs_uiRotateGestures, true));
        }
        if (typedarray.hasValue(com.google.android.gms.R.styleable.MapAttrs_uiScrollGestures))
        {
            googlemapoptions.h = Boolean.valueOf(typedarray.getBoolean(com.google.android.gms.R.styleable.MapAttrs_uiScrollGestures, true));
        }
        if (typedarray.hasValue(com.google.android.gms.R.styleable.MapAttrs_uiTiltGestures))
        {
            googlemapoptions.j = Boolean.valueOf(typedarray.getBoolean(com.google.android.gms.R.styleable.MapAttrs_uiTiltGestures, true));
        }
        if (typedarray.hasValue(com.google.android.gms.R.styleable.MapAttrs_uiZoomGestures))
        {
            googlemapoptions.i = Boolean.valueOf(typedarray.getBoolean(com.google.android.gms.R.styleable.MapAttrs_uiZoomGestures, true));
        }
        if (typedarray.hasValue(com.google.android.gms.R.styleable.MapAttrs_uiZoomControls))
        {
            googlemapoptions.f = Boolean.valueOf(typedarray.getBoolean(com.google.android.gms.R.styleable.MapAttrs_uiZoomControls, true));
        }
        if (typedarray.hasValue(com.google.android.gms.R.styleable.MapAttrs_liteMode))
        {
            googlemapoptions.l = Boolean.valueOf(typedarray.getBoolean(com.google.android.gms.R.styleable.MapAttrs_liteMode, false));
        }
        if (typedarray.hasValue(com.google.android.gms.R.styleable.MapAttrs_uiMapToolbar))
        {
            googlemapoptions.m = Boolean.valueOf(typedarray.getBoolean(com.google.android.gms.R.styleable.MapAttrs_uiMapToolbar, true));
        }
        googlemapoptions.e = CameraPosition.a(context, attributeset);
        typedarray.recycle();
        return googlemapoptions;
    }

    final int a()
    {
        return a;
    }

    final byte b()
    {
        return com.google.android.gms.maps.internal.a.a(b);
    }

    final byte c()
    {
        return com.google.android.gms.maps.internal.a.a(c);
    }

    final byte d()
    {
        return com.google.android.gms.maps.internal.a.a(f);
    }

    public final int describeContents()
    {
        return 0;
    }

    final byte e()
    {
        return com.google.android.gms.maps.internal.a.a(g);
    }

    final byte f()
    {
        return com.google.android.gms.maps.internal.a.a(h);
    }

    final byte g()
    {
        return com.google.android.gms.maps.internal.a.a(i);
    }

    final byte h()
    {
        return com.google.android.gms.maps.internal.a.a(j);
    }

    final byte i()
    {
        return com.google.android.gms.maps.internal.a.a(k);
    }

    final byte j()
    {
        return com.google.android.gms.maps.internal.a.a(l);
    }

    final byte k()
    {
        return com.google.android.gms.maps.internal.a.a(m);
    }

    public final int l()
    {
        return d;
    }

    public final CameraPosition m()
    {
        return e;
    }

    public final void writeToParcel(Parcel parcel, int i1)
    {
        if (com.google.android.gms.maps.internal.b.a())
        {
            int j1 = com.google.android.gms.common.internal.safeparcel.c.a(parcel);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 1, a);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 2, com.google.android.gms.maps.internal.a.a(b));
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 3, com.google.android.gms.maps.internal.a.a(c));
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 4, d);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 5, e, i1, false);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 6, com.google.android.gms.maps.internal.a.a(f));
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 7, com.google.android.gms.maps.internal.a.a(g));
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 8, com.google.android.gms.maps.internal.a.a(h));
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 9, com.google.android.gms.maps.internal.a.a(i));
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 10, com.google.android.gms.maps.internal.a.a(j));
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 11, com.google.android.gms.maps.internal.a.a(k));
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, j1);
            return;
        } else
        {
            com.google.android.gms.maps.c.a(this, parcel, i1);
            return;
        }
    }

}
