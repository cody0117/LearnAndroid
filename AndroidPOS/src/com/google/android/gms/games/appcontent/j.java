// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.appcontent;

import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games.appcontent:
//            l, AppContentConditionRef

final class j
    implements l
{

    final ArrayList a;

    j(ArrayList arraylist)
    {
        a = arraylist;
        super();
    }

    public final void a(ArrayList arraylist, int i)
    {
        a.add(new AppContentConditionRef(arraylist, i));
    }
}
