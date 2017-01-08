// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package com.google.android.gms.internal:
//            mc, qt, ka

final class kc
    implements mc
{

    final boolean a;
    final ka b;

    kc(ka ka1, boolean flag)
    {
        b = ka1;
        a = flag;
        super();
    }

    private Drawable b(InputStream inputstream)
    {
        byte abyte1[];
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        qt.a(inputstream, bytearrayoutputstream);
        abyte1 = bytearrayoutputstream.toByteArray();
        byte abyte0[] = abyte1;
_L2:
        if (abyte0 == null)
        {
            b.a(2, a);
            return null;
        }
        break; /* Loop/switch isn't completed */
        IOException ioexception;
        ioexception;
        abyte0 = null;
        if (true) goto _L2; else goto _L1
_L1:
        android.graphics.Bitmap bitmap = BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length);
        if (bitmap == null)
        {
            b.a(2, a);
            return null;
        } else
        {
            return new BitmapDrawable(Resources.getSystem(), bitmap);
        }
    }

    public final Object a()
    {
        b.a(2, a);
        return null;
    }

    public final Object a(InputStream inputstream)
    {
        return b(inputstream);
    }
}
