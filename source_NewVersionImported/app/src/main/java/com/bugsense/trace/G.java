// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bugsense.trace;

import java.util.ArrayList;

public class G
{

    protected static String ANALYTICS_URL = "https://ticks2.bugsense.com/api/ticks/";
    protected static String ANDROID_VERSION = "unknown";
    protected static String API_KEY = "unknown";
    protected static String APPS_RUNNING = "unknown";
    protected static String APP_PACKAGE = "unknown";
    protected static String APP_VERSION = "unknown";
    protected static String APP_VERSIONCODE = "unknown";
    protected static final String BUGSENSE_VERSION = "3.6.1";
    protected static String FILES_PATH = null;
    protected static boolean HAS_ROOT = false;
    protected static int IS_GPS_ON = 0;
    protected static int IS_MOBILENET_ON = 0;
    protected static int IS_WIFI_ON = 0;
    protected static String LOCALE = "unknown";
    protected static String LOG_FILTER = "";
    protected static int LOG_LINES = 0;
    protected static final int MAX_BREADCRUMBS = 16;
    protected static String PHONE_BRAND = "unknown";
    protected static String PHONE_MODEL = "unknown";
    protected static String SCREEN_PROPS[] = {
        "unknown", "unknown", "unknown", "unknown", "unknown", "unknown"
    };
    protected static boolean SEND_LOG = false;
    protected static String TAG = "BugSenseHandler";
    protected static long TIMESTAMP = 0L;
    protected static String UID = "";
    protected static String URL = "https://bugsense.appspot.com/api/errors";
    protected static ArrayList breadcrumbs = new ArrayList(16);
    protected static boolean proxyEnabled = false;
    protected static boolean sendOnlyWiFi = false;
    protected static String userIdentifier = null;

    public G()
    {
    }

    static 
    {
        HAS_ROOT = false;
        LOG_LINES = 5000;
        IS_WIFI_ON = 2;
        IS_MOBILENET_ON = 2;
        IS_GPS_ON = 2;
    }
}
