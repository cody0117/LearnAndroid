// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.appcontent;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.data.d;
import java.util.List;

public interface AppContentSection
    extends Parcelable, d
{

    public abstract Uri c();

    public abstract List d();

    public abstract String e();

    public abstract Bundle f();

    public abstract String g();

    public abstract String h();

    public abstract List h_();

    public abstract String i();
}
