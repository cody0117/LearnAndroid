// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;


// Referenced classes of package com.sun.crypto.provider:
//            SunJCE_e

abstract class SunJCE_h
{

    final SunJCE_e a;
    final int b;
    byte c[];

    SunJCE_h(SunJCE_e sunjce_e)
    {
        a = sunjce_e;
        b = sunjce_e.a();
    }

    abstract String a();

    abstract void a(boolean flag, String s, byte abyte0[], byte abyte1[]);

    abstract void a(byte abyte0[], int i, int j, byte abyte1[], int k);

    abstract void b();

    abstract void b(byte abyte0[], int i, int j, byte abyte1[], int k);

    abstract void c();

    void c(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        a(abyte0, i, j, abyte1, k);
    }

    abstract void d();

    void d(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        b(abyte0, i, j, abyte1, k);
    }

    final SunJCE_e e()
    {
        return a;
    }

    final int f()
    {
        return b;
    }

    final byte[] g()
    {
        return c;
    }
}
