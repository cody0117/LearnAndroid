// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.maps.model.Tile;

// Referenced classes of package com.google.android.gms.maps.model.internal:
//            g, i

public abstract class h extends Binder
    implements g
{

    public static g a(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
        if (iinterface != null && (iinterface instanceof g))
        {
            return (g)iinterface;
        } else
        {
            return new i(ibinder);
        }
    }

    public boolean onTransact(int j, Parcel parcel, Parcel parcel1, int k)
    {
        Tile tile;
        switch (j)
        {
        default:
            return super.onTransact(j, parcel, parcel1, k);

        case 1598968902: 
            parcel1.writeString("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
            tile = a(parcel.readInt(), parcel.readInt(), parcel.readInt());
            parcel1.writeNoException();
            break;
        }
        if (tile != null)
        {
            parcel1.writeInt(1);
            tile.writeToParcel(parcel1, 1);
            return true;
        } else
        {
            parcel1.writeInt(0);
            return true;
        }
    }
}
