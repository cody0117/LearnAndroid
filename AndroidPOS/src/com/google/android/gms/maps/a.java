// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps;

import android.content.Context;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.maps:
//            GoogleMapOptions

final class a extends com.google.android.gms.a.a
{

    private final ViewGroup a;
    private final Context b;
    private final GoogleMapOptions c;
    private final List d = new ArrayList();

    a(ViewGroup viewgroup, Context context, GoogleMapOptions googlemapoptions)
    {
        a = viewgroup;
        b = context;
        c = googlemapoptions;
    }
}
