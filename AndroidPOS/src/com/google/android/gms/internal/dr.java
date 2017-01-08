// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.a.c;
import com.google.android.gms.a.d;
import com.google.android.gms.a.f;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            fo, tr, fp, mg, 
//            co, fu, da, do, 
//            gs, y

public final class dr
    implements SafeParcelable
{

    public static final fo CREATOR = new fo();
    public final int a;
    public final do b;
    public final tr c;
    public final fp d;
    public final mg e;
    public final co f;
    public final String g;
    public final boolean h;
    public final String i;
    public final fu j;
    public final int k;
    public final int l;
    public final String m;
    public final gs n;
    public final da o;
    public final String p;
    public final y q;

    dr(int i1, do do1, IBinder ibinder, IBinder ibinder1, IBinder ibinder2, IBinder ibinder3, String s, 
            boolean flag, String s1, IBinder ibinder4, int j1, int k1, String s2, gs gs, 
            IBinder ibinder5, String s3, y y)
    {
        a = i1;
        b = do1;
        c = (tr)com.google.android.gms.a.f.a(com.google.android.gms.a.d.a(ibinder));
        d = (fp)com.google.android.gms.a.f.a(com.google.android.gms.a.d.a(ibinder1));
        e = (mg)com.google.android.gms.a.f.a(com.google.android.gms.a.d.a(ibinder2));
        f = (co)com.google.android.gms.a.f.a(com.google.android.gms.a.d.a(ibinder3));
        g = s;
        h = flag;
        i = s1;
        j = (fu)com.google.android.gms.a.f.a(com.google.android.gms.a.d.a(ibinder4));
        k = j1;
        l = k1;
        m = s2;
        n = gs;
        o = (da)com.google.android.gms.a.f.a(com.google.android.gms.a.d.a(ibinder5));
        p = s3;
        q = y;
    }

    public dr(do do1, tr tr1, fp fp1, fu fu1, gs gs)
    {
        a = 4;
        b = do1;
        c = tr1;
        d = fp1;
        e = null;
        f = null;
        g = null;
        h = false;
        i = null;
        j = fu1;
        k = -1;
        l = 4;
        m = null;
        n = gs;
        o = null;
        p = null;
        q = null;
    }

    public dr(tr tr1, fp fp1, co co1, fu fu1, mg mg1, boolean flag, int i1, 
            String s, gs gs, da da1)
    {
        a = 4;
        b = null;
        c = tr1;
        d = fp1;
        e = mg1;
        f = co1;
        g = null;
        h = flag;
        i = null;
        j = fu1;
        k = i1;
        l = 3;
        m = s;
        n = gs;
        o = da1;
        p = null;
        q = null;
    }

    public dr(tr tr1, fp fp1, co co1, fu fu1, mg mg1, boolean flag, int i1, 
            String s, String s1, gs gs, da da1)
    {
        a = 4;
        b = null;
        c = tr1;
        d = fp1;
        e = mg1;
        f = co1;
        g = s1;
        h = flag;
        i = s;
        j = fu1;
        k = i1;
        l = 3;
        m = null;
        n = gs;
        o = da1;
        p = null;
        q = null;
    }

    public dr(tr tr1, fp fp1, fu fu1, mg mg1, int i1, gs gs, String s, 
            y y)
    {
        a = 4;
        b = null;
        c = tr1;
        d = fp1;
        e = mg1;
        f = null;
        g = null;
        h = false;
        i = null;
        j = fu1;
        k = i1;
        l = 1;
        m = null;
        n = gs;
        o = null;
        p = s;
        q = y;
    }

    public dr(tr tr1, fp fp1, fu fu1, mg mg1, boolean flag, int i1, gs gs)
    {
        a = 4;
        b = null;
        c = tr1;
        d = fp1;
        e = mg1;
        f = null;
        g = null;
        h = flag;
        i = null;
        j = fu1;
        k = i1;
        l = 2;
        m = null;
        n = gs;
        o = null;
        p = null;
        q = null;
    }

    public static dr a(Intent intent)
    {
        dr dr1;
        try
        {
            Bundle bundle = intent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            bundle.setClassLoader(com/google/android/gms/internal/dr.getClassLoader());
            dr1 = (dr)bundle.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
        }
        catch (Exception exception)
        {
            return null;
        }
        return dr1;
    }

    public static void a(Intent intent, dr dr1)
    {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", dr1);
        intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
    }

    final IBinder a()
    {
        return com.google.android.gms.a.f.a(c).asBinder();
    }

    final IBinder b()
    {
        return com.google.android.gms.a.f.a(d).asBinder();
    }

    final IBinder c()
    {
        return com.google.android.gms.a.f.a(e).asBinder();
    }

    final IBinder d()
    {
        return com.google.android.gms.a.f.a(f).asBinder();
    }

    public final int describeContents()
    {
        return 0;
    }

    final IBinder e()
    {
        return com.google.android.gms.a.f.a(o).asBinder();
    }

    final IBinder f()
    {
        return com.google.android.gms.a.f.a(j).asBinder();
    }

    public final void writeToParcel(Parcel parcel, int i1)
    {
        fo.a(this, parcel, i1);
    }

}
