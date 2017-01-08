// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Locale;

// Referenced classes of package com.google.android.gms.internal:
//            rz

public class nn
    implements SafeParcelable
{

    public static final rz CREATOR = new rz();
    private final int a;
    private final String b;
    private final long c;
    private final short d;
    private final double e;
    private final double f;
    private final float g;
    private final int h;
    private final int i;
    private final int j;

    public nn(int k, String s, int l, short word0, double d1, double d2, float f1, long l1, int i1, int j1)
    {
        if (s == null || s.length() > 100)
        {
            throw new IllegalArgumentException((new StringBuilder("requestId is null or too long: ")).append(s).toString());
        }
        if (f1 <= 0.0F)
        {
            throw new IllegalArgumentException((new StringBuilder("invalid radius: ")).append(f1).toString());
        }
        if (d1 > 90D || d1 < -90D)
        {
            throw new IllegalArgumentException((new StringBuilder("invalid latitude: ")).append(d1).toString());
        }
        if (d2 > 180D || d2 < -180D)
        {
            throw new IllegalArgumentException((new StringBuilder("invalid longitude: ")).append(d2).toString());
        }
        int k1 = l & 7;
        if (k1 == 0)
        {
            throw new IllegalArgumentException((new StringBuilder("No supported transition specified: ")).append(l).toString());
        } else
        {
            a = k;
            d = word0;
            b = s;
            e = d1;
            f = d2;
            g = f1;
            c = l1;
            h = k1;
            i = i1;
            j = j1;
            return;
        }
    }

    public final int a()
    {
        return a;
    }

    public final short b()
    {
        return d;
    }

    public final double c()
    {
        return e;
    }

    public final double d()
    {
        return f;
    }

    public int describeContents()
    {
        rz _tmp = CREATOR;
        return 0;
    }

    public final float e()
    {
        return g;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null)
            {
                return false;
            }
            if (!(obj instanceof nn))
            {
                return false;
            }
            nn nn1 = (nn)obj;
            if (g != nn1.g)
            {
                return false;
            }
            if (e != nn1.e)
            {
                return false;
            }
            if (f != nn1.f)
            {
                return false;
            }
            if (d != nn1.d)
            {
                return false;
            }
        }
        return true;
    }

    public final String f()
    {
        return b;
    }

    public final long g()
    {
        return c;
    }

    public final int h()
    {
        return h;
    }

    public final int hashCode()
    {
        long l = Double.doubleToLongBits(e);
        int k = 31 + (int)(l ^ l >>> 32);
        long l1 = Double.doubleToLongBits(f);
        return 31 * (31 * (31 * (k * 31 + (int)(l1 ^ l1 >>> 32)) + Float.floatToIntBits(g)) + d) + h;
    }

    public final int i()
    {
        return i;
    }

    public final int j()
    {
        return j;
    }

    public final String toString()
    {
        Locale locale;
        Object aobj[];
        locale = Locale.US;
        aobj = new Object[9];
        d;
        JVM INSTR tableswitch 1 1: default 32
    //                   1 130;
           goto _L1 _L2
_L1:
        Object obj = null;
_L4:
        aobj[0] = obj;
        aobj[1] = b;
        aobj[2] = Integer.valueOf(h);
        aobj[3] = Double.valueOf(e);
        aobj[4] = Double.valueOf(f);
        aobj[5] = Float.valueOf(g);
        aobj[6] = Integer.valueOf(i / 1000);
        aobj[7] = Integer.valueOf(j);
        aobj[8] = Long.valueOf(c);
        return String.format(locale, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]", aobj);
_L2:
        obj = "CIRCLE";
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void writeToParcel(Parcel parcel, int k)
    {
        rz _tmp = CREATOR;
        rz.a(this, parcel);
    }

}
