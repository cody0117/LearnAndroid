// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.internal.ao;
import com.google.android.gms.drive.metadata.a;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.px;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.google.android.gms.drive.metadata.internal:
//            i, f

public final class MetadataBundle
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new i();
    final int a;
    final Bundle b;

    MetadataBundle(int j, Bundle bundle)
    {
        a = j;
        b = (Bundle)px.a(bundle);
        b.setClassLoader(getClass().getClassLoader());
        ArrayList arraylist = new ArrayList();
        Iterator iterator = b.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s1 = (String)iterator.next();
            if (com.google.android.gms.drive.metadata.internal.f.a(s1) == null)
            {
                arraylist.add(s1);
                (new StringBuilder("Ignored unknown metadata field in bundle: ")).append(s1);
                ao.a();
            }
        } while (true);
        String s;
        for (Iterator iterator1 = arraylist.iterator(); iterator1.hasNext(); b.remove(s))
        {
            s = (String)iterator1.next();
        }

    }

    public final Object a(a a1)
    {
        return a1.a(b);
    }

    public final Set a()
    {
        HashSet hashset = new HashSet();
        for (Iterator iterator = b.keySet().iterator(); iterator.hasNext(); hashset.add(com.google.android.gms.drive.metadata.internal.f.a((String)iterator.next()))) { }
        return hashset;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof MetadataBundle))
        {
            return false;
        }
        MetadataBundle metadatabundle = (MetadataBundle)obj;
        Set set = b.keySet();
        if (!set.equals(metadatabundle.b.keySet()))
        {
            return false;
        }
        for (Iterator iterator = set.iterator(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            if (!pt.a(b.get(s), metadatabundle.b.get(s)))
            {
                return false;
            }
        }

        return true;
    }

    public final int hashCode()
    {
        Iterator iterator = b.keySet().iterator();
        int j;
        String s;
        for (j = 1; iterator.hasNext(); j = j * 31 + b.get(s).hashCode())
        {
            s = (String)iterator.next();
        }

        return j;
    }

    public final String toString()
    {
        return (new StringBuilder("MetadataBundle [values=")).append(b).append("]").toString();
    }

    public final void writeToParcel(Parcel parcel, int j)
    {
        com.google.android.gms.drive.metadata.internal.i.a(this, parcel);
    }

}
