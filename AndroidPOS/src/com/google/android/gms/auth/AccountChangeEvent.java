// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.auth;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.px;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.auth:
//            a

public class AccountChangeEvent
    implements SafeParcelable
{

    public static final a CREATOR = new a();
    final int a;
    final long b;
    final String c;
    final int d;
    final int e;
    final String f;

    AccountChangeEvent(int i, long l, String s, int j, int k, String s1)
    {
        a = i;
        b = l;
        c = (String)px.a(s);
        d = j;
        e = k;
        f = s1;
    }

    public int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
        AccountChangeEvent accountchangeevent;
        if (obj != this)
        {
            if (obj instanceof AccountChangeEvent)
            {
                if (a != (accountchangeevent = (AccountChangeEvent)obj).a || b != accountchangeevent.b || !pt.a(c, accountchangeevent.c) || d != accountchangeevent.d || e != accountchangeevent.e || !pt.a(f, accountchangeevent.f))
                {
                    return false;
                }
            } else
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[6];
        aobj[0] = Integer.valueOf(a);
        aobj[1] = Long.valueOf(b);
        aobj[2] = c;
        aobj[3] = Integer.valueOf(d);
        aobj[4] = Integer.valueOf(e);
        aobj[5] = f;
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        String s = "UNKNOWN";
        d;
        JVM INSTR tableswitch 1 4: default 36
    //                   1 94
    //                   2 100
    //                   3 112
    //                   4 106;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return (new StringBuilder("AccountChangeEvent {accountName = ")).append(c).append(", changeType = ").append(s).append(", changeData = ").append(f).append(", eventIndex = ").append(e).append("}").toString();
_L2:
        s = "ADDED";
        continue; /* Loop/switch isn't completed */
_L3:
        s = "REMOVED";
        continue; /* Loop/switch isn't completed */
_L5:
        s = "RENAMED_TO";
        continue; /* Loop/switch isn't completed */
_L4:
        s = "RENAMED_FROM";
        if (true) goto _L1; else goto _L6
_L6:
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.auth.a.a(this, parcel);
    }

}
