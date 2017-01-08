// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive;

import android.os.Parcel;
import android.util.Base64;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.internal.ao;
import com.google.android.gms.drive.internal.g;
import com.google.android.gms.internal.px;
import com.google.android.gms.internal.td;
import com.google.android.gms.internal.tk;
import java.io.IOException;

// Referenced classes of package com.google.android.gms.drive:
//            b

public class DriveId
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new b();
    final int a;
    final String b;
    final long c;
    final long d;
    private volatile String e;

    DriveId(int i, String s, long l, long l1)
    {
label0:
        {
            super();
            e = null;
            a = i;
            b = s;
            boolean flag;
            boolean flag1;
            if (!"".equals(s))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            px.b(flag);
            if (s == null)
            {
                int j = l != -1L;
                flag1 = false;
                if (j == 0)
                {
                    break label0;
                }
            }
            flag1 = true;
        }
        px.b(flag1);
        c = l;
        d = l1;
    }

    public int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
        if (obj instanceof DriveId)
        {
            DriveId driveid = (DriveId)obj;
            if (driveid.d != d)
            {
                ao.a();
                return false;
            }
            if (driveid.c == -1L && c == -1L)
            {
                return driveid.b.equals(b);
            }
            if (driveid.c == c)
            {
                return true;
            }
        }
        return false;
    }

    public final int hashCode()
    {
        if (c == -1L)
        {
            return b.hashCode();
        } else
        {
            return (new StringBuilder()).append(String.valueOf(d)).append(String.valueOf(c)).toString().hashCode();
        }
    }

    public final String toString()
    {
        if (e == null)
        {
            g g1 = new g();
            g1.a = a;
            String s;
            byte abyte0[];
            int i;
            if (b == null)
            {
                s = "";
            } else
            {
                s = b;
            }
            g1.b = s;
            g1.c = c;
            g1.d = d;
            abyte0 = new byte[g1.d()];
            i = abyte0.length;
            try
            {
                td td1 = td.a(abyte0, i);
                g1.a(td1);
                if (td1.a() != 0)
                {
                    throw new IllegalStateException("Did not write as much data as expected.");
                }
            }
            catch (IOException ioexception)
            {
                throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", ioexception);
            }
            String s1 = Base64.encodeToString(abyte0, 10);
            e = (new StringBuilder("DriveId:")).append(s1).toString();
        }
        return e;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.drive.b.a(this, parcel);
    }

}
