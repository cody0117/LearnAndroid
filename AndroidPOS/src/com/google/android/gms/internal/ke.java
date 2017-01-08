// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import java.util.concurrent.Future;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            kd, ka, cd, cg

public final class ke
    implements kd
{

    public ke()
    {
    }

    public final cg a(ka ka1, JSONObject jsonobject)
    {
        Future future = ka1.a(jsonobject, "image", true);
        Future future1 = ka1.a(jsonobject, "app_icon", true);
        return new cd(jsonobject.getString("headline"), (Drawable)future.get(), jsonobject.getString("body"), (Drawable)future1.get(), jsonobject.getString("call_to_action"), jsonobject.optDouble("rating", -1D), jsonobject.optString("store"), jsonobject.optString("price"));
    }
}
