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
//            m, p, r, b

final class n
{

    private final p a;
    private final m b;
    private final int c;
    private final String d;
    private final String e;
    private final com.google.android.a.a.b f;

    private void a(int i)
    {
        b.a(i);
    }

    private void a(int i, r r1)
    {
        a.a(i, r1);
        if (a.a())
        {
            b.a();
            return;
        } else
        {
            b.b();
            return;
        }
    }

    private void d()
    {
        b.b();
    }

    public final m a()
    {
        return b;
    }

    public final void a(PublicKey publickey, int i, String s, String s1)
    {
        int j;
        String s3;
        String as[];
        r r1;
        if (i != 0 && i != 1)
        {
            r1 = null;
            if (i != 2)
            {
                break MISSING_BLOCK_LABEL_364;
            }
        }
        try
        {
            Signature signature = Signature.getInstance("SHA1withRSA");
            signature.initVerify(publickey);
            signature.update(s.getBytes());
            if (!signature.verify(com.google.android.a.a.a.a.a(s1)))
            {
                d();
                return;
            }
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            throw new RuntimeException(nosuchalgorithmexception);
        }
        catch (InvalidKeyException invalidkeyexception)
        {
            a(5);
            return;
        }
        catch (SignatureException signatureexception)
        {
            throw new RuntimeException(signatureexception);
        }
        catch (b b1)
        {
            d();
            return;
        }
        try
        {
            j = s.indexOf(':');
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            d();
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
            s = s2;
            s3 = "";
            continue; /* Loop/switch isn't completed */
        }
        String s4 = s.substring(j + 1);
        s = s2;
        s3 = s4;
        if (true) goto _L4; else goto _L3
_L3:
        r1 = new r();
        r1.g = s3;
        r1.a = Integer.parseInt(as[0]);
        r1.b = Integer.parseInt(as[1]);
        r1.c = as[2];
        r1.d = as[3];
        r1.e = as[4];
        r1.f = Long.parseLong(as[5]);
        if (r1.a != i)
        {
            d();
            return;
        }
        if (r1.b != c)
        {
            d();
            return;
        }
        if (!r1.c.equals(d))
        {
            d();
            return;
        }
        if (!r1.d.equals(e))
        {
            d();
            return;
        }
        if (TextUtils.isEmpty(r1.e))
        {
            d();
            return;
        }
        switch (i)
        {
        default:
            d();
            return;

        case 0: // '\0'
        case 2: // '\002'
            a(f.a(), r1);
            return;

        case 1: // '\001'
            a(561, r1);
            return;

        case 257: 
            a(291, r1);
            return;

        case 4: // '\004'
            a(291, r1);
            return;

        case 5: // '\005'
            a(291, r1);
            return;

        case 258: 
            a(1);
            return;

        case 259: 
            a(2);
            return;

        case 3: // '\003'
            a(3);
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
