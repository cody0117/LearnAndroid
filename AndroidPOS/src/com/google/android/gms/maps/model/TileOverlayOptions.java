// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.maps.internal.b;
import com.google.android.gms.maps.model.internal.g;
import com.google.android.gms.maps.model.internal.h;

// Referenced classes of package com.google.android.gms.maps.model:
//            s, d, e

public final class TileOverlayOptions
    implements SafeParcelable
{

    public static final s CREATOR = new s();
    private final int a;
    private g b;
    private e c;
    private boolean d;
    private float e;
    private boolean f;

    public TileOverlayOptions()
    {
        d = true;
        f = true;
        a = 1;
    }

    TileOverlayOptions(int i, IBinder ibinder, boolean flag, float f1, boolean flag1)
    {
        d = true;
        f = true;
        a = i;
        b = h.a(ibinder);
        Object obj;
        if (b == null)
        {
            obj = null;
        } else
        {
            obj = new d(this);
        }
        c = ((e) (obj));
        d = flag;
        e = f1;
        f = flag1;
    }

    static g a(TileOverlayOptions tileoverlayoptions)
    {
        return tileoverlayoptions.b;
    }

    final int a()
    {
        return a;
    }

    final IBinder b()
    {
        return b.asBinder();
    }

    public final float c()
    {
        return e;
    }

    public final boolean d()
    {
        return d;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final boolean e()
    {
        return f;
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        if (com.google.android.gms.maps.internal.b.a())
        {
            int j = com.google.android.gms.common.internal.safeparcel.c.a(parcel);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 1, a);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 2, b());
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 3, d);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 4, e);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, j);
            return;
        } else
        {
            s.a(this, parcel);
            return;
        }
    }

}
