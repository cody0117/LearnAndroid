// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.location:
//            g

public class e
    implements SafeParcelable
{

    public static final g CREATOR = new g();
    int a;
    int b;
    long c;
    private final int d;

    public e(int i, int j, int k, long l)
    {
        d = i;
        a = j;
        b = k;
        c = l;
    }

    private static String a(int i)
    {
        switch (i)
        {
        case 1: // '\001'
        default:
            return "STATUS_UNKNOWN";

        case 0: // '\0'
            return "STATUS_SUCCESSFUL";

        case 2: // '\002'
            return "STATUS_TIMED_OUT_ON_SCAN";

        case 3: // '\003'
            return "STATUS_NO_INFO_IN_DATABASE";

        case 4: // '\004'
            return "STATUS_INVALID_SCAN";

        case 5: // '\005'
            return "STATUS_UNABLE_TO_QUERY_DATABASE";

        case 6: // '\006'
            return "STATUS_SCANS_DISABLED_IN_SETTINGS";

        case 7: // '\007'
            return "STATUS_LOCATION_DISABLED_IN_SETTINGS";

        case 8: // '\b'
            return "STATUS_IN_PROGRESS";
        }
    }

    final int a()
    {
        return d;
    }

    public int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
        e e1;
        if (obj instanceof e)
        {
            if (a == (e1 = (e)obj).a && b == e1.b && c == e1.c)
            {
                return true;
            }
        }
        return false;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[3];
        aobj[0] = Integer.valueOf(a);
        aobj[1] = Integer.valueOf(b);
        aobj[2] = Long.valueOf(c);
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("LocationStatus[cell status: ").append(a(a));
        stringbuilder.append(", wifi status: ").append(a(b));
        stringbuilder.append(", elapsed realtime ns: ").append(c);
        stringbuilder.append(']');
        return stringbuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        g.a(this, parcel);
    }

}
