// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.cast;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.nt;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.google.android.gms.cast:
//            b

public class CastDevice
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new b();
    String a;
    private final int b;
    private String c;
    private Inet4Address d;
    private String e;
    private String f;
    private String g;
    private int h;
    private List i;
    private int j;
    private int k;

    private CastDevice()
    {
        this(3, null, null, null, null, null, -1, ((List) (new ArrayList())), 0, -1);
    }

    CastDevice(int l, String s, String s1, String s2, String s3, String s4, int i1, 
            List list, int j1, int k1)
    {
        b = l;
        c = s;
        a = s1;
        if (a != null)
        {
            try
            {
                InetAddress inetaddress = InetAddress.getByName(a);
                if (inetaddress instanceof Inet4Address)
                {
                    d = (Inet4Address)inetaddress;
                }
            }
            catch (UnknownHostException unknownhostexception)
            {
                d = null;
            }
        }
        e = s2;
        f = s3;
        g = s4;
        h = i1;
        i = list;
        j = j1;
        k = k1;
    }

    final int a()
    {
        return b;
    }

    public final String b()
    {
        return c;
    }

    public final String c()
    {
        return e;
    }

    public final String d()
    {
        return f;
    }

    public int describeContents()
    {
        return 0;
    }

    public final String e()
    {
        return g;
    }

    public final boolean equals(Object obj)
    {
        if (obj != this) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        CastDevice castdevice;
        if (!(obj instanceof CastDevice))
        {
            return false;
        }
        castdevice = (CastDevice)obj;
        if (c != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (castdevice.c == null) goto _L1; else goto _L3
_L3:
        return false;
        if (nt.a(c, castdevice.c) && nt.a(d, castdevice.d) && nt.a(f, castdevice.f) && nt.a(e, castdevice.e) && nt.a(g, castdevice.g) && h == castdevice.h && nt.a(i, castdevice.i) && j == castdevice.j && k == castdevice.k) goto _L1; else goto _L4
_L4:
        return false;
    }

    public final int f()
    {
        return h;
    }

    public final List g()
    {
        return Collections.unmodifiableList(i);
    }

    public final int h()
    {
        return j;
    }

    public final int hashCode()
    {
        if (c == null)
        {
            return 0;
        } else
        {
            return c.hashCode();
        }
    }

    public final int i()
    {
        return k;
    }

    public final String toString()
    {
        Object aobj[] = new Object[2];
        aobj[0] = e;
        aobj[1] = c;
        return String.format("\"%s\" (%s)", aobj);
    }

    public void writeToParcel(Parcel parcel, int l)
    {
        com.google.android.gms.cast.b.a(this, parcel);
    }

}
