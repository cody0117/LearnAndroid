// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.analytics.tracking.android;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.google.android.gms.analytics.internal.Command;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.LinkedBlockingQueue;

// Referenced classes of package com.google.analytics.tracking.android:
//            AnalyticsThread, Log, Utils, StandardExceptionParser, 
//            ExceptionParser, ServiceProxy, MetaModel, MetaModelInitializer, 
//            GAServiceProxy

class GAThread extends Thread
    implements AnalyticsThread
{

    static final String API_VERSION = "1";
    private static final String CLIENT_VERSION = "ma1b5";
    private static final int MAX_SAMPLE_RATE = 100;
    private static final int SAMPLE_RATE_MODULO = 10000;
    private static final int SAMPLE_RATE_MULTIPLIER = 100;
    private static GAThread sInstance;
    private volatile boolean mAppOptOut;
    private volatile String mClientId;
    private volatile boolean mClosed;
    private volatile List mCommands;
    private final Context mContext;
    private volatile boolean mDisabled;
    private volatile String mInstallCampaign;
    private volatile MetaModel mMetaModel;
    private volatile ServiceProxy mServiceProxy;
    private final LinkedBlockingQueue queue;

    private GAThread(Context context)
    {
        super("GAThread");
        queue = new LinkedBlockingQueue();
        mDisabled = false;
        mClosed = false;
        if (context != null)
        {
            mContext = context.getApplicationContext();
        } else
        {
            mContext = context;
        }
        start();
    }

    GAThread(Context context, ServiceProxy serviceproxy)
    {
        super("GAThread");
        queue = new LinkedBlockingQueue();
        mDisabled = false;
        mClosed = false;
        if (context != null)
        {
            mContext = context.getApplicationContext();
        } else
        {
            mContext = context;
        }
        mServiceProxy = serviceproxy;
        start();
    }

    private void fillAppParameters(Map map)
    {
        PackageManager packagemanager;
        String s;
        String s1;
        packagemanager = mContext.getPackageManager();
        s = mContext.getPackageName();
        s1 = packagemanager.getInstallerPackageName(s);
        PackageInfo packageinfo = packagemanager.getPackageInfo(mContext.getPackageName(), 0);
        if (packageinfo == null) goto _L2; else goto _L1
_L1:
        String s4 = packagemanager.getApplicationLabel(packageinfo.applicationInfo).toString();
        String s2 = s4;
        String s3 = packageinfo.versionName;
_L5:
        putIfAbsent(map, "appName", s2);
        putIfAbsent(map, "appVersion", s3);
        putIfAbsent(map, "appId", s);
        putIfAbsent(map, "appInstallerId", s1);
        map.put("apiVersion", "1");
        return;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        s2 = s;
_L3:
        Log.e((new StringBuilder("Error retrieving package info: appName set to ")).append(s2).toString());
        s3 = null;
        continue; /* Loop/switch isn't completed */
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception1;
        namenotfoundexception1;
        if (true) goto _L3; else goto _L2
_L2:
        s2 = s;
        s3 = null;
        if (true) goto _L5; else goto _L4
_L4:
    }

    private void fillCampaignParameters(Map map)
    {
        String s = Utils.filterCampaign((String)map.get("campaign"));
        if (TextUtils.isEmpty(s))
        {
            return;
        } else
        {
            Map map1 = Utils.parseURLParameters(s);
            map.put("campaignContent", map1.get("utm_content"));
            map.put("campaignMedium", map1.get("utm_medium"));
            map.put("campaignName", map1.get("utm_campaign"));
            map.put("campaignSource", map1.get("utm_source"));
            map.put("campaignKeyword", map1.get("utm_term"));
            map.put("campaignId", map1.get("utm_id"));
            map.put("gclid", map1.get("gclid"));
            map.put("dclid", map1.get("dclid"));
            map.put("gmob_t", map1.get("gmob_t"));
            return;
        }
    }

    private void fillExceptionParameters(Map map)
    {
        String s = (String)map.get("rawException");
        if (s != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        ByteArrayInputStream bytearrayinputstream;
        map.remove("rawException");
        bytearrayinputstream = new ByteArrayInputStream(Utils.hexDecode(s));
        Object obj;
        ObjectInputStream objectinputstream = new ObjectInputStream(bytearrayinputstream);
        obj = objectinputstream.readObject();
        objectinputstream.close();
        if (!(obj instanceof Throwable)) goto _L1; else goto _L3
_L3:
        Throwable throwable = (Throwable)obj;
        ArrayList arraylist = new ArrayList();
        map.put("exDescription", (new StandardExceptionParser(mContext, arraylist)).getDescription((String)map.get("exceptionThreadName"), throwable));
        return;
        IOException ioexception;
        ioexception;
        Log.w("IOException reading exception");
        return;
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        Log.w("ClassNotFoundException reading exception");
        return;
    }

    private String generateClientId()
    {
        String s = UUID.randomUUID().toString().toLowerCase();
        if (!storeClientId(s))
        {
            s = "0";
        }
        return s;
    }

    static String getAndClearCampaign(Context context)
    {
        FileInputStream fileinputstream;
        byte abyte0[];
        int i;
        fileinputstream = context.openFileInput("gaInstallData");
        abyte0 = new byte[8192];
        i = fileinputstream.read(abyte0, 0, 8192);
        if (fileinputstream.available() <= 0)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        Log.e("Too much campaign data, ignoring it.");
        fileinputstream.close();
        context.deleteFile("gaInstallData");
        return null;
        String s;
        try
        {
            fileinputstream.close();
            context.deleteFile("gaInstallData");
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            Log.i("No campaign data found.");
            return null;
        }
        catch (IOException ioexception)
        {
            Log.e("Error reading campaign data.");
            context.deleteFile("gaInstallData");
            return null;
        }
        if (i > 0)
        {
            break MISSING_BLOCK_LABEL_97;
        }
        Log.w("Campaign file is empty.");
        return null;
        s = new String(abyte0, 0, i);
        Log.i((new StringBuilder("Campaign found: ")).append(s).toString());
        return s;
    }

    private String getHostUrl(Map map)
    {
label0:
        {
label1:
            {
                String s = (String)map.get("internalHitUrl");
                if (s == null)
                {
                    if (!map.containsKey("useSecure"))
                    {
                        break label0;
                    }
                    if (!Utils.safeParseBoolean((String)map.get("useSecure")))
                    {
                        break label1;
                    }
                    s = "https://ssl.google-analytics.com/collect";
                }
                return s;
            }
            return "http://www.google-analytics.com/collect";
        }
        return "https://ssl.google-analytics.com/collect";
    }

    static GAThread getInstance(Context context)
    {
        if (sInstance == null)
        {
            sInstance = new GAThread(context);
        }
        return sInstance;
    }

    private void init()
    {
        mServiceProxy.createService();
        mCommands = new ArrayList();
        mCommands.add(new Command("appendVersion", "_v", "ma1b5"));
        mCommands.add(new Command("appendQueueTime", "qt", null));
        mCommands.add(new Command("appendCacheBuster", "z", null));
        mMetaModel = new MetaModel();
        MetaModelInitializer.set(mMetaModel);
    }

    private boolean isSampledOut(Map map)
    {
        if (map.get("sampleRate") != null)
        {
            double d = Utils.safeParseDouble((String)map.get("sampleRate"));
            if (d <= 0.0D)
            {
                return true;
            }
            if (d < 100D)
            {
                String s = (String)map.get("clientId");
                if (s != null && (double)(Math.abs(s.hashCode()) % 10000) >= d * 100D)
                {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean loadAppOptOut()
    {
        return mContext.getFileStreamPath("gaOptOut").exists();
    }

    private String printStackTrace(Throwable throwable)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        PrintStream printstream = new PrintStream(bytearrayoutputstream);
        throwable.printStackTrace(printstream);
        printstream.flush();
        return new String(bytearrayoutputstream.toByteArray());
    }

    private void putIfAbsent(Map map, String s, String s1)
    {
        if (!map.containsKey(s))
        {
            map.put(s, s1);
        }
    }

    private void queueToThread(Runnable runnable)
    {
        queue.add(runnable);
    }

    private boolean storeClientId(String s)
    {
        try
        {
            FileOutputStream fileoutputstream = mContext.openFileOutput("gaClientId", 0);
            fileoutputstream.write(s.getBytes());
            fileoutputstream.close();
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            Log.e("Error creating clientId file.");
            return false;
        }
        catch (IOException ioexception)
        {
            Log.e("Error writing to clientId file.");
            return false;
        }
        return true;
    }

    void close()
    {
        mClosed = true;
        interrupt();
    }

    public void dispatch()
    {
        queueToThread(new _cls2());
    }

    public LinkedBlockingQueue getQueue()
    {
        return queue;
    }

    public Thread getThread()
    {
        return this;
    }

    String initializeClientId()
    {
        String s = null;
        FileInputStream fileinputstream;
        byte abyte0[];
        int i;
        fileinputstream = mContext.openFileInput("gaClientId");
        abyte0 = new byte[128];
        i = fileinputstream.read(abyte0, 0, 128);
        if (fileinputstream.available() > 0)
        {
            Log.e("clientId file seems corrupted, deleting it.");
            fileinputstream.close();
            mContext.deleteFile("gaInstallData");
        }
        if (i > 0) goto _L2; else goto _L1
_L1:
        Log.e("clientId file seems empty, deleting it.");
        fileinputstream.close();
        mContext.deleteFile("gaInstallData");
_L8:
        if (s == null)
        {
            s = generateClientId();
        }
        return s;
_L2:
        String s1 = new String(abyte0, 0, i);
        fileinputstream.close();
        s = s1;
        continue; /* Loop/switch isn't completed */
        IOException ioexception;
        ioexception;
_L6:
        Log.e("Error reading clientId file, deleting it.");
        mContext.deleteFile("gaInstallData");
        continue; /* Loop/switch isn't completed */
        NumberFormatException numberformatexception;
        numberformatexception;
_L4:
        Log.e("cliendId file doesn't have long value, deleting it.");
        mContext.deleteFile("gaInstallData");
        continue; /* Loop/switch isn't completed */
        NumberFormatException numberformatexception1;
        numberformatexception1;
        s = s1;
        if (true) goto _L4; else goto _L3
_L3:
        IOException ioexception1;
        ioexception1;
        s = s1;
        if (true) goto _L6; else goto _L5
_L5:
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        s = null;
        continue; /* Loop/switch isn't completed */
        FileNotFoundException filenotfoundexception1;
        filenotfoundexception1;
        s = s1;
        if (true) goto _L8; else goto _L7
_L7:
    }

    boolean isDisabled()
    {
        return mDisabled;
    }

    public void requestAppOptOut(final GoogleAnalytics.AppOptOutCallback callback)
    {
        queueToThread(new _cls4());
    }

    public void requestClientId(final AnalyticsThread.ClientIdCallback callback)
    {
        queueToThread(new _cls5());
    }

    public void run()
    {
        Throwable throwable1;
        InterruptedException interruptedexception1;
        Runnable runnable;
        try
        {
            Thread.sleep(5000L);
        }
        catch (InterruptedException interruptedexception)
        {
            Log.w("sleep interrupted in GAThread initialize");
        }
        if (mServiceProxy == null)
        {
            mServiceProxy = new GAServiceProxy(mContext, this);
        }
        init();
        try
        {
            mAppOptOut = loadAppOptOut();
            mClientId = initializeClientId();
            mInstallCampaign = getAndClearCampaign(mContext);
        }
        catch (Throwable throwable)
        {
            Log.e((new StringBuilder("Error initializing the GAThread: ")).append(printStackTrace(throwable)).toString());
            Log.e("Google Analytics will not start up.");
            mDisabled = true;
        }
        if (mClosed)
        {
            break; /* Loop/switch isn't completed */
        }
        runnable = (Runnable)queue.take();
        if (!mDisabled)
        {
            runnable.run();
        }
        continue; /* Loop/switch isn't completed */
        interruptedexception1;
        try
        {
            Log.i(interruptedexception1.toString());
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable1)
        {
            Log.e((new StringBuilder("Error on GAThread: ")).append(printStackTrace(throwable1)).toString());
            Log.e("Google Analytics is shutting down.");
            mDisabled = true;
        }
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_60;
_L1:
    }

    public void sendHit(Map map)
    {
        final HashMap hitCopy = new HashMap(map);
        final long hitTime = System.currentTimeMillis();
        hitCopy.put("hitTime", Long.toString(hitTime));
        queueToThread(new _cls1());
    }

    public void setAppOptOut(final boolean appOptOut)
    {
        queueToThread(new _cls3());
    }





/*
    static boolean access$102(GAThread gathread, boolean flag)
    {
        gathread.mAppOptOut = flag;
        return flag;
    }

*/





/*
    static String access$302(GAThread gathread, String s)
    {
        gathread.mInstallCampaign = s;
        return s;
    }

*/







    private class _cls2
        implements Runnable
    {

        final GAThread this$0;

        public void run()
        {
            mServiceProxy.dispatch();
        }

        _cls2()
        {
            this$0 = GAThread.this;
            super();
        }
    }


    private class _cls4
        implements Runnable
    {

        final GAThread this$0;
        final GoogleAnalytics.AppOptOutCallback val$callback;

        public void run()
        {
            callback.reportAppOptOut(mAppOptOut);
        }

        _cls4()
        {
            this$0 = GAThread.this;
            callback = appoptoutcallback;
            super();
        }
    }


    private class _cls5
        implements Runnable
    {

        final GAThread this$0;
        final AnalyticsThread.ClientIdCallback val$callback;

        public void run()
        {
            callback.reportClientId(mClientId);
        }

        _cls5()
        {
            this$0 = GAThread.this;
            callback = clientidcallback;
            super();
        }
    }


    private class _cls1
        implements Runnable
    {

        final GAThread this$0;
        final Map val$hitCopy;
        final long val$hitTime;

        public void run()
        {
            hitCopy.put("clientId", mClientId);
            if (mAppOptOut || isSampledOut(hitCopy))
            {
                return;
            }
            if (!TextUtils.isEmpty(mInstallCampaign))
            {
                hitCopy.put("campaign", mInstallCampaign);
                mInstallCampaign = null;
            }
            fillAppParameters(hitCopy);
            fillCampaignParameters(hitCopy);
            fillExceptionParameters(hitCopy);
            Map map = HitBuilder.generateHitParams(mMetaModel, hitCopy);
            mServiceProxy.putHit(map, hitTime, getHostUrl(hitCopy), mCommands);
        }

        _cls1()
        {
            this$0 = GAThread.this;
            hitCopy = map;
            hitTime = l;
            super();
        }
    }


    private class _cls3
        implements Runnable
    {

        final GAThread this$0;
        final boolean val$appOptOut;

        public void run()
        {
            if (mAppOptOut == appOptOut)
            {
                return;
            }
            if (appOptOut)
            {
                File file = mContext.getFileStreamPath("gaOptOut");
                try
                {
                    file.createNewFile();
                }
                catch (IOException ioexception)
                {
                    Log.w("Error creating optOut file.");
                }
                mServiceProxy.clearHits();
            } else
            {
                mContext.deleteFile("gaOptOut");
            }
            mAppOptOut = appOptOut;
        }

        _cls3()
        {
            this$0 = GAThread.this;
            appOptOut = flag;
            super();
        }
    }

}
