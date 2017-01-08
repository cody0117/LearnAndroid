// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.px;

public abstract class i
    implements Parcelable
{

    private volatile transient boolean a;

    public i()
    {
        a = false;
    }

    protected abstract void a(Parcel parcel, int j);

    public void writeToParcel(Parcel parcel, int j)
    {
        boolean flag;
        if (!a)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        px.a(flag);
        a = true;
        a(parcel, j);
    }
}
