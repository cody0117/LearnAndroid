// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.metadata;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.px;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.google.android.gms.drive.metadata:
//            h

public class CustomPropertyKey
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new h();
    private static final Pattern d = Pattern.compile("[\\w.!@$%^&*()/-]+");
    final int a;
    final String b;
    final int c;

    CustomPropertyKey(int i, String s, int j)
    {
        boolean flag = true;
        super();
        px.a(s, "key");
        px.b(d.matcher(s).matches(), "key name characters must be alphanumeric or one of .!@$%^&*()-_/");
        if (j != 0 && j != flag)
        {
            flag = false;
        }
        px.b(flag, "visibility must be either PUBLIC or PRIVATE");
        a = i;
        b = s;
        c = j;
    }

    public int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
        if (obj != null)
        {
            if (obj == this)
            {
                return true;
            }
            if (obj instanceof CustomPropertyKey)
            {
                CustomPropertyKey custompropertykey = (CustomPropertyKey)obj;
                if (custompropertykey.b.equals(b) && custompropertykey.c == c)
                {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode()
    {
        return (new StringBuilder()).append(b).append(c).toString().hashCode();
    }

    public final String toString()
    {
        return (new StringBuilder("CustomPropertyKey(")).append(b).append(",").append(c).append(")").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        h.a(this, parcel);
    }

}
