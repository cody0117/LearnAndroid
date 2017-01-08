// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.a.c;

// Referenced classes of package com.google.android.gms.internal:
//            bc, be, av, ar, 
//            ax, ba, bi, bl, 
//            ay, at, gw, gy, 
//            ho, hs, bz, cb

public abstract class bd extends Binder
    implements bc
{

    public bd()
    {
        attachInterface(this, "com.google.android.gms.ads.internal.client.IAdManager");
    }

    public static bc a(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
        if (iinterface != null && (iinterface instanceof bc))
        {
            return (bc)iinterface;
        } else
        {
            return new be(ibinder);
        }
    }

    public IBinder asBinder()
    {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        IBinder ibinder;
        Object obj;
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.google.android.gms.ads.internal.client.IAdManager");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
            c c1 = a();
            parcel1.writeNoException();
            IBinder ibinder5 = null;
            if (c1 != null)
            {
                ibinder5 = c1.asBinder();
            }
            parcel1.writeStrongBinder(ibinder5);
            return true;

        case 2: // '\002'
            parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
            b();
            parcel1.writeNoException();
            return true;

        case 3: // '\003'
            parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
            boolean flag1 = c();
            parcel1.writeNoException();
            int j1;
            if (flag1)
            {
                j1 = 1;
            } else
            {
                j1 = 0;
            }
            parcel1.writeInt(j1);
            return true;

        case 4: // '\004'
            parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
            int l = parcel.readInt();
            av av1 = null;
            if (l != 0)
            {
                ar _tmp = av.CREATOR;
                av1 = ar.a(parcel);
            }
            boolean flag = a(av1);
            parcel1.writeNoException();
            int i1 = 0;
            if (flag)
            {
                i1 = 1;
            }
            parcel1.writeInt(i1);
            return true;

        case 5: // '\005'
            parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
            d();
            parcel1.writeNoException();
            return true;

        case 6: // '\006'
            parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
            e();
            parcel1.writeNoException();
            return true;

        case 7: // '\007'
            parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
            IBinder ibinder4 = parcel.readStrongBinder();
            Object obj4 = null;
            if (ibinder4 != null)
            {
                android.os.IInterface iinterface4 = ibinder4.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                if (iinterface4 != null && (iinterface4 instanceof ax))
                {
                    obj4 = (ax)iinterface4;
                } else
                {
                    obj4 = new ba(ibinder4);
                }
            }
            a(((ax) (obj4)));
            parcel1.writeNoException();
            return true;

        case 8: // '\b'
            parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
            IBinder ibinder3 = parcel.readStrongBinder();
            Object obj3 = null;
            if (ibinder3 != null)
            {
                android.os.IInterface iinterface3 = ibinder3.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
                if (iinterface3 != null && (iinterface3 instanceof bi))
                {
                    obj3 = (bi)iinterface3;
                } else
                {
                    obj3 = new bl(ibinder3);
                }
            }
            a(((bi) (obj3)));
            parcel1.writeNoException();
            return true;

        case 9: // '\t'
            parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
            f();
            parcel1.writeNoException();
            return true;

        case 10: // '\n'
            parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
            g();
            parcel1.writeNoException();
            return true;

        case 11: // '\013'
            parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
            h();
            parcel1.writeNoException();
            return true;

        case 12: // '\f'
            parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
            ay ay2 = i();
            parcel1.writeNoException();
            if (ay2 != null)
            {
                parcel1.writeInt(1);
                ay2.writeToParcel(parcel1, 1);
                return true;
            } else
            {
                parcel1.writeInt(0);
                return true;
            }

        case 13: // '\r'
            parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
            int k = parcel.readInt();
            ay ay1 = null;
            if (k != 0)
            {
                at _tmp1 = ay.CREATOR;
                ay1 = at.a(parcel);
            }
            a(ay1);
            parcel1.writeNoException();
            return true;

        case 14: // '\016'
            parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
            IBinder ibinder2 = parcel.readStrongBinder();
            Object obj2 = null;
            if (ibinder2 != null)
            {
                android.os.IInterface iinterface2 = ibinder2.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener");
                if (iinterface2 != null && (iinterface2 instanceof gw))
                {
                    obj2 = (gw)iinterface2;
                } else
                {
                    obj2 = new gy(ibinder2);
                }
            }
            a(((gw) (obj2)));
            parcel1.writeNoException();
            return true;

        case 15: // '\017'
            parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
            IBinder ibinder1 = parcel.readStrongBinder();
            Object obj1 = null;
            if (ibinder1 != null)
            {
                android.os.IInterface iinterface1 = ibinder1.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
                if (iinterface1 != null && (iinterface1 instanceof ho))
                {
                    obj1 = (ho)iinterface1;
                } else
                {
                    obj1 = new hs(ibinder1);
                }
            }
            a(((ho) (obj1)), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 18: // '\022'
            parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
            String s = j();
            parcel1.writeNoException();
            parcel1.writeString(s);
            return true;

        case 19: // '\023'
            parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
            ibinder = parcel.readStrongBinder();
            obj = null;
            break;
        }
        if (ibinder != null)
        {
            android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
            if (iinterface != null && (iinterface instanceof bz))
            {
                obj = (bz)iinterface;
            } else
            {
                obj = new cb(ibinder);
            }
        }
        a(((bz) (obj)));
        parcel1.writeNoException();
        return true;
    }
}
