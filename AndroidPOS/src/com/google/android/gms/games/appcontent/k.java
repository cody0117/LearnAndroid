// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games.appcontent:
//            l, AppContentTupleRef, AppContentTuple

final class k
    implements l
{

    final DataHolder a;
    final Bundle b;

    k(DataHolder dataholder, Bundle bundle)
    {
        a = dataholder;
        b = bundle;
        super();
    }

    public final void a(ArrayList arraylist, int i)
    {
        AppContentTupleRef appcontenttupleref = new AppContentTupleRef(a, i);
        b.putString(appcontenttupleref.i_(), appcontenttupleref.c());
    }
}
