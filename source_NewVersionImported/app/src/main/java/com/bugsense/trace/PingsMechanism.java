// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bugsense.trace;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;

// Referenced classes of package com.bugsense.trace:
//            G, Utils, BugSense, BugSenseHandler, 
//            CryptoHttpClient

public final class PingsMechanism
{

    protected static final int GNIP = 1;
    private static final int MAX_GNIPS_SIZE = 2;
    private static final int MAX_PERFS_SIZE = 10;
    private static final int MAX_PINGS_SIZE = 2;
    protected static final int PING = 0;
    protected static final int TRANS_END = 3;
    protected static final int TRANS_START = 2;
    private static volatile PingsMechanism instance;

    public PingsMechanism()
    {
    }

    protected static String getFlatLine(int i, String s, String s1, String s2)
    {
        String s3 = "";
        if (i != 0) goto _L2; else goto _L1
_L1:
        s3 = "_ping";
_L4:
        String s4 = (new StringBuilder("3.6.1:")).append(s3).append(":").append(G.PHONE_MODEL).append(":").append(G.PHONE_BRAND).append(":").append(G.ANDROID_VERSION).append(":").append(G.APP_VERSION).append(":").append(Locale.getDefault().getDisplayLanguage()).append(":").append(Utils.getTime()).toString();
        if (s1 != null && s2 != null && s1.length() > 0 && s2.length() > 0)
        {
            s4 = (new StringBuilder()).append(s4).append(":").append(s1).append(":").append(s2).toString();
        }
        return s4;
_L2:
        if (i == 1)
        {
            s3 = "_gnip";
        } else
        if (i == 2)
        {
            s3 = (new StringBuilder("_trstart-")).append(s).toString();
        } else
        if (i == 3)
        {
            s3 = (new StringBuilder("_trend-")).append(s).toString();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected static PingsMechanism getInstance()
    {
        if (instance == null)
        {
            instance = new PingsMechanism();
        }
        return instance;
    }

    protected static void savePing(final int type, final String tag)
    {
        (new Thread(new _cls3())).start();
    }

    protected static void savePing(final int type, final String tag, final String cpu, final String mem)
    {
        Thread thread = new Thread(new _cls4());
        ExecutorService executorservice = BugSense.getExecutor();
        if (executorservice != null)
        {
            executorservice.submit(thread);
        }
    }

    protected static void transmitPingASync(int i)
    {
        transmitPingASync(getFlatLine(i, null, null, null), i);
    }

    protected static void transmitPingASync(final String jsonCrashData, final int type)
    {
        Thread thread = new Thread(new _cls2());
        ExecutorService executorservice = BugSense.getExecutor();
        if (executorservice != null)
        {
            executorservice.submit(thread);
        }
    }

    protected static boolean transmitPingSync(String s)
    {
        if (BugSenseHandler.I_WANT_TO_DEBUG)
        {
            G.TAG;
            (new StringBuilder("Transmitting Ping, URL: ")).append(G.URL).append(" APIKEY: ").append(G.API_KEY);
        }
        Object obj;
        if (!G.ANALYTICS_URL.startsWith("https://"))
        {
            break MISSING_BLOCK_LABEL_212;
        }
        obj = new CryptoHttpClient(0);
_L1:
        HttpEntity httpentity;
        org.apache.http.params.HttpParams httpparams = ((DefaultHttpClient) (obj)).getParams();
        HttpProtocolParams.setUseExpectContinue(httpparams, false);
        HttpConnectionParams.setConnectionTimeout(httpparams, 20000);
        HttpConnectionParams.setSoTimeout(httpparams, 20000);
        HttpPost httppost = new HttpPost(G.ANALYTICS_URL);
        httppost.addHeader("X-BugSense-Api-Key", G.API_KEY);
        (new ArrayList()).add(new BasicNameValuePair("data", s));
        httppost.setEntity(new StringEntity(s));
        httpentity = ((DefaultHttpClient) (obj)).execute(httppost).getEntity();
        if (httpentity == null)
        {
            try
            {
                G.TAG;
                throw new Exception("no internet connection");
            }
            catch (Exception exception)
            {
                G.TAG;
                (new StringBuilder("Transmitting ping Exception ")).append(exception.getMessage());
                if (BugSenseHandler.I_WANT_TO_DEBUG)
                {
                    exception.printStackTrace();
                }
                return false;
            }
        }
        break MISSING_BLOCK_LABEL_224;
        obj = new DefaultHttpClient();
          goto _L1
        BufferedReader bufferedreader;
        StringBuilder stringbuilder;
        bufferedreader = new BufferedReader(new InputStreamReader(httpentity.getContent()));
        stringbuilder = new StringBuilder();
_L2:
        String s1 = bufferedreader.readLine();
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_279;
        }
        stringbuilder.append(s1);
          goto _L2
        if (BugSenseHandler.I_WANT_TO_DEBUG)
        {
            G.TAG;
            (new StringBuilder("Ping Response: ")).append(stringbuilder.toString());
        }
        return true;
    }

    protected final void sendSavedPings()
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

    private class _cls3
        implements Runnable
    {

        final String val$tag;
        final int val$type;

        public final void run()
        {
            if (type == 2 || type == 3)
            {
                PingsMechanism.savePing(type, tag, Utils.getCPU(), Utils.getMem());
                return;
            } else
            {
                PingsMechanism.savePing(type, null, null, null);
                return;
            }
        }

        _cls3()
        {
            type = i;
            tag = s;
            super();
        }
    }


    private class _cls4
        implements Runnable
    {

        final String val$cpu;
        final String val$mem;
        final String val$tag;
        final int val$type;

        public final void run()
        {
            String s;
            String s2;
            s = PingsMechanism.getFlatLine(type, tag, cpu, mem);
            String s1 = "Ping_";
            if (type == 1)
            {
                s1 = "Gnip_";
            }
            if (type == 2 || type == 3)
            {
                s1 = "Perf_";
            }
            s2 = (new StringBuilder()).append(s1).append(String.valueOf(System.currentTimeMillis())).append("-").append(Integer.toString((new Random(System.currentTimeMillis())).nextInt(0x1869f))).toString();
            BufferedWriter bufferedwriter = new BufferedWriter(new FileWriter((new StringBuilder()).append(G.FILES_PATH).append("/").append(s2).toString()));
            bufferedwriter.write(s);
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
            tag = s;
            cpu = s1;
            mem = s2;
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
            if (!PingsMechanism.transmitPingSync(jsonCrashData))
            {
                PingsMechanism.savePing(type, null, null, null);
            }
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

        final PingsMechanism this$0;

        public void run()
        {
            int i = 2;
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
                    return s.startsWith("Ping_");
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
                    return s.startsWith("Gnip_");
                }

                _cls2()
                {
                    this$1 = _cls1.this;
                    super();
                }
            }

            _cls2 _lcls2 = new _cls2();
            class _cls3
                implements FilenameFilter
            {

                final _cls1 this$1;

                public boolean accept(File file1, String s)
                {
                    return s.startsWith("Perf_");
                }

                _cls3()
                {
                    this$1 = _cls1.this;
                    super();
                }
            }

            _cls3 _lcls3 = new _cls3();
            String as[] = file.list(_lcls1);
            String as1[] = file.list(_lcls2);
            String as2[] = file.list(_lcls3);
            if (BugSenseHandler.I_WANT_TO_DEBUG)
            {
                String _tmp = G.TAG;
                (new StringBuilder("Ping List has: ")).append(as.length).append(" items");
                String _tmp1 = G.TAG;
                (new StringBuilder("Gnip List has: ")).append(as1.length).append(" items");
                String _tmp2 = G.TAG;
                (new StringBuilder("Perf List has: ")).append(as2.length).append(" items");
            }
            int j;
            int k;
            int l;
            int i1;
            int j1;
            int k1;
            if (i > as.length)
            {
                j = as.length;
            } else
            {
                j = i;
            }
            for (k = 0; k < j && PingsMechanism.transmitPingSync(Utils.readFile((new StringBuilder()).append(G.FILES_PATH).append("/").append(as[k]).toString())); k++) { }
            if (k > 0)
            {
                int i2 = 0;
                do
                {
                    if (i2 >= as.length)
                    {
                        break;
                    }
                    try
                    {
                        (new File((new StringBuilder()).append(G.FILES_PATH).append("/").append(as[i2]).toString())).delete();
                    }
                    catch (Exception exception2)
                    {
                        String _tmp3 = G.TAG;
                        (new StringBuilder("Error deleting trace file: ")).append(G.FILES_PATH).append("/").append(as[i2]);
                    }
                    i2++;
                } while (true);
            }
            if (i > as1.length)
            {
                i = as1.length;
            }
            for (l = 0; l < i && PingsMechanism.transmitPingSync(Utils.readFile((new StringBuilder()).append(G.FILES_PATH).append("/").append(as1[l]).toString())); l++) { }
            if (l > 0)
            {
                int l1 = 0;
                do
                {
                    if (l1 >= as1.length)
                    {
                        break;
                    }
                    try
                    {
                        (new File((new StringBuilder()).append(G.FILES_PATH).append("/").append(as1[l1]).toString())).delete();
                    }
                    catch (Exception exception1)
                    {
                        String _tmp4 = G.TAG;
                        (new StringBuilder("Error deleting trace file: ")).append(G.FILES_PATH).append("/").append(as1[l1]);
                    }
                    l1++;
                } while (true);
            }
            if (10 > as2.length)
            {
                i1 = as2.length;
            } else
            {
                i1 = 10;
            }
            for (j1 = 0; j1 < i1 && PingsMechanism.transmitPingSync(Utils.readFile((new StringBuilder()).append(G.FILES_PATH).append("/").append(as2[j1]).toString())); j1++) { }
            k1 = 0;
            if (j1 > 0)
            {
                do
                {
                    if (k1 >= as2.length)
                    {
                        break;
                    }
                    try
                    {
                        (new File((new StringBuilder()).append(G.FILES_PATH).append("/").append(as2[k1]).toString())).delete();
                    }
                    catch (Exception exception)
                    {
                        String _tmp5 = G.TAG;
                        (new StringBuilder("Error deleting trace file: ")).append(G.FILES_PATH).append("/").append(as2[k1]);
                    }
                    k1++;
                } while (true);
            }
        }

        _cls1()
        {
            this$0 = PingsMechanism.this;
            super();
        }
    }

}
