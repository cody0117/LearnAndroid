// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.a.a;

import android.text.TextUtils;
import com.google.android.a.a.a.a;
import com.google.android.a.a.a.b;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.util.regex.Pattern;

// Referenced classes of package com.google.android.a.a:
//            n, o, l, a

final class m
{

    private final n a;
    private final l b;
    private final int c;
    private final String d;
    private final String e;
    private final com.google.android.a.a.a f;

    private void d()
    {
        n _tmp = a;
        if (a.a())
        {
            l _tmp1 = b;
            return;
        } else
        {
            l _tmp2 = b;
            return;
        }
    }

    public final l a()
    {
        return b;
    }

    public final void a(PublicKey publickey, int i, String s, String s1)
    {
        int j;
        String s3;
        String as[];
        if (i != 0 && i != 1 && i != 2)
        {
            break MISSING_BLOCK_LABEL_365;
        }
        try
        {
            Signature signature = Signature.getInstance("SHA1withRSA");
            signature.initVerify(publickey);
            signature.update(s.getBytes());
            if (!signature.verify(com.google.android.a.a.a.a.a(s1)))
            {
                b;
                return;
            }
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            throw new RuntimeException(nosuchalgorithmexception);
        }
        catch (InvalidKeyException invalidkeyexception)
        {
            b;
            return;
        }
        catch (SignatureException signatureexception)
        {
            throw new RuntimeException(signatureexception);
        }
        catch (b b1)
        {
            b;
            return;
        }
        try
        {
            j = s.indexOf(':');
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            b;
            return;
        }
        if (-1 != j) goto _L2; else goto _L1
_L1:
        s3 = "";
_L4:
        as = TextUtils.split(s, Pattern.quote("|"));
        if (as.length < 6)
        {
            throw new IllegalArgumentException("Wrong number of fields.");
        }
        break; /* Loop/switch isn't completed */
_L2:
        String s2 = s.substring(0, j);
        if (j >= s.length())
        {
            s3 = "";
            s = s2;
            continue; /* Loop/switch isn't completed */
        }
        s3 = s.substring(j + 1);
        s = s2;
        if (true) goto _L4; else goto _L3
_L3:
        o o1;
        o1 = new o();
        o1.g = s3;
        o1.a = Integer.parseInt(as[0]);
        o1.b = Integer.parseInt(as[1]);
        o1.c = as[2];
        o1.d = as[3];
        o1.e = as[4];
        o1.f = Long.parseLong(as[5]);
        if (o1.a != i)
        {
            b;
            return;
        }
        if (o1.b != c)
        {
            b;
            return;
        }
        if (!o1.c.equals(d))
        {
            b;
            return;
        }
        if (!o1.d.equals(e))
        {
            b;
            return;
        }
        if (TextUtils.isEmpty(o1.e))
        {
            b;
            return;
        }
        switch (i)
        {
        default:
            b;
            return;

        case 0: // '\0'
        case 2: // '\002'
            f;
            d();
            return;

        case 1: // '\001'
            d();
            return;

        case 257: 
            d();
            return;

        case 4: // '\004'
            d();
            return;

        case 5: // '\005'
            d();
            return;

        case 258: 
            b;
            return;

        case 259: 
            b;
            return;

        case 3: // '\003'
            b;
            return;
        }
    }

    public final int b()
    {
        return c;
    }

    public final String c()
    {
        return d;
    }
}
