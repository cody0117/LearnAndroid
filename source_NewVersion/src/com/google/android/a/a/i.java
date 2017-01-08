// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.a.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.a.a.a.a;
import com.google.android.a.a.a.b;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Queue;
import java.util.Set;

// Referenced classes of package com.google.android.a.a:
//            p, n, m, g, 
//            j, f

public final class i
    implements ServiceConnection
{

    private static final SecureRandom a = new SecureRandom();
    private f b;
    private PublicKey c;
    private final Context d;
    private final p e;
    private Handler f;
    private final String g;
    private final String h;
    private final Set i = new HashSet();
    private final Queue j = new LinkedList();

    public i(Context context, p p1, String s)
    {
        d = context;
        e = p1;
        c = a(s);
        g = d.getPackageName();
        h = a(context, g);
        HandlerThread handlerthread = new HandlerThread("background thread");
        handlerthread.start();
        f = new Handler(handlerthread.getLooper());
    }

    static Handler a(i k)
    {
        return k.f;
    }

    private static String a(Context context, String s)
    {
        String s1;
        try
        {
            s1 = String.valueOf(context.getPackageManager().getPackageInfo(s, 0).versionCode);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return "";
        }
        return s1;
    }

    private static PublicKey a(String s)
    {
        PublicKey publickey;
        try
        {
            byte abyte0[] = com.google.android.a.a.a.a.a(s);
            publickey = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(abyte0));
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            throw new RuntimeException(nosuchalgorithmexception);
        }
        catch (b b1)
        {
            throw new IllegalArgumentException(b1);
        }
        catch (InvalidKeySpecException invalidkeyspecexception)
        {
            throw new IllegalArgumentException(invalidkeyspecexception);
        }
        return publickey;
    }

    static void a(i k, n n1)
    {
        k.b(n1);
    }

    private void a(n n1)
    {
        this;
        JVM INSTR monitorenter ;
        i.remove(n1);
        if (i.isEmpty())
        {
            b();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static Set b(i k)
    {
        return k.i;
    }

    private void b()
    {
        if (b != null)
        {
            try
            {
                d.unbindService(this);
            }
            catch (IllegalArgumentException illegalargumentexception) { }
            b = null;
        }
    }

    static void b(i k, n n1)
    {
        k.a(n1);
    }

    private void b(n n1)
    {
        this;
        JVM INSTR monitorenter ;
        e.a(291, null);
        if (!e.a()) goto _L2; else goto _L1
_L1:
        n1.a().a();
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        n1.a().b();
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    static PublicKey c(i k)
    {
        return k.c;
    }

    public final void a()
    {
        this;
        JVM INSTR monitorenter ;
        b();
        f.getLooper().quit();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        this;
        JVM INSTR monitorenter ;
        b = com.google.android.a.a.g.a(ibinder);
_L1:
        n n1 = (n)j.poll();
        if (n1 != null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        (new StringBuilder("Calling checkLicense on service for ")).append(n1.c());
        b.a(n1.b(), n1.c(), new j(this, n1));
        i.add(n1);
          goto _L1
        RemoteException remoteexception;
        remoteexception;
        b(n1);
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    public final void onServiceDisconnected(ComponentName componentname)
    {
        this;
        JVM INSTR monitorenter ;
        b = null;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

}
