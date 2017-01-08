// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.internal:
//            av, ay, gs, fh

public final class js
    implements android.os.Parcelable.Creator
{

    public js()
    {
    }

    public static fh a(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        android.os.Bundle bundle = null;
        av av1 = null;
        ay ay1 = null;
        String s = null;
        ApplicationInfo applicationinfo = null;
        PackageInfo packageinfo = null;
        String s1 = null;
        String s2 = null;
        String s3 = null;
        gs gs1 = null;
        android.os.Bundle bundle1 = null;
        int k = 0;
        java.util.ArrayList arraylist = null;
        android.os.Bundle bundle2 = null;
        boolean flag = false;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int l = parcel.readInt();
                switch (0xffff & l)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 2: // '\002'
                    bundle = com.google.android.gms.common.internal.safeparcel.a.q(parcel, l);
                    break;

                case 3: // '\003'
                    av1 = (av)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, av.CREATOR);
                    break;

                case 4: // '\004'
                    ay1 = (ay)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, ay.CREATOR);
                    break;

                case 5: // '\005'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    break;

                case 6: // '\006'
                    applicationinfo = (ApplicationInfo)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, ApplicationInfo.CREATOR);
                    break;

                case 7: // '\007'
                    packageinfo = (PackageInfo)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, PackageInfo.CREATOR);
                    break;

                case 8: // '\b'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    break;

                case 9: // '\t'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    break;

                case 10: // '\n'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    break;

                case 11: // '\013'
                    gs1 = (gs)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, gs.CREATOR);
                    break;

                case 12: // '\f'
                    bundle1 = com.google.android.gms.common.internal.safeparcel.a.q(parcel, l);
                    break;

                case 13: // '\r'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 14: // '\016'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.v(parcel, l);
                    break;

                case 15: // '\017'
                    bundle2 = com.google.android.gms.common.internal.safeparcel.a.q(parcel, l);
                    break;

                case 16: // '\020'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new fh(j, bundle, av1, ay1, s, applicationinfo, packageinfo, s1, s2, s3, gs1, bundle1, k, arraylist, bundle2, flag);
            }
        } while (true);
    }

    static void a(fh fh1, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, fh1.a);
        c.a(parcel, 2, fh1.b);
        c.a(parcel, 3, fh1.c, i, false);
        c.a(parcel, 4, fh1.d, i, false);
        c.a(parcel, 5, fh1.e, false);
        c.a(parcel, 6, fh1.f, i, false);
        c.a(parcel, 7, fh1.g, i, false);
        c.a(parcel, 8, fh1.h, false);
        c.a(parcel, 9, fh1.i, false);
        c.a(parcel, 10, fh1.j, false);
        c.a(parcel, 11, fh1.k, i, false);
        c.a(parcel, 12, fh1.l);
        c.a(parcel, 13, fh1.m);
        c.a(parcel, 14, fh1.n, false);
        c.a(parcel, 15, fh1.o);
        c.a(parcel, 16, fh1.p);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        return a(parcel);
    }

    public final Object[] newArray(int i)
    {
        return new fh[i];
    }
}
