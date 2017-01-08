// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bugsense.trace;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Process;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;

// Referenced classes of package com.bugsense.trace:
//            BugSenseHandler, G, BugSense

public class Utils
{

    public static final int STATE_DONT_KNOW = 2;
    public static final int STATE_OFF = 0;
    public static final int STATE_ON = 1;
    static final String crashCounterFile = "crashCounter";
    static final String lastCrashIDFile = "lastCrashID";
    static final Runtime rt = Runtime.getRuntime();

    public Utils()
    {
    }

    private static int CheckNetworkConnection(Context context, String s)
    {
        if (context != null) goto _L2; else goto _L1
_L1:
        if (BugSenseHandler.I_WANT_TO_DEBUG)
        {
            G.TAG;
        }
_L4:
        return 2;
_L2:
        PackageManager packagemanager = context.getPackageManager();
        if (packagemanager != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (!BugSenseHandler.I_WANT_TO_DEBUG)
        {
            continue; /* Loop/switch isn't completed */
        }
        G.TAG;
        return 2;
        if (packagemanager.checkPermission("android.permission.ACCESS_NETWORK_STATE", G.APP_PACKAGE) != 0) goto _L4; else goto _L3
_L3:
        ConnectivityManager connectivitymanager = (ConnectivityManager)context.getSystemService("connectivity");
        if (connectivitymanager != null) goto _L6; else goto _L5
_L5:
        if (!BugSenseHandler.I_WANT_TO_DEBUG) goto _L8; else goto _L7
_L7:
        G.TAG;
        return 2;
_L6:
        NetworkInfo anetworkinfo[];
        int i;
        anetworkinfo = connectivitymanager.getAllNetworkInfo();
        i = anetworkinfo.length;
        byte byte0;
        int j;
        j = 0;
        byte0 = 2;
_L10:
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        boolean flag;
        NetworkInfo networkinfo = anetworkinfo[j];
        if (!networkinfo.getTypeName().equalsIgnoreCase(s))
        {
            break MISSING_BLOCK_LABEL_136;
        }
        flag = networkinfo.isConnected();
        if (flag)
        {
            byte0 = 1;
        }
        j++;
        if (true) goto _L10; else goto _L9
_L8:
        byte0 = 2;
_L9:
        return byte0;
        NullPointerException nullpointerexception;
        nullpointerexception;
        if (BugSenseHandler.I_WANT_TO_DEBUG)
        {
            nullpointerexception.printStackTrace();
            return 2;
        }
        if (true) goto _L4; else goto _L11
_L11:
    }

    public static String MD5(String s)
    {
        MessageDigest messagedigest = MessageDigest.getInstance("MD5");
        messagedigest.update(s.getBytes(), 0, s.length());
        return (new BigInteger(1, messagedigest.digest())).toString(16);
    }

    protected static String[] ScreenProperties(Context context)
    {
        String as[];
        DisplayMetrics displaymetrics;
        Display display;
        int k;
        String s;
        as = (new String[] {
            "Not available", "Not available", "Not available", "Not available", "Not available"
        });
        displaymetrics = new DisplayMetrics();
        display = ((WindowManager)context.getSystemService("window")).getDefaultDisplay();
        int i = display.getWidth();
        int j = display.getHeight();
        k = display.getOrientation();
        as[0] = Integer.toString(i);
        as[1] = Integer.toString(j);
        s = "";
        k;
        JVM INSTR tableswitch 0 3: default 124
    //                   0 156
    //                   1 177
    //                   2 163
    //                   3 170;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        as[2] = s;
        display.getMetrics(displaymetrics);
        as[3] = Float.toString(displaymetrics.xdpi);
        as[4] = Float.toString(displaymetrics.ydpi);
        return as;
_L2:
        s = "normal";
        continue; /* Loop/switch isn't completed */
_L4:
        s = "180";
        continue; /* Loop/switch isn't completed */
_L5:
        s = "270";
        continue; /* Loop/switch isn't completed */
_L3:
        s = "90";
        if (true) goto _L1; else goto _L6
_L6:
    }

    protected static boolean checkForRoot()
    {
        String as[] = {
            "/sbin/", "/system/bin/", "/system/xbin/", "/data/local/xbin/", "/data/local/bin/", "/system/sd/xbin/", "/system/bin/failsafe/", "/data/local/"
        };
        int i = as.length;
        for (int j = 0; j < i; j++)
        {
            String s = as[j];
            if ((new File((new StringBuilder()).append(s).append("su").toString())).exists())
            {
                return true;
            }
        }

        return false;
    }

    protected static void clearCrashCounter()
    {
        Thread thread = new Thread(new _cls1());
        ExecutorService executorservice = BugSense.getExecutor();
        if (executorservice != null)
        {
            executorservice.submit(thread);
        }
    }

    public static final String exceedLimitString(String s)
    {
        if (s == null || s.length() <= 0)
        {
            s = "";
        } else
        if (s.length() != 128 && s.length() > 128)
        {
            return (new StringBuilder()).append(s.substring(0, 125)).append("...").toString();
        }
        return s;
    }

    public static String getAppsRunning(Context context)
    {
        if (context.getPackageManager().checkPermission("android.permission.GET_TASKS", G.APP_PACKAGE) == 0)
        {
            List list = ((ActivityManager)context.getSystemService("activity")).getRunningAppProcesses();
            if (list == null)
            {
                return "0";
            } else
            {
                return String.valueOf(list.size());
            }
        } else
        {
            return "no_permissions";
        }
    }

    public static String getCPU()
    {
        Process process;
        String s;
        process = null;
        s = String.valueOf(Process.myPid());
        Process process2 = Runtime.getRuntime().exec("top -d 1 -n 1");
        Process process1 = process2;
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(process1.getInputStream()));
        String s4 = "unknown";
_L2:
        String s5 = bufferedreader.readLine();
        if (s5 == null)
        {
            break MISSING_BLOCK_LABEL_133;
        }
        if (!s5.contains(s)) goto _L2; else goto _L1
_L1:
        String as[] = s5.split(" ");
        if (as == null) goto _L2; else goto _L3
_L3:
        int i = 0;
_L5:
        if (i >= as.length) goto _L2; else goto _L4
_L4:
        if (as[i] == null || !as[i].contains("%"))
        {
            break MISSING_BLOCK_LABEL_127;
        }
        s4 = as[i];
          goto _L2
        i++;
          goto _L5
        bufferedreader.close();
        if (process1 == null)
        {
            break MISSING_BLOCK_LABEL_147;
        }
        process1.destroy();
        String s2 = s4;
_L6:
        Exception exception;
        IOException ioexception1;
        String s1;
        IOException ioexception;
        IOException ioexception2;
        String s3;
        IOException ioexception3;
        try
        {
            s3 = s2.substring(0, -1 + s2.length());
        }
        catch (Exception exception1)
        {
            exception1.printStackTrace();
            return s2;
        }
        return s3;
        ioexception3;
        ioexception3.printStackTrace();
        s2 = s4;
          goto _L6
        ioexception1;
        bufferedreader = null;
        s1 = "unknown";
_L9:
        ioexception1.printStackTrace();
        if (bufferedreader == null)
        {
            break MISSING_BLOCK_LABEL_205;
        }
        bufferedreader.close();
        if (process == null)
        {
            break MISSING_BLOCK_LABEL_213;
        }
        process.destroy();
        s2 = s1;
          goto _L6
        ioexception2;
        ioexception2.printStackTrace();
        s2 = s1;
          goto _L6
        exception;
        bufferedreader = null;
        process1 = null;
_L8:
        if (bufferedreader == null)
        {
            break MISSING_BLOCK_LABEL_248;
        }
        bufferedreader.close();
        if (process1 != null)
        {
            try
            {
                process1.destroy();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        }
        throw exception;
        exception;
        bufferedreader = null;
        continue; /* Loop/switch isn't completed */
        exception;
        continue; /* Loop/switch isn't completed */
        exception;
        process1 = process;
        if (true) goto _L8; else goto _L7
_L7:
        ioexception1;
        process = process1;
        s1 = "unknown";
        bufferedreader = null;
          goto _L9
        ioexception1;
        Process process3 = process1;
        s1 = s4;
        process = process3;
          goto _L9
    }

    protected static int getCrashCounter()
    {
        Integer integer;
        File file;
        integer = Integer.valueOf(0);
        file = new File((new StringBuilder()).append(G.FILES_PATH).append("/crashCounter").toString());
        if (file.exists()) goto _L2; else goto _L1
_L1:
        int k;
        file.createNewFile();
        k = integer.intValue();
        int i = k;
_L6:
        return i;
        IOException ioexception3;
        ioexception3;
        ioexception3.printStackTrace();
_L2:
        BufferedReader bufferedreader = new BufferedReader(new FileReader(file));
        Integer integer3 = Integer.valueOf(Integer.parseInt(bufferedreader.readLine().trim()));
        Integer integer2 = integer3;
_L4:
        int j = integer2.intValue();
        try
        {
            bufferedreader.close();
        }
        catch (IOException ioexception2)
        {
            ioexception2.printStackTrace();
            return j;
        }
        return j;
        Exception exception1;
        exception1;
        Integer integer1 = Integer.valueOf(0);
        integer2 = integer1;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception2;
        exception2;
        bufferedreader = null;
_L9:
        if (BugSenseHandler.I_WANT_TO_DEBUG)
        {
            exception2.printStackTrace();
        }
        i = 0;
        if (bufferedreader == null) goto _L6; else goto _L5
_L5:
        try
        {
            bufferedreader.close();
        }
        catch (IOException ioexception1)
        {
            ioexception1.printStackTrace();
            return 0;
        }
        return 0;
        Exception exception;
        exception;
        bufferedreader = null;
_L8:
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        }
        throw exception;
        exception;
        if (true) goto _L8; else goto _L7
_L7:
        exception2;
          goto _L9
    }

    public static String getLastCrashID()
    {
        File file = new File((new StringBuilder()).append(G.FILES_PATH).append("/lastCrashID").toString());
        if (file.exists()) goto _L2; else goto _L1
_L1:
        file.createNewFile();
_L6:
        return null;
        IOException ioexception3;
        ioexception3;
        ioexception3.printStackTrace();
_L2:
        BufferedReader bufferedreader = new BufferedReader(new FileReader(file));
        String s1 = bufferedreader.readLine().trim();
        String s = s1;
_L4:
        try
        {
            bufferedreader.close();
        }
        catch (IOException ioexception2)
        {
            ioexception2.printStackTrace();
            return s;
        }
        return s;
        Exception exception1;
        exception1;
        exception1.printStackTrace();
        s = null;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception2;
        exception2;
_L9:
        if (BugSenseHandler.I_WANT_TO_DEBUG)
        {
            exception2.printStackTrace();
        }
        if (bufferedreader == null) goto _L6; else goto _L5
_L5:
        try
        {
            bufferedreader.close();
        }
        catch (IOException ioexception1)
        {
            ioexception1.printStackTrace();
            return null;
        }
        return null;
        Exception exception3;
        exception3;
        Exception exception;
        bufferedreader = null;
        exception = exception3;
_L8:
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        }
        throw exception;
        exception;
        if (true) goto _L8; else goto _L7
_L7:
        exception2;
        bufferedreader = null;
          goto _L9
    }

    public static String getMem()
    {
        android.app.ActivityManager.MemoryInfo memoryinfo = new android.app.ActivityManager.MemoryInfo();
        StringBuilder stringbuilder = new StringBuilder();
        StringBuilder stringbuilder1 = new StringBuilder();
        Object aobj[] = new Object[1];
        aobj[0] = Double.valueOf((double)rt.freeMemory() / 1048576D);
        stringbuilder.append(stringbuilder1.append(String.format("%.3f", aobj)).append(":").toString());
        StringBuilder stringbuilder2 = new StringBuilder();
        Object aobj1[] = new Object[1];
        aobj1[0] = Double.valueOf((double)rt.maxMemory() / 1048576D);
        stringbuilder.append(stringbuilder2.append(String.format("%.3f", aobj1)).append(":").toString());
        StringBuilder stringbuilder3 = new StringBuilder();
        Object aobj2[] = new Object[1];
        aobj2[0] = Double.valueOf((double)rt.totalMemory() / 1048576D);
        stringbuilder.append(stringbuilder3.append(String.format("%.3f", aobj2)).append(":").toString());
        StringBuilder stringbuilder4 = new StringBuilder();
        Object aobj3[] = new Object[1];
        aobj3[0] = Double.valueOf((double)memoryinfo.availMem / 1048576D);
        stringbuilder.append(stringbuilder4.append(String.format("%.3f", aobj3)).append(":").toString());
        StringBuilder stringbuilder5 = new StringBuilder();
        Object aobj4[] = new Object[1];
        aobj4[0] = Double.valueOf((double)memoryinfo.threshold / 1048576D);
        stringbuilder.append(stringbuilder5.append(String.format("%.3f", aobj4)).append(":").toString());
        stringbuilder.append(String.valueOf(memoryinfo.lowMemory));
        return stringbuilder.toString();
    }

    public static final String getTime()
    {
        String s = String.valueOf(System.currentTimeMillis());
        String s1;
        try
        {
            s1 = String.valueOf(Calendar.getInstance(TimeZone.getTimeZone("UTC")).getTimeInMillis() / 1000L);
        }
        catch (Exception exception)
        {
            return s;
        }
        return s1;
    }

    protected static int isGPSOn(Context context)
    {
        if (context.getPackageManager().checkPermission("android.permission.ACCESS_FINE_LOCATION", G.APP_PACKAGE) == 0)
        {
            return ((LocationManager)context.getSystemService("location")).isProviderEnabled("gps") ? 1 : 0;
        } else
        {
            return 2;
        }
    }

    protected static int isMobileNetworkOn(Context context)
    {
        return CheckNetworkConnection(context, "MOBILE");
    }

    protected static int isWifiOn(Context context)
    {
        return CheckNetworkConnection(context, "WIFI");
    }

    public static String readFile(String s)
    {
        StringBuilder stringbuilder;
        BufferedReader bufferedreader;
        stringbuilder = new StringBuilder();
        bufferedreader = null;
        BufferedReader bufferedreader1 = new BufferedReader(new FileReader(s));
_L3:
        String s1 = bufferedreader1.readLine();
        if (s1 == null) goto _L2; else goto _L1
_L1:
        stringbuilder.append(s1);
          goto _L3
        Exception exception2;
        exception2;
_L9:
        if (bufferedreader1 != null)
        {
            try
            {
                bufferedreader1.close();
            }
            catch (IOException ioexception1)
            {
                ioexception1.printStackTrace();
            }
        }
_L5:
        return stringbuilder.toString();
_L2:
        try
        {
            bufferedreader1.close();
        }
        catch (IOException ioexception2)
        {
            ioexception2.printStackTrace();
        }
        if (true) goto _L5; else goto _L4
_L4:
        Exception exception1;
        exception1;
_L7:
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        }
        throw exception1;
        Exception exception;
        exception;
        bufferedreader = bufferedreader1;
        exception1 = exception;
        if (true) goto _L7; else goto _L6
_L6:
        Exception exception3;
        exception3;
        bufferedreader1 = null;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public static String readLogs()
    {
        int i;
        String s;
        StringBuilder stringbuilder;
        i = G.LOG_LINES;
        if (i < 0)
        {
            i = 100;
        }
        s = G.LOG_FILTER;
        stringbuilder = new StringBuilder();
        BufferedReader bufferedreader;
        ArrayList arraylist;
        bufferedreader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec((new StringBuilder("logcat -d ")).append(s).toString()).getInputStream()));
        arraylist = new ArrayList();
_L1:
        String s1 = bufferedreader.readLine();
label0:
        {
            if (s1 == null)
            {
                break label0;
            }
            try
            {
                arraylist.add(s1);
            }
            catch (Exception exception)
            {
                G.TAG;
                if (BugSenseHandler.I_WANT_TO_DEBUG)
                {
                    exception.printStackTrace();
                }
                return exception.getMessage();
            }
        }
          goto _L1
        if (arraylist.size() == 0)
        {
            return "You must add the android.permission.READ_LOGS permission to your manifest file!";
        }
        int j = arraylist.size() - i;
        int k;
        String s2;
        if (j < 0)
        {
            k = 0;
        } else
        {
            k = j;
        }
        if (k >= arraylist.size())
        {
            break; /* Loop/switch isn't completed */
        }
        stringbuilder.append((new StringBuilder()).append((String)arraylist.get(k)).append("\n").toString());
        k++;
        if (true) goto _L3; else goto _L2
_L3:
        break MISSING_BLOCK_LABEL_153;
_L2:
        s2 = stringbuilder.toString();
        return s2;
    }

    protected static void saveCrashCounter()
    {
        Thread thread = new Thread(new _cls2());
        ExecutorService executorservice = BugSense.getExecutor();
        if (executorservice != null)
        {
            executorservice.submit(thread);
        }
    }

    public static void saveLastCrashID(final String lastID)
    {
        if (BugSenseHandler.I_WANT_TO_DEBUG)
        {
            String _tmp = G.TAG;
            (new StringBuilder("Last Crash id: ")).append(lastID);
        }
        if (lastID != null)
        {
            Thread thread = new Thread(new _cls3());
            ExecutorService executorservice = BugSense.getExecutor();
            if (executorservice != null)
            {
                executorservice.submit(thread);
            }
        }
    }

    public static void setProperties(Context context)
    {
        G.IS_WIFI_ON = isWifiOn(context);
        G.IS_MOBILENET_ON = isMobileNetworkOn(context);
        G.IS_GPS_ON = isGPSOn(context);
        G.SCREEN_PROPS = ScreenProperties(context);
        G.LOCALE = Locale.getDefault().getDisplayLanguage();
        G.APPS_RUNNING = getAppsRunning(context);
    }


    private class _cls1
        implements Runnable
    {

        public final void run()
        {
            File file = new File((new StringBuilder()).append(G.FILES_PATH).append("/crashCounter").toString());
            if (file.exists())
            {
                file.delete();
            }
        }

        _cls1()
        {
        }
    }


    private class _cls2
        implements Runnable
    {

        public final void run()
        {
            BufferedWriter bufferedwriter;
            BufferedReader bufferedreader;
            Integer integer1;
            BufferedWriter bufferedwriter1;
            bufferedwriter = null;
            File file = new File((new StringBuilder()).append(G.FILES_PATH).append("/crashCounter").toString());
            Integer integer2;
            Integer integer3;
            if (!file.exists())
            {
                try
                {
                    file.createNewFile();
                }
                catch (IOException ioexception7)
                {
                    ioexception7.printStackTrace();
                }
            }
            bufferedreader = new BufferedReader(new FileReader(file));
            Integer.valueOf(0);
            integer3 = Integer.valueOf(Integer.parseInt(bufferedreader.readLine().trim()));
            integer1 = integer3;
_L1:
            integer2 = Integer.valueOf(1 + integer1.intValue());
            bufferedwriter1 = new BufferedWriter(new FileWriter(file));
            bufferedwriter1.write(String.valueOf(integer2));
            bufferedwriter1.newLine();
            bufferedwriter1.flush();
            bufferedwriter1.close();
            Exception exception1;
            Integer integer;
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception5)
            {
                ioexception5.printStackTrace();
            }
            bufferedwriter1.close();
_L3:
            return;
            exception1;
            integer = Integer.valueOf(0);
            integer1 = integer;
              goto _L1
            IOException ioexception6;
            ioexception6;
            ioexception6.printStackTrace();
            return;
            IOException ioexception;
            ioexception;
            BufferedReader bufferedreader1 = null;
_L6:
            G.TAG;
            if (BugSenseHandler.I_WANT_TO_DEBUG)
            {
                ioexception.printStackTrace();
            }
            if (bufferedreader1 != null)
            {
                try
                {
                    bufferedreader1.close();
                }
                catch (IOException ioexception4)
                {
                    ioexception4.printStackTrace();
                }
            }
            if (bufferedwriter == null) goto _L3; else goto _L2
_L2:
            try
            {
                bufferedwriter.close();
                return;
            }
            catch (IOException ioexception3)
            {
                ioexception3.printStackTrace();
            }
            return;
            Exception exception;
            exception;
            bufferedreader = null;
_L5:
            if (bufferedreader != null)
            {
                try
                {
                    bufferedreader.close();
                }
                catch (IOException ioexception2)
                {
                    ioexception2.printStackTrace();
                }
            }
            if (bufferedwriter != null)
            {
                try
                {
                    bufferedwriter.close();
                }
                catch (IOException ioexception1)
                {
                    ioexception1.printStackTrace();
                }
            }
            throw exception;
            exception;
            bufferedwriter = null;
            continue; /* Loop/switch isn't completed */
            exception;
            bufferedwriter = bufferedwriter1;
            continue; /* Loop/switch isn't completed */
            exception;
            bufferedreader = bufferedreader1;
            if (true) goto _L5; else goto _L4
_L4:
            ioexception;
            bufferedreader1 = bufferedreader;
            bufferedwriter = null;
              goto _L6
            ioexception;
            bufferedwriter = bufferedwriter1;
            bufferedreader1 = bufferedreader;
              goto _L6
        }

        _cls2()
        {
        }
    }


    private class _cls3
        implements Runnable
    {

        final String val$lastID;

        public final void run()
        {
            BufferedWriter bufferedwriter;
            File file = new File((new StringBuilder()).append(G.FILES_PATH).append("/lastCrashID").toString());
            if (!file.exists())
            {
                try
                {
                    file.createNewFile();
                }
                catch (IOException ioexception4)
                {
                    ioexception4.printStackTrace();
                }
            }
            bufferedwriter = new BufferedWriter(new FileWriter(file));
            bufferedwriter.write(lastID);
            bufferedwriter.newLine();
            bufferedwriter.flush();
            bufferedwriter.close();
            bufferedwriter.close();
_L2:
            return;
            IOException ioexception3;
            ioexception3;
            ioexception3.printStackTrace();
            return;
            IOException ioexception;
            ioexception;
            bufferedwriter = null;
_L5:
            G.TAG;
            if (BugSenseHandler.I_WANT_TO_DEBUG)
            {
                ioexception.printStackTrace();
            }
            if (bufferedwriter == null) goto _L2; else goto _L1
_L1:
            try
            {
                bufferedwriter.close();
                return;
            }
            catch (IOException ioexception2)
            {
                ioexception2.printStackTrace();
            }
            return;
            Exception exception;
            exception;
            bufferedwriter = null;
_L4:
            if (bufferedwriter != null)
            {
                try
                {
                    bufferedwriter.close();
                }
                catch (IOException ioexception1)
                {
                    ioexception1.printStackTrace();
                }
            }
            throw exception;
            exception;
            if (true) goto _L4; else goto _L3
_L3:
            ioexception;
              goto _L5
        }

        _cls3()
        {
            lastID = s;
            super();
        }
    }

}
