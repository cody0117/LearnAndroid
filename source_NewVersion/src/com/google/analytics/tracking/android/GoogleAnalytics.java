// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.analytics.tracking.android;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import java.util.Collection;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

// Referenced classes of package com.google.analytics.tracking.android:
//            TrackerHandler, GAThread, AdHitIdGenerator, AnalyticsThread, 
//            GAUsage, Tracker, Utils, Log

public class GoogleAnalytics
    implements TrackerHandler
{

    private static GoogleAnalytics sInstance;
    private AdHitIdGenerator mAdHitIdGenerator;
    private volatile Boolean mAppOptOut;
    private volatile String mClientId;
    private Context mContext;
    private boolean mDebug;
    private Tracker mDefaultTracker;
    private String mLastTrackingId;
    private AnalyticsThread mThread;
    private final Map mTrackers;

    GoogleAnalytics()
    {
        mTrackers = new HashMap();
    }

    private GoogleAnalytics(Context context)
    {
        this(context, ((AnalyticsThread) (GAThread.getInstance(context))));
    }

    private GoogleAnalytics(Context context, AnalyticsThread analyticsthread)
    {
        mTrackers = new HashMap();
        if (context == null)
        {
            throw new IllegalArgumentException("context cannot be null");
        } else
        {
            mContext = context.getApplicationContext();
            mThread = analyticsthread;
            mAdHitIdGenerator = new AdHitIdGenerator();
            mThread.requestAppOptOut(new _cls1());
            mThread.requestClientId(new _cls2());
            return;
        }
    }

    static void clearInstance()
    {
        com/google/analytics/tracking/android/GoogleAnalytics;
        JVM INSTR monitorenter ;
        sInstance = null;
        com/google/analytics/tracking/android/GoogleAnalytics;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        com/google/analytics/tracking/android/GoogleAnalytics;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static GoogleAnalytics getInstance()
    {
        com/google/analytics/tracking/android/GoogleAnalytics;
        JVM INSTR monitorenter ;
        GoogleAnalytics googleanalytics = sInstance;
        com/google/analytics/tracking/android/GoogleAnalytics;
        JVM INSTR monitorexit ;
        return googleanalytics;
        Exception exception;
        exception;
        throw exception;
    }

    public static GoogleAnalytics getInstance(Context context)
    {
        com/google/analytics/tracking/android/GoogleAnalytics;
        JVM INSTR monitorenter ;
        GoogleAnalytics googleanalytics;
        if (sInstance == null)
        {
            sInstance = new GoogleAnalytics(context);
        }
        googleanalytics = sInstance;
        com/google/analytics/tracking/android/GoogleAnalytics;
        JVM INSTR monitorexit ;
        return googleanalytics;
        Exception exception;
        exception;
        throw exception;
    }

    static GoogleAnalytics getNewInstance(Context context, AnalyticsThread analyticsthread)
    {
        com/google/analytics/tracking/android/GoogleAnalytics;
        JVM INSTR monitorenter ;
        GoogleAnalytics googleanalytics;
        if (sInstance != null)
        {
            sInstance.close();
        }
        googleanalytics = new GoogleAnalytics(context, analyticsthread);
        sInstance = googleanalytics;
        com/google/analytics/tracking/android/GoogleAnalytics;
        JVM INSTR monitorexit ;
        return googleanalytics;
        Exception exception;
        exception;
        throw exception;
    }

    void close()
    {
    }

    public void closeTracker(Tracker tracker)
    {
        this;
        JVM INSTR monitorenter ;
        mTrackers.values().remove(tracker);
        if (tracker == mDefaultTracker)
        {
            mDefaultTracker = null;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    Boolean getAppOptOut()
    {
        return mAppOptOut;
    }

    String getClientIdForAds()
    {
        if (mClientId == null)
        {
            return null;
        } else
        {
            return mClientId.toString();
        }
    }

    public Tracker getDefaultTracker()
    {
        this;
        JVM INSTR monitorenter ;
        Tracker tracker;
        GAUsage.getInstance().setUsage(GAUsage.Field.GET_DEFAULT_TRACKER);
        tracker = mDefaultTracker;
        this;
        JVM INSTR monitorexit ;
        return tracker;
        Exception exception;
        exception;
        throw exception;
    }

    public Tracker getTracker(String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        throw new IllegalArgumentException("trackingId cannot be null");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        Tracker tracker = (Tracker)mTrackers.get(s);
        if (tracker != null)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        tracker = new Tracker(s, this);
        mTrackers.put(s, tracker);
        if (mDefaultTracker == null)
        {
            mDefaultTracker = tracker;
        }
        GAUsage.getInstance().setUsage(GAUsage.Field.GET_TRACKER);
        this;
        JVM INSTR monitorexit ;
        return tracker;
    }

    String getTrackingIdForAds()
    {
        return mLastTrackingId;
    }

    public boolean isDebugEnabled()
    {
        GAUsage.getInstance().setUsage(GAUsage.Field.GET_DEBUG);
        return mDebug;
    }

    public void requestAppOptOut(AppOptOutCallback appoptoutcallback)
    {
        GAUsage.getInstance().setUsage(GAUsage.Field.REQUEST_APP_OPT_OUT);
        if (mAppOptOut != null)
        {
            appoptoutcallback.reportAppOptOut(mAppOptOut.booleanValue());
            return;
        } else
        {
            mThread.requestAppOptOut(appoptoutcallback);
            return;
        }
    }

    public void sendHit(Map map)
    {
        this;
        JVM INSTR monitorenter ;
        if (map != null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        throw new IllegalArgumentException("hit cannot be null");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        map.put("language", Utils.getLanguage(Locale.getDefault()));
        map.put("adSenseAdMobHitId", Integer.toString(mAdHitIdGenerator.getAdHitId()));
        map.put("screenResolution", (new StringBuilder()).append(mContext.getResources().getDisplayMetrics().widthPixels).append("x").append(mContext.getResources().getDisplayMetrics().heightPixels).toString());
        map.put("usage", GAUsage.getInstance().getAndClearSequence());
        GAUsage.getInstance().getAndClearUsage();
        mThread.sendHit(map);
        mLastTrackingId = (String)map.get("trackingId");
        this;
        JVM INSTR monitorexit ;
    }

    public void setAppOptOut(boolean flag)
    {
        GAUsage.getInstance().setUsage(GAUsage.Field.SET_APP_OPT_OUT);
        mAppOptOut = Boolean.valueOf(flag);
        mThread.setAppOptOut(flag);
    }

    public void setDebug(boolean flag)
    {
        GAUsage.getInstance().setUsage(GAUsage.Field.SET_DEBUG);
        mDebug = flag;
        Log.setDebug(flag);
    }

    public void setDefaultTracker(Tracker tracker)
    {
        this;
        JVM INSTR monitorenter ;
        GAUsage.getInstance().setUsage(GAUsage.Field.SET_DEFAULT_TRACKER);
        mDefaultTracker = tracker;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }


/*
    static Boolean access$002(GoogleAnalytics googleanalytics, Boolean boolean1)
    {
        googleanalytics.mAppOptOut = boolean1;
        return boolean1;
    }

*/


/*
    static String access$102(GoogleAnalytics googleanalytics, String s)
    {
        googleanalytics.mClientId = s;
        return s;
    }

*/

    private class _cls1
        implements AppOptOutCallback
    {

        final GoogleAnalytics this$0;

        public void reportAppOptOut(boolean flag)
        {
            mAppOptOut = Boolean.valueOf(flag);
        }

        _cls1()
        {
            this$0 = GoogleAnalytics.this;
            super();
        }
    }


    private class _cls2
        implements AnalyticsThread.ClientIdCallback
    {

        final GoogleAnalytics this$0;

        public void reportClientId(String s)
        {
            mClientId = s;
        }

        _cls2()
        {
            this$0 = GoogleAnalytics.this;
            super();
        }
    }


    private class AppOptOutCallback
    {

        public abstract void reportAppOptOut(boolean flag);
    }

}
