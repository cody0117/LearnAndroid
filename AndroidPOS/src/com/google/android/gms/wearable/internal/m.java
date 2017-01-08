// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.a;
import com.google.android.gms.wearable.b;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            s, DataItemAssetParcelable

public class m
    implements SafeParcelable, a
{

    public static final android.os.Parcelable.Creator CREATOR = new s();
    final int a;
    private final Uri b;
    private final Map c;
    private byte d[];

    m(int i, Uri uri, Bundle bundle, byte abyte0[])
    {
        a = i;
        b = uri;
        HashMap hashmap = new HashMap();
        bundle.setClassLoader(com/google/android/gms/wearable/internal/DataItemAssetParcelable.getClassLoader());
        String s1;
        for (Iterator iterator = bundle.keySet().iterator(); iterator.hasNext(); hashmap.put(s1, (DataItemAssetParcelable)bundle.getParcelable(s1)))
        {
            s1 = (String)iterator.next();
        }

        c = hashmap;
        d = abyte0;
    }

    public final Object a()
    {
        return this;
    }

    public final Uri b()
    {
        return b;
    }

    public final byte[] c()
    {
        return d;
    }

    public final Bundle d()
    {
        Bundle bundle = new Bundle();
        bundle.setClassLoader(com/google/android/gms/wearable/internal/DataItemAssetParcelable.getClassLoader());
        java.util.Map.Entry entry;
        for (Iterator iterator = c.entrySet().iterator(); iterator.hasNext(); bundle.putParcelable((String)entry.getKey(), new DataItemAssetParcelable((b)entry.getValue())))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        return bundle;
    }

    public int describeContents()
    {
        return 0;
    }

    public final String toString()
    {
        boolean flag = Log.isLoggable("DataItem", 3);
        StringBuilder stringbuilder = new StringBuilder("DataItemParcelable[");
        stringbuilder.append("@");
        stringbuilder.append(Integer.toHexString(hashCode()));
        StringBuilder stringbuilder1 = new StringBuilder(",dataSz=");
        Object obj;
        if (d == null)
        {
            obj = "null";
        } else
        {
            obj = Integer.valueOf(d.length);
        }
        stringbuilder.append(stringbuilder1.append(obj).toString());
        stringbuilder.append((new StringBuilder(", numAssets=")).append(c.size()).toString());
        stringbuilder.append((new StringBuilder(", uri=")).append(b).toString());
        if (!flag)
        {
            stringbuilder.append("]");
            return stringbuilder.toString();
        }
        stringbuilder.append("]\n  assets: ");
        String s1;
        for (Iterator iterator = c.keySet().iterator(); iterator.hasNext(); stringbuilder.append((new StringBuilder("\n    ")).append(s1).append(": ").append(c.get(s1)).toString()))
        {
            s1 = (String)iterator.next();
        }

        stringbuilder.append("\n  ]");
        return stringbuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.wearable.internal.s.a(this, parcel, i);
    }

}
