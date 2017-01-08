// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bugsense.trace;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.bugsense.trace:
//            G, Utils, BugSense, BugSenseHandler

public final class CrashMechanism
{

    protected static final int CRASH = 1;
    public static final int HANDLEDEXCEPTION = 0;
    private static final int MAX_CRASHES = 5;
    private static final int MAX_EXCEPTIONS = 8;
    static final String fixfilename = "fixnotification";
    private static volatile CrashMechanism instance;

    public CrashMechanism()
    {
    }

    protected static String createJSONFromCrash(String s, int i, int j, int k, String as[], String s1, Map map, Map map1, 
            int l, long l1, Map map2)
    {
        JSONObject jsonobject;
        JSONObject jsonobject3;
        JSONObject jsonobject4;
        JSONObject jsonobject5;
        JSONObject jsonobject6;
        jsonobject = new JSONObject();
        JSONObject jsonobject1 = new JSONObject();
        JSONObject jsonobject2 = new JSONObject();
        jsonobject3 = new JSONObject();
        jsonobject4 = new JSONObject();
        jsonobject5 = new JSONObject();
        jsonobject6 = new JSONObject();
        if (G.userIdentifier != null)
        {
            jsonobject1.put("user_id", G.userIdentifier);
        }
        jsonobject.put("request", jsonobject1);
        BufferedReader bufferedreader = new BufferedReader(new StringReader(s));
        String s2;
        Iterator iterator1;
        java.util.Map.Entry entry1;
        String s3;
        if (s1 == null)
        {
            jsonobject2.put("occured_at", bufferedreader.readLine());
        } else
        {
            jsonobject2.put("occured_at", s1);
        }
        jsonobject2.put("message", bufferedreader.readLine());
        s2 = bufferedreader.readLine();
        s3 = s2.substring(1 + s2.lastIndexOf("("), s2.lastIndexOf(")"));
        s2 = s3;
_L2:
        jsonobject2.put("where", s2);
        jsonobject2.put("handled", l);
        jsonobject2.put("klass", getClass(s));
        jsonobject2.put("backtrace", s);
        jsonobject2.put("breadcrumbs", getBreadcrumbsLine(G.breadcrumbs));
        jsonobject.put("exception", jsonobject2);
        bufferedreader.close();
        jsonobject4.put("uid", G.UID);
        jsonobject4.put("phone", G.PHONE_MODEL);
        jsonobject4.put("brand", G.PHONE_BRAND);
        jsonobject4.put("appver", G.APP_VERSION);
        jsonobject4.put("appname", G.APP_PACKAGE);
        jsonobject4.put("internal_version", G.APP_VERSIONCODE);
        jsonobject4.put("osver", G.ANDROID_VERSION);
        jsonobject4.put("wifi_on", i);
        jsonobject4.put("mobile_net_on", j);
        jsonobject4.put("gps_on", k);
        jsonobject4.put("screen:width", as[0]);
        jsonobject4.put("screen:height", as[1]);
        jsonobject4.put("screen:orientation", as[2]);
        jsonobject4.put("screen_dpi(x:y)", (new StringBuilder()).append(as[3]).append(":").append(as[4]).toString());
        jsonobject4.put("locale", G.LOCALE);
        jsonobject4.put("apps_running", G.APPS_RUNNING);
        if (map1 != null)
        {
            map.putAll(map1);
        }
        if (G.SEND_LOG && l == 1)
        {
            map.put("log", Utils.readLogs());
        }
        map.put("rooted", String.valueOf(G.HAS_ROOT));
        map.put("ms_from_start", String.valueOf(l1));
        if (map != null && !map.isEmpty())
        {
            for (iterator1 = map.entrySet().iterator(); iterator1.hasNext(); jsonobject3.put((String)entry1.getKey(), entry1.getValue()))
            {
                entry1 = (java.util.Map.Entry)iterator1.next();
            }

            jsonobject4.put("log_data", jsonobject3);
        }
        if (map2 != null && !map2.isEmpty())
        {
            java.util.Map.Entry entry;
            for (Iterator iterator = map2.entrySet().iterator(); iterator.hasNext(); jsonobject5.put((String)entry.getKey(), entry.getValue()))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

            jsonobject.put("performance", jsonobject5);
        }
        jsonobject.put("application_environment", jsonobject4);
        jsonobject6.put("version", "3.6.1");
        jsonobject6.put("name", "bugsense-android");
        jsonobject.put("client", jsonobject6);
        return jsonobject.toString();
        Exception exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static String getBreadcrumbsLine(ArrayList arraylist)
    {
        if (arraylist == null || arraylist.size() == 0)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder();
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); stringbuilder.append("|"))
        {
            String s1 = ((String)iterator.next()).replaceAll("\\|", "_");
            if (s1.charAt(0) == '_')
            {
                s1 = s1.replaceFirst("_", "-");
            }
            stringbuilder.append(s1);
        }

        String s;
        try
        {
            s = stringbuilder.toString().substring(0, -1 + stringbuilder.toString().length());
        }
        catch (Exception exception)
        {
            String _tmp = G.TAG;
            return "";
        }
        return s;
    }

    private static String getClass(String s)
    {
        String s1 = "";
        int i;
        String s2;
        try
        {
            i = s.indexOf(":");
        }
        catch (Exception exception)
        {
            return s1;
        }
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        if (i + 1 >= s.length())
        {
            break MISSING_BLOCK_LABEL_37;
        }
        s2 = s.substring(0, i);
        s1 = s2;
        return s1;
    }

    protected static CrashMechanism getInstance()
    {
        if (instance == null)
        {
            instance = new CrashMechanism();
        }
        return instance;
    }

    protected static void saveCrash(final String jsonCrashData, final int type)
    {
        Thread thread = new Thread(new _cls4());
        ExecutorService executorservice = BugSense.getExecutor();
        if (executorservice != null)
        {
            executorservice.submit(thread);
        }
    }

    private static void saveFixNotification(final String line)
    {
        Thread thread = new Thread(new _cls3());
        ExecutorService executorservice = BugSense.getExecutor();
        if (executorservice != null)
        {
            executorservice.submit(thread);
        }
    }

    protected static void transmitCrashASync(final String jsonCrashData, final int type)
    {
        Thread thread = new Thread(new _cls2());
        ExecutorService executorservice = BugSense.getExecutor();
        if (executorservice != null)
        {
            executorservice.submit(thread);
        }
    }

    private static boolean transmitCrashSync(String s, int i)
    {
        if (BugSenseHandler.I_WANT_TO_DEBUG)
        {
            G.TAG;
            (new StringBuilder("Transmitting Crash, URL: ")).append(G.URL).append(" APIKEY: ").append(G.API_KEY);
        }
        if (s.length() <= 10) goto _L2; else goto _L1
_L1:
        HttpEntity httpentity;
        ArrayList arraylist = new ArrayList();
        DefaultHttpClient defaulthttpclient = new DefaultHttpClient();
        org.apache.http.params.HttpParams httpparams = defaulthttpclient.getParams();
        HttpProtocolParams.setUseExpectContinue(httpparams, false);
        HttpConnectionParams.setConnectionTimeout(httpparams, 20000);
        HttpConnectionParams.setSoTimeout(httpparams, 20000);
        HttpPost httppost = new HttpPost(G.URL);
        httppost.addHeader("X-BugSense-Api-Key", G.API_KEY);
        try
        {
            arraylist.add(new BasicNameValuePair("data", s));
            httppost.setEntity(new UrlEncodedFormEntity(arraylist, "UTF-8"));
            httpentity = defaulthttpclient.execute(httppost).getEntity();
        }
        catch (Exception exception)
        {
            G.TAG;
            (new StringBuilder("Transmitting crash Exception ")).append(exception.getMessage());
            if (BugSenseHandler.I_WANT_TO_DEBUG)
            {
                exception.printStackTrace();
            }
            return false;
        }
        if (httpentity != null)
        {
            break MISSING_BLOCK_LABEL_220;
        }
        G.TAG;
        throw new Exception("no internet connection");
        String s1;
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(httpentity.getContent()));
        s1 = bufferedreader.readLine();
        bufferedreader.close();
        if (BugSenseHandler.I_WANT_TO_DEBUG)
        {
            G.TAG;
            (new StringBuilder("Crash Response: ")).append(s1);
        }
        if (i != 1 || s1 == null)
        {
            break MISSING_BLOCK_LABEL_349;
        }
        boolean flag = s1.contains("eid");
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_349;
        }
        int j = (new JSONObject((new JSONObject(s1)).getString("data"))).getInt("eid");
        if (j == 0)
        {
            break MISSING_BLOCK_LABEL_349;
        }
        Utils.saveLastCrashID(String.valueOf(j));
_L3:
        if (s1 == null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (s1.contains("tickerText") && s1.contains("contentTitle") && s1.contains("url"))
        {
            saveFixNotification(s1);
        }
        break; /* Loop/switch isn't completed */
        JSONException jsonexception;
        jsonexception;
        if (BugSenseHandler.I_WANT_TO_DEBUG)
        {
            jsonexception.printStackTrace();
        }
        if (true) goto _L3; else goto _L2
_L2:
        return true;
    }

    protected final void sendSavedCrashes()
    {
        this;
        JVM INSTR monitorenter ;
        Thread thread;
        ExecutorService executorservice;
        thread = new Thread(new _cls1());
        executorservice = BugSense.getExecutor();
        if (executorservice == null)
        {
            break MISSING_BLOCK_LABEL_34;
        }
        executorservice.submit(thread);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }


    private class _cls4
        implements Runnable
    {

        final String val$jsonCrashData;
        final int val$type;

        public final void run()
        {
            String s1;
            String s = "Crash_";
            if (type == 0)
            {
                s = "Exception_";
            }
            s1 = (new StringBuilder()).append(s).append(String.valueOf(System.currentTimeMillis())).append("-").append(Integer.toString((new Random(System.currentTimeMillis())).nextInt(0x1869f))).toString();
            BufferedWriter bufferedwriter = new BufferedWriter(new FileWriter((new StringBuilder()).append(G.FILES_PATH).append("/").append(s1).toString()));
            bufferedwriter.write(jsonCrashData);
            bufferedwriter.flush();
            bufferedwriter.close();
_L1:
            return;
            IOException ioexception;
            ioexception;
            G.TAG;
            if (BugSenseHandler.I_WANT_TO_DEBUG)
            {
                ioexception.printStackTrace();
                return;
            }
              goto _L1
        }

        _cls4()
        {
            type = i;
            jsonCrashData = s;
            super();
        }
    }


    private class _cls3
        implements Runnable
    {

        final String val$line;

        public final void run()
        {
            File file = new File((new StringBuilder()).append(G.FILES_PATH).append("/fixnotification").toString());
            if (file.exists())
            {
                file.delete();
            }
            BufferedWriter bufferedwriter = new BufferedWriter(new FileWriter((new StringBuilder()).append(G.FILES_PATH).append("/fixnotification").toString()));
            bufferedwriter.write(line);
            bufferedwriter.flush();
            bufferedwriter.close();
_L1:
            return;
            IOException ioexception;
            ioexception;
            G.TAG;
            if (BugSenseHandler.I_WANT_TO_DEBUG)
            {
                ioexception.printStackTrace();
                return;
            }
              goto _L1
        }

        _cls3()
        {
            line = s;
            super();
        }
    }


    private class _cls2
        implements Runnable
    {

        final String val$jsonCrashData;
        final int val$type;

        public final void run()
        {
            if (!G.sendOnlyWiFi) goto _L2; else goto _L1
_L1:
            if (G.IS_WIFI_ON != 1) goto _L4; else goto _L3
_L3:
            if (!CrashMechanism.transmitCrashSync(jsonCrashData, type))
            {
                CrashMechanism.saveCrash(jsonCrashData, type);
            }
_L6:
            return;
_L4:
            CrashMechanism.saveCrash(jsonCrashData, type);
            return;
_L2:
            if (!CrashMechanism.transmitCrashSync(jsonCrashData, type))
            {
                CrashMechanism.saveCrash(jsonCrashData, type);
                return;
            }
            if (true) goto _L6; else goto _L5
_L5:
        }

        _cls2()
        {
            jsonCrashData = s;
            type = i;
            super();
        }
    }


    private class _cls1
        implements Runnable
    {

        final CrashMechanism this$0;

        public void run()
        {
            int i = 5;
            File file = new File(G.FILES_PATH);
            if (!file.exists())
            {
                file.mkdir();
            }
            class _cls1
                implements FilenameFilter
            {

                final _cls1 this$1;

                public boolean accept(File file1, String s)
                {
                    return s.startsWith("Crash_");
                }

                _cls1()
                {
                    this$1 = _cls1.this;
                    super();
                }
            }

            _cls1 _lcls1 = new _cls1();
            class _cls2
                implements FilenameFilter
            {

                final _cls1 this$1;

                public boolean accept(File file1, String s)
                {
                    return s.startsWith("Exception_");
                }

                _cls2()
                {
                    this$1 = _cls1.this;
                    super();
                }
            }

            _cls2 _lcls2 = new _cls2();
            String as[] = file.list(_lcls1);
            String as1[] = file.list(_lcls2);
            if (BugSenseHandler.I_WANT_TO_DEBUG)
            {
                String _tmp = G.TAG;
                (new StringBuilder("Crash List has: ")).append(as.length).append(" items");
                String _tmp1 = G.TAG;
                (new StringBuilder("HandledEx List has: ")).append(as1.length).append(" items");
            }
            if (i > as.length)
            {
                i = as.length;
            }
            int j;
            for (j = 0; j < i && CrashMechanism.transmitCrashSync(Utils.readFile((new StringBuilder()).append(G.FILES_PATH).append("/").append(as[j]).toString()), 1); j++) { }
            if (j > 0)
            {
                int j1 = 0;
                do
                {
                    if (j1 >= as.length)
                    {
                        break;
                    }
                    try
                    {
                        (new File((new StringBuilder()).append(G.FILES_PATH).append("/").append(as[j1]).toString())).delete();
                    }
                    catch (Exception exception1)
                    {
                        String _tmp2 = G.TAG;
                        (new StringBuilder("Error deleting trace file: ")).append(G.FILES_PATH).append("/").append(as[j1]);
                    }
                    j1++;
                } while (true);
            }
            int k;
            int l;
            int i1;
            if (8 > as1.length)
            {
                k = as1.length;
            } else
            {
                k = 8;
            }
            for (l = 0; l < k && CrashMechanism.transmitCrashSync(Utils.readFile((new StringBuilder()).append(G.FILES_PATH).append("/").append(as1[l]).toString()), 0); l++) { }
            i1 = 0;
            if (l > 0)
            {
                do
                {
                    if (i1 >= as1.length)
                    {
                        break;
                    }
                    try
                    {
                        (new File((new StringBuilder()).append(G.FILES_PATH).append("/").append(as1[i1]).toString())).delete();
                    }
                    catch (Exception exception)
                    {
                        String _tmp3 = G.TAG;
                        (new StringBuilder("Error deleting trace file: ")).append(G.FILES_PATH).append("/").append(as1[i1]);
                    }
                    i1++;
                } while (true);
            }
        }

        _cls1()
        {
            this$0 = CrashMechanism.this;
            super();
        }
    }

}
