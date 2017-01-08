// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.LinkedList;

// Referenced classes of package com.google.android.gms.internal:
//            lf, ia, gs, lq

public final class hz
    implements Thread.UncaughtExceptionHandler
{

    private Thread.UncaughtExceptionHandler a;
    private Thread.UncaughtExceptionHandler b;
    private Context c;
    private gs d;

    public hz(Context context, gs gs1, Thread.UncaughtExceptionHandler uncaughtexceptionhandler, Thread.UncaughtExceptionHandler uncaughtexceptionhandler1)
    {
        a = uncaughtexceptionhandler;
        b = uncaughtexceptionhandler1;
        c = context;
        d = gs1;
    }

    public static hz a(Context context, Thread thread, gs gs1)
    {
        if (context == null || thread == null || gs1 == null)
        {
            return null;
        }
        lf.h();
        if (!a())
        {
            return null;
        }
        Thread.UncaughtExceptionHandler uncaughtexceptionhandler = thread.getUncaughtExceptionHandler();
        hz hz1 = new hz(context, gs1, uncaughtexceptionhandler, Thread.getDefaultUncaughtExceptionHandler());
        if (uncaughtexceptionhandler == null || !(uncaughtexceptionhandler instanceof hz))
        {
            try
            {
                thread.setUncaughtExceptionHandler(hz1);
            }
            catch (SecurityException securityexception)
            {
                return null;
            }
            return hz1;
        } else
        {
            return (hz)uncaughtexceptionhandler;
        }
    }

    private static boolean a()
    {
        for (Bundle bundle = lf.h(); bundle == null || !bundle.getBoolean("gads:sdk_crash_report_enabled", false);)
        {
            return false;
        }

        return true;
    }

    private static boolean a(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            return false;
        }
        if (s.startsWith("com.google.android.gms.ads"))
        {
            return true;
        }
        if (s.startsWith("com.google.ads"))
        {
            return true;
        }
        boolean flag;
        try
        {
            flag = Class.forName(s).isAnnotationPresent(com/google/android/gms/internal/ia);
        }
        catch (Exception exception)
        {
            (new StringBuilder("Fail to check class type for class ")).append(s);
            return false;
        }
        return flag;
    }

    public final void a(Throwable throwable)
    {
        Context _tmp = c;
        if (a())
        {
            Bundle bundle = lf.h();
            if (bundle == null || !bundle.getBoolean("gads:sdk_crash_report_full_stacktrace", false))
            {
                LinkedList linkedlist = new LinkedList();
                for (; throwable != null; throwable = throwable.getCause())
                {
                    linkedlist.push(throwable);
                }

                Throwable throwable1 = null;
                while (!linkedlist.isEmpty()) 
                {
                    Throwable throwable2 = (Throwable)linkedlist.pop();
                    StackTraceElement astacktraceelement[] = throwable2.getStackTrace();
                    ArrayList arraylist1 = new ArrayList();
                    arraylist1.add(new StackTraceElement(throwable2.getClass().getName(), "<filtered>", "<filtered>", 1));
                    int i = astacktraceelement.length;
                    int j = 0;
                    boolean flag = false;
                    while (j < i) 
                    {
                        StackTraceElement stacktraceelement = astacktraceelement[j];
                        if (a(stacktraceelement.getClassName()))
                        {
                            arraylist1.add(stacktraceelement);
                            flag = true;
                        } else
                        {
                            String s2 = stacktraceelement.getClassName();
                            boolean flag1;
                            if (!TextUtils.isEmpty(s2) && (s2.startsWith("android.") || s2.startsWith("java.")))
                            {
                                flag1 = true;
                            } else
                            {
                                flag1 = false;
                            }
                            if (flag1)
                            {
                                arraylist1.add(stacktraceelement);
                            } else
                            {
                                arraylist1.add(new StackTraceElement("<filtered>", "<filtered>", "<filtered>", 1));
                            }
                        }
                        j++;
                    }
                    ArrayList arraylist;
                    StringWriter stringwriter;
                    android.net.Uri.Builder builder;
                    String s;
                    String s1;
                    Throwable throwable3;
                    if (flag)
                    {
                        if (throwable1 == null)
                        {
                            throwable3 = new Throwable(throwable2.getMessage());
                        } else
                        {
                            throwable3 = new Throwable(throwable2.getMessage(), throwable1);
                        }
                        throwable3.setStackTrace((StackTraceElement[])arraylist1.toArray(new StackTraceElement[0]));
                    } else
                    {
                        throwable3 = throwable1;
                    }
                    throwable1 = throwable3;
                }
                throwable = throwable1;
            }
            if (throwable != null)
            {
                arraylist = new ArrayList();
                stringwriter = new StringWriter();
                throwable.printStackTrace(new PrintWriter(stringwriter));
                builder = (new android.net.Uri.Builder()).scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter("os", android.os.Build.VERSION.RELEASE).appendQueryParameter("api", String.valueOf(android.os.Build.VERSION.SDK_INT));
                s = Build.MANUFACTURER;
                s1 = Build.MODEL;
                if (!s1.startsWith(s))
                {
                    s1 = (new StringBuilder()).append(s).append(" ").append(s1).toString();
                }
                arraylist.add(builder.appendQueryParameter("device", s1).appendQueryParameter("js", d.b).appendQueryParameter("appid", c.getApplicationContext().getPackageName()).appendQueryParameter("stacktrace", stringwriter.toString()).toString());
                lq.a(c, d.b, arraylist, lf.g());
                return;
            }
        }
    }

    public final void uncaughtException(Thread thread, Throwable throwable)
    {
        boolean flag = true;
        if (throwable == null) goto _L2; else goto _L1
_L1:
        boolean flag1;
        boolean flag2;
        flag1 = false;
        flag2 = false;
        for (Throwable throwable1 = throwable; throwable1 != null; throwable1 = throwable1.getCause())
        {
            StackTraceElement astacktraceelement[] = throwable1.getStackTrace();
            int i = astacktraceelement.length;
            for (int j = 0; j < i; j++)
            {
                StackTraceElement stacktraceelement = astacktraceelement[j];
                if (a(stacktraceelement.getClassName()))
                {
                    flag2 = flag;
                }
                if (getClass().getName().equals(stacktraceelement.getClassName()))
                {
                    flag1 = flag;
                }
            }

        }

        if (!flag2 || flag1) goto _L2; else goto _L3
_L3:
        if (!flag) goto _L5; else goto _L4
_L4:
        a(throwable);
        if (Looper.getMainLooper().getThread() == thread) goto _L5; else goto _L6
_L6:
        return;
_L2:
        flag = false;
        continue; /* Loop/switch isn't completed */
_L5:
        if (a != null)
        {
            a.uncaughtException(thread, throwable);
            return;
        }
        if (b == null) goto _L6; else goto _L7
_L7:
        b.uncaughtException(thread, throwable);
        return;
        if (true) goto _L3; else goto _L8
_L8:
    }
}
