// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.common.api:
//            d

public final class Status
    implements SafeParcelable
{

    public static final d CREATOR = new d();
    public static final Status a = new Status(0);
    public static final Status b = new Status(14);
    public static final Status c = new Status(8);
    public static final Status d = new Status(15);
    public static final Status e = new Status(16);
    private final int f;
    private final int g;
    private final String h;
    private final PendingIntent i;

    private Status(int j)
    {
        this(j, (byte)0);
    }

    private Status(int j, byte byte0)
    {
        this(1, j, null, null);
    }

    Status(int j, int k, String s, PendingIntent pendingintent)
    {
        f = j;
        g = k;
        h = s;
        i = pendingintent;
    }

    final PendingIntent a()
    {
        return i;
    }

    public final String b()
    {
        return h;
    }

    final int c()
    {
        return f;
    }

    public final int d()
    {
        return g;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
        Status status;
        if (obj instanceof Status)
        {
            if (f == (status = (Status)obj).f && g == status.g && pt.a(h, status.h) && pt.a(i, status.i))
            {
                return true;
            }
        }
        return false;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[4];
        aobj[0] = Integer.valueOf(f);
        aobj[1] = Integer.valueOf(g);
        aobj[2] = h;
        aobj[3] = i;
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        pu pu1 = pt.a(this);
        if (h == null) goto _L2; else goto _L1
_L1:
        String s = h;
_L4:
        return pu1.a("statusCode", s).a("resolution", i).toString();
_L2:
        int j = g;
        switch (j)
        {
        default:
            s = (new StringBuilder("unknown status code: ")).append(j).toString();
            break;

        case -1: 
            s = "SUCCESS_CACHE";
            break;

        case 0: // '\0'
            s = "SUCCESS";
            break;

        case 1: // '\001'
            s = "SERVICE_MISSING";
            break;

        case 2: // '\002'
            s = "SERVICE_VERSION_UPDATE_REQUIRED";
            break;

        case 3: // '\003'
            s = "SERVICE_DISABLED";
            break;

        case 4: // '\004'
            s = "SIGN_IN_REQUIRED";
            break;

        case 5: // '\005'
            s = "INVALID_ACCOUNT";
            break;

        case 6: // '\006'
            s = "RESOLUTION_REQUIRED";
            break;

        case 7: // '\007'
            s = "NETWORK_ERROR";
            break;

        case 8: // '\b'
            s = "INTERNAL_ERROR";
            break;

        case 9: // '\t'
            s = "SERVICE_INVALID";
            break;

        case 10: // '\n'
            s = "DEVELOPER_ERROR";
            break;

        case 11: // '\013'
            s = "LICENSE_CHECK_FAILED";
            break;

        case 13: // '\r'
            s = "ERROR_OPERATION_FAILED";
            break;

        case 14: // '\016'
            s = "INTERRUPTED";
            break;

        case 15: // '\017'
            s = "TIMEOUT";
            break;

        case 16: // '\020'
            s = "CANCELED";
            break;

        case 3000: 
            s = "AUTH_API_INVALID_CREDENTIALS";
            break;

        case 3001: 
            s = "AUTH_API_ACCESS_FORBIDDEN";
            break;

        case 3002: 
            s = "AUTH_API_CLIENT_ERROR";
            break;

        case 3003: 
            s = "AUTH_API_SERVER_ERROR";
            break;

        case 3004: 
            s = "AUTH_TOKEN_ERROR";
            break;

        case 3005: 
            s = "AUTH_URL_RESOLUTION";
            break;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void writeToParcel(Parcel parcel, int j)
    {
        com.google.android.gms.common.api.d.a(this, parcel, j);
    }

}
