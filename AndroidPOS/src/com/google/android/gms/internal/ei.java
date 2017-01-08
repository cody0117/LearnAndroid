// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.a.c;
import com.google.android.gms.a.d;

// Referenced classes of package com.google.android.gms.internal:
//            eh, ej, ay, at, 
//            av, ar, en

public abstract class ei extends Binder
    implements eh
{

    public ei()
    {
        attachInterface(this, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    public static eh a(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
        if (iinterface != null && (iinterface instanceof eh))
        {
            return (eh)iinterface;
        } else
        {
            return new ej(ibinder);
        }
    }

    public IBinder asBinder()
    {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            c c5 = d.a(parcel.readStrongBinder());
            ay ay2;
            av av4;
            if (parcel.readInt() != 0)
            {
                at _tmp = ay.CREATOR;
                ay2 = at.a(parcel);
            } else
            {
                ay2 = null;
            }
            if (parcel.readInt() != 0)
            {
                ar _tmp1 = av.CREATOR;
                av4 = ar.a(parcel);
            } else
            {
                av4 = null;
            }
            a(c5, ay2, av4, parcel.readString(), en.a(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 2: // '\002'
            parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            c c4 = a();
            parcel1.writeNoException();
            IBinder ibinder = null;
            if (c4 != null)
            {
                ibinder = c4.asBinder();
            }
            parcel1.writeStrongBinder(ibinder);
            return true;

        case 3: // '\003'
            parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            c c3 = d.a(parcel.readStrongBinder());
            int k = parcel.readInt();
            av av3 = null;
            if (k != 0)
            {
                ar _tmp2 = av.CREATOR;
                av3 = ar.a(parcel);
            }
            a(c3, av3, parcel.readString(), en.a(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 4: // '\004'
            parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            b();
            parcel1.writeNoException();
            return true;

        case 5: // '\005'
            parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            c();
            parcel1.writeNoException();
            return true;

        case 6: // '\006'
            parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            c c2 = d.a(parcel.readStrongBinder());
            ay ay1;
            av av2;
            if (parcel.readInt() != 0)
            {
                at _tmp3 = ay.CREATOR;
                ay1 = at.a(parcel);
            } else
            {
                ay1 = null;
            }
            if (parcel.readInt() != 0)
            {
                ar _tmp4 = av.CREATOR;
                av2 = ar.a(parcel);
            } else
            {
                av2 = null;
            }
            a(c2, ay1, av2, parcel.readString(), parcel.readString(), en.a(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 7: // '\007'
            parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            c c1 = d.a(parcel.readStrongBinder());
            av av1;
            if (parcel.readInt() != 0)
            {
                ar _tmp5 = av.CREATOR;
                av1 = ar.a(parcel);
            } else
            {
                av1 = null;
            }
            a(c1, av1, parcel.readString(), parcel.readString(), en.a(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 8: // '\b'
            parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            d();
            parcel1.writeNoException();
            return true;

        case 9: // '\t'
            parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            e();
            parcel1.writeNoException();
            return true;
        }
    }
}
