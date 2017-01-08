// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bugsense.trace;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.bugsense.trace:
//            Utils, PingsMechanism, G, CrashMechanism, 
//            EventsMechanism, DefaultExceptionHandler, ExceptionCallback

public class BugSenseHandler
{

    public static boolean I_WANT_TO_DEBUG = false;
    private static HashMap crashExtraData = new HashMap();
    private static android.content.SharedPreferences.Editor editor;
    private static ExceptionCallback exceptionCallback = null;
    private static boolean isSessionActive = false;
    static String locText = "";
    static String locTicker = "";
    static String locTitle = "";
    private static SharedPreferences preferences;

    public BugSenseHandler()
    {
    }

    public static void addCrashExtraData(String s, String s1)
    {
        if (crashExtraData == null)
        {
            crashExtraData = new HashMap();
        }
        crashExtraData.put(s, Utils.exceedLimitString(s1));
    }

    public static void addCrashExtraMap(HashMap hashmap)
    {
        if (crashExtraData == null)
        {
            crashExtraData = new HashMap();
        }
        java.util.Map.Entry entry;
        for (Iterator iterator = hashmap.entrySet().iterator(); iterator.hasNext(); crashExtraData.put(entry.getKey(), Utils.exceedLimitString((String)entry.getValue())))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

    }

    public static void clearCrashExtraData()
    {
        if (crashExtraData == null)
        {
            crashExtraData = new HashMap();
            return;
        } else
        {
            crashExtraData.clear();
            return;
        }
    }

    public static void clearTotalCrashesNum()
    {
        Utils.clearCrashCounter();
    }

    public static void closeSession(Context context)
    {
        isSessionActive = false;
        PingsMechanism.savePing(1, "");
    }

    public static void flush(Context context)
    {
        if (G.sendOnlyWiFi)
        {
            if (G.IS_WIFI_ON == 1)
            {
                String _tmp = G.TAG;
                PingsMechanism.getInstance().sendSavedPings();
                CrashMechanism.getInstance().sendSavedCrashes();
                EventsMechanism.getInstance().sendSavedEvents();
            }
            return;
        } else
        {
            String _tmp1 = G.TAG;
            PingsMechanism.getInstance().sendSavedPings();
            CrashMechanism.getInstance().sendSavedCrashes();
            EventsMechanism.getInstance().sendSavedEvents();
            return;
        }
    }

    protected static ExceptionCallback getCallback()
    {
        return exceptionCallback;
    }

    public static HashMap getCrashExtraData()
    {
        if (crashExtraData == null)
        {
            crashExtraData = new HashMap();
        }
        return crashExtraData;
    }

    public static String getLastCrashID()
    {
        return Utils.getLastCrashID();
    }

    public static int getTotalCrashesNum()
    {
        return Utils.getCrashCounter();
    }

    public static void initAndStartSession(final Context context, String s)
    {
        if (context == null)
        {
            G.TAG;
            return;
        }
        G.TIMESTAMP = System.currentTimeMillis();
        if (s == null || s.length() < 8 || s.length() > 14)
        {
            throw new IllegalArgumentException("Your BugSense API Key is invalid!");
        }
        G.API_KEY = s;
        installHandler();
        G.PHONE_MODEL = Build.MODEL;
        G.ANDROID_VERSION = android.os.Build.VERSION.RELEASE;
        try
        {
            PackageInfo packageinfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            G.APP_VERSION = packageinfo.versionName;
            G.APP_VERSIONCODE = String.valueOf(packageinfo.versionCode);
            G.APP_PACKAGE = packageinfo.packageName;
        }
        catch (Exception exception)
        {
            G.TAG;
            if (I_WANT_TO_DEBUG)
            {
                exception.printStackTrace();
            }
            continue; /* Loop/switch isn't completed */
        }
_L4:
        Utils.setProperties(context);
        G.FILES_PATH = context.getFilesDir().getAbsolutePath();
_L2:
        if (G.FILES_PATH == null)
        {
            G.TAG;
            return;
        }
        break; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        if (I_WANT_TO_DEBUG)
        {
            exception1.printStackTrace();
        }
        if (true) goto _L2; else goto _L1
_L1:
        if (I_WANT_TO_DEBUG)
        {
            G.TAG;
            (new StringBuilder("Files Path set to: ")).append(G.FILES_PATH);
        }
        G.HAS_ROOT = Utils.checkForRoot();
        (new Thread(new _cls1())).start();
        return;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static void installHandler()
    {
        String _tmp = G.TAG;
        Thread.UncaughtExceptionHandler uncaughtexceptionhandler = Thread.getDefaultUncaughtExceptionHandler();
        if (uncaughtexceptionhandler != null && I_WANT_TO_DEBUG)
        {
            String _tmp1 = G.TAG;
            (new StringBuilder("current handler class=")).append(uncaughtexceptionhandler.getClass().getName());
        }
        if (!(uncaughtexceptionhandler instanceof DefaultExceptionHandler))
        {
            Thread.setDefaultUncaughtExceptionHandler(new DefaultExceptionHandler(uncaughtexceptionhandler));
        }
    }

    public static void leaveBreadcrumb(String s)
    {
        if (G.breadcrumbs == null)
        {
            G.breadcrumbs = new ArrayList(16);
        }
        if (G.breadcrumbs.size() >= 16)
        {
            G.breadcrumbs.remove(0);
        }
        G.breadcrumbs.add(s);
        if (I_WANT_TO_DEBUG)
        {
            String _tmp = G.TAG;
            (new StringBuilder("BreadCrumb: ")).append(s).append(" added.");
        }
    }

    public static void removeCrashExtraData(String s)
    {
        if (crashExtraData == null)
        {
            crashExtraData = new HashMap();
        }
        crashExtraData.remove(s);
    }

    public static void sendDataOverWiFiOnly()
    {
        G.sendOnlyWiFi = true;
        if (I_WANT_TO_DEBUG)
        {
            String _tmp = G.TAG;
        }
    }

    public static void sendEvent(String s)
    {
        EventsMechanism.saveEvent(s);
    }

    public static void sendException(Exception exception)
    {
        sendExceptionMap(new HashMap(0), exception);
    }

    public static void sendExceptionMap(HashMap hashmap, Exception exception)
    {
        StringWriter stringwriter;
        PrintWriter printwriter;
        stringwriter = new StringWriter();
        printwriter = new PrintWriter(stringwriter);
        if (G.API_KEY != null) goto _L2; else goto _L1
_L1:
        G.TAG;
_L3:
        return;
_L2:
        HashMap hashmap1;
        long l;
        G.TAG;
        exception.printStackTrace(printwriter);
        hashmap1 = new HashMap();
        if (hashmap != null)
        {
            java.util.Map.Entry entry;
            for (Iterator iterator = hashmap.entrySet().iterator(); iterator.hasNext(); hashmap1.put(entry.getKey(), Utils.exceedLimitString((String)entry.getValue())))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

        }
        l = 0L;
        long l1;
        long l2;
        l1 = System.currentTimeMillis();
        l2 = G.TIMESTAMP;
        l = l1 - l2;
_L5:
        String s1 = CrashMechanism.createJSONFromCrash(stringwriter.toString(), G.IS_WIFI_ON, G.IS_MOBILENET_ON, G.IS_GPS_ON, G.SCREEN_PROPS, Utils.getTime(), getCrashExtraData(), hashmap1, 0, l, null);
        String s = s1;
_L4:
        try
        {
            CrashMechanism.saveCrash(s, 0);
            return;
        }
        catch (Exception exception3)
        {
            G.TAG;
            if (I_WANT_TO_DEBUG)
            {
                exception3.printStackTrace();
                return;
            }
        }
          goto _L3
        Exception exception2;
        exception2;
        exception2.printStackTrace();
        s = "";
          goto _L4
        Exception exception1;
        exception1;
          goto _L5
    }

    public static void sendExceptionMessage(String s, String s1, Exception exception)
    {
        HashMap hashmap = new HashMap(1);
        if (s != null && s1 != null)
        {
            hashmap.put(s, Utils.exceedLimitString(s1));
        }
        sendExceptionMap(hashmap, exception);
    }

    public static void setExceptionCallback(ExceptionCallback exceptioncallback)
    {
        exceptionCallback = exceptioncallback;
    }

    public static void setLocalizedNotification(String s, String s1, String s2)
    {
        locTicker = s;
        locTitle = s1;
        locText = s2;
    }

    public static void setLogging(int i)
    {
        G.SEND_LOG = true;
        G.LOG_LINES = i;
    }

    public static void setLogging(int i, String s)
    {
        G.SEND_LOG = true;
        G.LOG_LINES = i;
        G.LOG_FILTER = s;
    }

    public static void setLogging(String s)
    {
        G.SEND_LOG = true;
        G.LOG_FILTER = s;
    }

    public static void setLogging(boolean flag)
    {
        G.SEND_LOG = flag;
    }

    public static void setUserIdentifier(String s)
    {
        G.userIdentifier = s;
    }

    public static void startSession(Context context)
    {
        installHandler();
        Utils.setProperties(context);
        if (isSessionActive)
        {
            break MISSING_BLOCK_LABEL_96;
        }
        isSessionActive = true;
        SharedPreferences sharedpreferences = context.getSharedPreferences(G.TAG, 0);
        Long long1 = Long.valueOf(sharedpreferences.getLong("lastping", 0L));
        if (long1.longValue() == 0L || System.currentTimeMillis() > 10000L + long1.longValue())
        {
            sharedpreferences.edit().putLong("lastping", System.currentTimeMillis()).commit();
            PingsMechanism.savePing(0, "");
        }
_L1:
        return;
        NullPointerException nullpointerexception;
        nullpointerexception;
        G.TAG;
        if (I_WANT_TO_DEBUG)
        {
            nullpointerexception.printStackTrace();
            return;
        }
          goto _L1
    }

    public static void useProxy(boolean flag)
    {
        G.proxyEnabled = flag;
    }




/*
    static SharedPreferences access$002(SharedPreferences sharedpreferences)
    {
        preferences = sharedpreferences;
        return sharedpreferences;
    }

*/



/*
    static android.content.SharedPreferences.Editor access$102(android.content.SharedPreferences.Editor editor1)
    {
        editor = editor1;
        return editor1;
    }

*/

    private class _cls1
        implements Runnable
    {

        final Context val$context;

        public final void run()
        {
            BufferedReader bufferedreader;
            BufferedReader bufferedreader1;
            String s;
            G.UID = UidManager.getUid(context);
            File file;
            String s1;
            if (!G.proxyEnabled)
            {
                if (!G.ANALYTICS_URL.contains(G.API_KEY))
                {
                    G.ANALYTICS_URL = (new StringBuilder()).append(G.ANALYTICS_URL).append(G.API_KEY).append("/").append(G.UID).toString();
                }
            } else
            {
                G.URL = "http://alt.bugsense.com/api/errors";
                if (!G.ANALYTICS_URL.contains(G.API_KEY))
                {
                    G.ANALYTICS_URL = (new StringBuilder("http://alt.bugsense.com/api/ticks/")).append(G.API_KEY).append("/").append(G.UID).toString();
                }
            }
            if (BugSenseHandler.I_WANT_TO_DEBUG)
            {
                G.TAG;
                (new StringBuilder("Crash     URL set to: ")).append(G.URL);
                G.TAG;
                (new StringBuilder("Analytics URL set to: ")).append(G.ANALYTICS_URL);
            }
            PingsMechanism.transmitPingASync(0);
            try
            {
                BugSenseHandler.preferences = context.getSharedPreferences(G.TAG, 0);
                BugSenseHandler.editor = BugSenseHandler.preferences.edit();
                BugSenseHandler.editor.putLong("lastping", System.currentTimeMillis()).commit();
            }
            catch (Exception exception)
            {
                G.TAG;
                if (BugSenseHandler.I_WANT_TO_DEBUG)
                {
                    exception.printStackTrace();
                }
            }
            BugSenseHandler.flush(context);
            BugSenseHandler.startSession(context);
            file = new File((new StringBuilder()).append(G.FILES_PATH).append("/fixnotification").toString());
            if (!file.exists()) goto _L2; else goto _L1
_L1:
            bufferedreader = new BufferedReader(new FileReader(file.getAbsolutePath()));
            s1 = bufferedreader.readLine();
            bufferedreader1 = bufferedreader;
            s = s1;
_L3:
            Exception exception2;
            if (bufferedreader1 != null)
            {
                try
                {
                    bufferedreader1.close();
                }
                catch (IOException ioexception)
                {
                    ioexception.printStackTrace();
                }
            }
            if (file.exists())
            {
                file.delete();
            }
            if (s != null && s.length() > 5)
            {
                BugSense.showUpgradeNotification(context, s);
            }
_L2:
            return;
            exception2;
            bufferedreader = null;
_L4:
            bufferedreader1 = bufferedreader;
            s = "";
              goto _L3
            Exception exception1;
            exception1;
              goto _L4
        }

        _cls1()
        {
            context = context1;
            super();
        }
    }

}
