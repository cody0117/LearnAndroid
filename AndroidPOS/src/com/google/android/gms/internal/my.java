// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

// Referenced classes of package com.google.android.gms.internal:
//            le, id, tc, rs, 
//            rw

public abstract class my
    implements le
{

    protected MotionEvent a;
    protected DisplayMetrics b;
    protected rs c;
    private rw d;

    protected my(Context context, rs rs1, rw rw1)
    {
        c = rs1;
        d = rw1;
        try
        {
            b = context.getResources().getDisplayMetrics();
            return;
        }
        catch (UnsupportedOperationException unsupportedoperationexception)
        {
            b = new DisplayMetrics();
        }
        b.density = 1.0F;
    }

    private String a(Context context, String s, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        b();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        a();
_L1:
        byte abyte0[] = c();
        this;
        JVM INSTR monitorexit ;
        Exception exception;
        byte abyte1[];
        byte abyte2[];
        MessageDigest messagedigest;
        byte abyte3[];
        byte abyte4[];
        byte abyte5[];
        byte abyte6[];
        String s1;
        try
        {
            if (abyte0.length != 0)
            {
                break MISSING_BLOCK_LABEL_60;
            }
            s1 = Integer.toString(5);
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            return Integer.toString(7);
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            return Integer.toString(7);
        }
        catch (IOException ioexception)
        {
            return Integer.toString(3);
        }
        return s1;
        b(context);
          goto _L1
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (abyte0.length > 239)
        {
            b();
            a(20, 1L);
            abyte0 = c();
        }
        if (abyte0.length >= 239) goto _L3; else goto _L2
_L2:
        abyte6 = new byte[239 - abyte0.length];
        (new SecureRandom()).nextBytes(abyte6);
        abyte2 = ByteBuffer.allocate(240).put((byte)abyte0.length).put(abyte0).put(abyte6).array();
_L4:
        messagedigest = MessageDigest.getInstance("MD5");
        messagedigest.update(abyte2);
        abyte3 = messagedigest.digest();
        abyte4 = ByteBuffer.allocate(256).put(abyte3).put(abyte2).array();
        abyte5 = new byte[256];
        (new id()).a(abyte4, abyte5);
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_255;
        }
        if (s.length() > 0)
        {
            if (s.length() > 32)
            {
                s = s.substring(0, 32);
            }
            (new tc(s.getBytes("UTF-8"))).a(abyte5);
        }
        return c.a(abyte5);
_L3:
        abyte1 = ByteBuffer.allocate(240).put((byte)abyte0.length).put(abyte0).array();
        abyte2 = abyte1;
          goto _L4
    }

    private void b()
    {
        d.a();
    }

    private byte[] c()
    {
        return d.b();
    }

    public final String a(Context context)
    {
        return a(context, ((String) (null)), false);
    }

    public final String a(Context context, String s)
    {
        return a(context, s, true);
    }

    protected abstract void a();

    public final void a(int i, int j, int k)
    {
        if (a != null)
        {
            a.recycle();
        }
        a = MotionEvent.obtain(0L, k, 1, (float)i * b.density, (float)j * b.density, 0.0F, 0.0F, 0, 0.0F, 0.0F, 0, 0);
    }

    protected final void a(int i, long l)
    {
        d.a(i, l);
    }

    protected final void a(int i, String s)
    {
        d.a(i, s);
    }

    public final void a(MotionEvent motionevent)
    {
        if (motionevent.getAction() == 1)
        {
            if (a != null)
            {
                a.recycle();
            }
            a = MotionEvent.obtain(motionevent);
        }
    }

    protected abstract void b(Context context);
}
