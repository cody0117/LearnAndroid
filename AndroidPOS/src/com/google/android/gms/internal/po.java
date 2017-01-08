// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package com.google.android.gms.internal:
//            pn, pp, pl, jj

public abstract class po extends Binder
    implements pn
{

    public static pn a(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (iinterface != null && (iinterface instanceof pn))
        {
            return (pn)iinterface;
        } else
        {
            return new pp(ibinder);
        }
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        pk pk;
        int k;
        jj jj1;
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.google.android.gms.common.internal.IGmsServiceBroker");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            pk pk25 = pl.a(parcel.readStrongBinder());
            int l11 = parcel.readInt();
            String s29 = parcel.readString();
            String s30 = parcel.readString();
            String as3[] = parcel.createStringArray();
            String s31 = parcel.readString();
            Bundle bundle24;
            if (parcel.readInt() != 0)
            {
                bundle24 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                bundle24 = null;
            }
            a(pk25, l11, s29, s30, as3, s31, bundle24);
            parcel1.writeNoException();
            return true;

        case 2: // '\002'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            pk pk24 = pl.a(parcel.readStrongBinder());
            int j11 = parcel.readInt();
            String s28 = parcel.readString();
            int k11 = parcel.readInt();
            Bundle bundle23 = null;
            if (k11 != 0)
            {
                bundle23 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            }
            a(pk24, j11, s28, bundle23);
            parcel1.writeNoException();
            return true;

        case 3: // '\003'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            a(pl.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 4: // '\004'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            a(pl.a(parcel.readStrongBinder()), parcel.readInt());
            parcel1.writeNoException();
            return true;

        case 5: // '\005'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            pk pk23 = pl.a(parcel.readStrongBinder());
            int l10 = parcel.readInt();
            String s27 = parcel.readString();
            int i11 = parcel.readInt();
            Bundle bundle22 = null;
            if (i11 != 0)
            {
                bundle22 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            }
            b(pk23, l10, s27, bundle22);
            parcel1.writeNoException();
            return true;

        case 6: // '\006'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            pk pk22 = pl.a(parcel.readStrongBinder());
            int j10 = parcel.readInt();
            String s26 = parcel.readString();
            int k10 = parcel.readInt();
            Bundle bundle21 = null;
            if (k10 != 0)
            {
                bundle21 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            }
            c(pk22, j10, s26, bundle21);
            parcel1.writeNoException();
            return true;

        case 7: // '\007'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            pk pk21 = pl.a(parcel.readStrongBinder());
            int l9 = parcel.readInt();
            String s25 = parcel.readString();
            int i10 = parcel.readInt();
            Bundle bundle20 = null;
            if (i10 != 0)
            {
                bundle20 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            }
            d(pk21, l9, s25, bundle20);
            parcel1.writeNoException();
            return true;

        case 8: // '\b'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            pk pk20 = pl.a(parcel.readStrongBinder());
            int j9 = parcel.readInt();
            String s24 = parcel.readString();
            int k9 = parcel.readInt();
            Bundle bundle19 = null;
            if (k9 != 0)
            {
                bundle19 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            }
            e(pk20, j9, s24, bundle19);
            parcel1.writeNoException();
            return true;

        case 9: // '\t'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            pk pk19 = pl.a(parcel.readStrongBinder());
            int i9 = parcel.readInt();
            String s20 = parcel.readString();
            String s21 = parcel.readString();
            String as2[] = parcel.createStringArray();
            String s22 = parcel.readString();
            IBinder ibinder1 = parcel.readStrongBinder();
            String s23 = parcel.readString();
            Bundle bundle18;
            if (parcel.readInt() != 0)
            {
                bundle18 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                bundle18 = null;
            }
            a(pk19, i9, s20, s21, as2, s22, ibinder1, s23, bundle18);
            parcel1.writeNoException();
            return true;

        case 10: // '\n'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            a(pl.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.createStringArray());
            parcel1.writeNoException();
            return true;

        case 11: // '\013'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            pk pk18 = pl.a(parcel.readStrongBinder());
            int k8 = parcel.readInt();
            String s19 = parcel.readString();
            int l8 = parcel.readInt();
            Bundle bundle17 = null;
            if (l8 != 0)
            {
                bundle17 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            }
            f(pk18, k8, s19, bundle17);
            parcel1.writeNoException();
            return true;

        case 12: // '\f'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            pk pk17 = pl.a(parcel.readStrongBinder());
            int i8 = parcel.readInt();
            String s18 = parcel.readString();
            int j8 = parcel.readInt();
            Bundle bundle16 = null;
            if (j8 != 0)
            {
                bundle16 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            }
            g(pk17, i8, s18, bundle16);
            parcel1.writeNoException();
            return true;

        case 13: // '\r'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            pk pk16 = pl.a(parcel.readStrongBinder());
            int k7 = parcel.readInt();
            String s17 = parcel.readString();
            int l7 = parcel.readInt();
            Bundle bundle15 = null;
            if (l7 != 0)
            {
                bundle15 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            }
            h(pk16, k7, s17, bundle15);
            parcel1.writeNoException();
            return true;

        case 14: // '\016'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            pk pk15 = pl.a(parcel.readStrongBinder());
            int i7 = parcel.readInt();
            String s16 = parcel.readString();
            int j7 = parcel.readInt();
            Bundle bundle14 = null;
            if (j7 != 0)
            {
                bundle14 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            }
            i(pk15, i7, s16, bundle14);
            parcel1.writeNoException();
            return true;

        case 15: // '\017'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            pk pk14 = pl.a(parcel.readStrongBinder());
            int k6 = parcel.readInt();
            String s15 = parcel.readString();
            int l6 = parcel.readInt();
            Bundle bundle13 = null;
            if (l6 != 0)
            {
                bundle13 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            }
            j(pk14, k6, s15, bundle13);
            parcel1.writeNoException();
            return true;

        case 16: // '\020'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            pk pk13 = pl.a(parcel.readStrongBinder());
            int i6 = parcel.readInt();
            String s14 = parcel.readString();
            int j6 = parcel.readInt();
            Bundle bundle12 = null;
            if (j6 != 0)
            {
                bundle12 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            }
            k(pk13, i6, s14, bundle12);
            parcel1.writeNoException();
            return true;

        case 17: // '\021'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            pk pk12 = pl.a(parcel.readStrongBinder());
            int k5 = parcel.readInt();
            String s13 = parcel.readString();
            int l5 = parcel.readInt();
            Bundle bundle11 = null;
            if (l5 != 0)
            {
                bundle11 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            }
            l(pk12, k5, s13, bundle11);
            parcel1.writeNoException();
            return true;

        case 18: // '\022'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            pk pk11 = pl.a(parcel.readStrongBinder());
            int i5 = parcel.readInt();
            String s12 = parcel.readString();
            int j5 = parcel.readInt();
            Bundle bundle10 = null;
            if (j5 != 0)
            {
                bundle10 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            }
            m(pk11, i5, s12, bundle10);
            parcel1.writeNoException();
            return true;

        case 19: // '\023'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            pk pk10 = pl.a(parcel.readStrongBinder());
            int l4 = parcel.readInt();
            String s11 = parcel.readString();
            IBinder ibinder = parcel.readStrongBinder();
            Bundle bundle9;
            if (parcel.readInt() != 0)
            {
                bundle9 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                bundle9 = null;
            }
            a(pk10, l4, s11, ibinder, bundle9);
            parcel1.writeNoException();
            return true;

        case 20: // '\024'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            pk pk9 = pl.a(parcel.readStrongBinder());
            int k4 = parcel.readInt();
            String s9 = parcel.readString();
            String as1[] = parcel.createStringArray();
            String s10 = parcel.readString();
            Bundle bundle8;
            if (parcel.readInt() != 0)
            {
                bundle8 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                bundle8 = null;
            }
            a(pk9, k4, s9, as1, s10, bundle8);
            parcel1.writeNoException();
            return true;

        case 21: // '\025'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            b(pl.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 22: // '\026'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            c(pl.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 23: // '\027'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            pk pk8 = pl.a(parcel.readStrongBinder());
            int i4 = parcel.readInt();
            String s8 = parcel.readString();
            int j4 = parcel.readInt();
            Bundle bundle7 = null;
            if (j4 != 0)
            {
                bundle7 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            }
            n(pk8, i4, s8, bundle7);
            parcel1.writeNoException();
            return true;

        case 24: // '\030'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            d(pl.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 25: // '\031'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            pk pk7 = pl.a(parcel.readStrongBinder());
            int k3 = parcel.readInt();
            String s7 = parcel.readString();
            int l3 = parcel.readInt();
            Bundle bundle6 = null;
            if (l3 != 0)
            {
                bundle6 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            }
            o(pk7, k3, s7, bundle6);
            parcel1.writeNoException();
            return true;

        case 26: // '\032'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            e(pl.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 27: // '\033'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            pk pk6 = pl.a(parcel.readStrongBinder());
            int i3 = parcel.readInt();
            String s6 = parcel.readString();
            int j3 = parcel.readInt();
            Bundle bundle5 = null;
            if (j3 != 0)
            {
                bundle5 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            }
            p(pk6, i3, s6, bundle5);
            parcel1.writeNoException();
            return true;

        case 28: // '\034'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            b(pl.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.createStringArray());
            parcel1.writeNoException();
            return true;

        case 30: // '\036'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            pk pk5 = pl.a(parcel.readStrongBinder());
            int l2 = parcel.readInt();
            String s4 = parcel.readString();
            String s5 = parcel.readString();
            String as[] = parcel.createStringArray();
            Bundle bundle4;
            if (parcel.readInt() != 0)
            {
                bundle4 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                bundle4 = null;
            }
            a(pk5, l2, s4, s5, as, bundle4);
            parcel1.writeNoException();
            return true;

        case 31: // '\037'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            f(pl.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 32: // ' '
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            g(pl.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 33: // '!'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            a(pl.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.createStringArray());
            parcel1.writeNoException();
            return true;

        case 34: // '"'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            a(pl.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 35: // '#'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            h(pl.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 36: // '$'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            i(pl.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 37: // '%'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            pk pk4 = pl.a(parcel.readStrongBinder());
            int j2 = parcel.readInt();
            String s3 = parcel.readString();
            int k2 = parcel.readInt();
            Bundle bundle3 = null;
            if (k2 != 0)
            {
                bundle3 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            }
            q(pk4, j2, s3, bundle3);
            parcel1.writeNoException();
            return true;

        case 38: // '&'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            pk pk3 = pl.a(parcel.readStrongBinder());
            int l1 = parcel.readInt();
            String s2 = parcel.readString();
            int i2 = parcel.readInt();
            Bundle bundle2 = null;
            if (i2 != 0)
            {
                bundle2 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            }
            r(pk3, l1, s2, bundle2);
            parcel1.writeNoException();
            return true;

        case 40: // '('
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            j(pl.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 41: // ')'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            pk pk2 = pl.a(parcel.readStrongBinder());
            int j1 = parcel.readInt();
            String s1 = parcel.readString();
            int k1 = parcel.readInt();
            Bundle bundle1 = null;
            if (k1 != 0)
            {
                bundle1 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            }
            s(pk2, j1, s1, bundle1);
            parcel1.writeNoException();
            return true;

        case 42: // '*'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            k(pl.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 43: // '+'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            pk pk1 = pl.a(parcel.readStrongBinder());
            int l = parcel.readInt();
            String s = parcel.readString();
            int i1 = parcel.readInt();
            Bundle bundle = null;
            if (i1 != 0)
            {
                bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            }
            t(pk1, l, s, bundle);
            parcel1.writeNoException();
            return true;

        case 44: // ','
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            l(pl.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 46: // '.'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            pk = pl.a(parcel.readStrongBinder());
            k = parcel.readInt();
            jj1 = null;
            break;
        }
        if (k != 0)
        {
            jj1 = (jj)jj.CREATOR.createFromParcel(parcel);
        }
        a(pk, jj1);
        parcel1.writeNoException();
        return true;
    }
}
