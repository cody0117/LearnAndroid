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

public final class EventsMechanism
{

    private static final int MAX_BYTES = 256;
    private static final int MAX_EVENTS_SIZE = 12;
    private static volatile EventsMechanism instance;

    public EventsMechanism()
    {
    }

    protected static String getFlatLine(String s)
    {
        if (s.getBytes().length > 256)
        {
            s = s.substring(0, 256);
        }
        if (s.equals("_ping") || s.equals("_gnip"))
        {
            s = s.replaceAll("_", "-");
        }
        if (s.contains(":") || s.contains("|"))
        {
            s = s.replaceAll(":", "_").replace("|", "_");
        }
        String s1 = (new StringBuilder(":")).append(G.PHONE_MODEL).append(":").append(G.PHONE_BRAND).append(":").append(G.ANDROID_VERSION).append(":").append(G.APP_VERSION).append(":").append(Locale.getDefault().getDisplayLanguage()).append(":").append(Utils.getTime()).toString();
        int i = 256 - ("3.6.1:".getBytes().length + s1.getBytes().length);
        if (s.getBytes().length > i)
        {
            s = s.substring(0, i);
        }
        return (new StringBuilder("3.6.1:")).append(s).append(":").append(G.PHONE_MODEL).append(":").append(G.PHONE_BRAND).append(":").append(G.ANDROID_VERSION).append(":").append(G.APP_VERSION).append(":").append(Locale.getDefault().getDisplayLanguage()).append(":").append(Utils.getTime()).toString();
    }

    protected static EventsMechanism getInstance()
    {
        if (instance == null)
        {
            instance = new EventsMechanism();
        }
        return instance;
    }

    protected static void saveEvent(final String tag)
    {
        Thread thread = new Thread(new _cls2());
        ExecutorService executorservice = BugSense.getExecutor();
        if (executorservice != null)
        {
            executorservice.submit(thread);
        }
    }

    protected static boolean transmitEventSync(String s)
    {
        if (BugSenseHandler.I_WANT_TO_DEBUG)
        {
            G.TAG;
            (new StringBuilder("Transmitting Event, URL: ")).append(G.URL).append(" APIKEY: ").append(G.API_KEY);
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
            (new StringBuilder("Event Response: ")).append(stringbuilder.toString());
        }
        return true;
    }

    protected final void sendSavedEvents()
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

    private class _cls2
        implements Runnable
    {

        final String val$tag;

        public final void run()
        {
            String s;
            String s1;
            s = EventsMechanism.getFlatLine(tag);
            s1 = (new StringBuilder()).append("Event_").append(String.valueOf(System.currentTimeMillis())).append("-").append(Integer.toString((new Random(System.currentTimeMillis())).nextInt(0x1869f))).toString();
            BufferedWriter bufferedwriter = new BufferedWriter(new FileWriter((new StringBuilder()).append(G.FILES_PATH).append("/").append(s1).toString()));
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

        _cls2()
        {
            tag = s;
            super();
        }
    }


    private class _cls1
        implements Runnable
    {

        final EventsMechanism this$0;

        public void run()
        {
            int i = 12;
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
                    return s.startsWith("Event_");
                }

                _cls1()
                {
                    this$1 = _cls1.this;
                    super();
                }
            }

            String as[] = file.list(new _cls1());
            if (BugSenseHandler.I_WANT_TO_DEBUG)
            {
                String _tmp = G.TAG;
                (new StringBuilder("Events List has: ")).append(as.length).append(" items");
            }
            if (i > as.length)
            {
                i = as.length;
            }
            int j;
            for (j = 0; j < i && EventsMechanism.transmitEventSync(Utils.readFile((new StringBuilder()).append(G.FILES_PATH).append("/").append(as[j]).toString())); j++) { }
            if (j > 0)
            {
                int k = 0;
                do
                {
                    if (k >= as.length)
                    {
                        break;
                    }
                    try
                    {
                        (new File((new StringBuilder()).append(G.FILES_PATH).append("/").append(as[k]).toString())).delete();
                    }
                    catch (Exception exception)
                    {
                        String _tmp1 = G.TAG;
                        (new StringBuilder("Error deleting trace file: ")).append(G.FILES_PATH).append("/").append(as[k]);
                    }
                    k++;
                } while (true);
            }
        }

        _cls1()
        {
            this$0 = EventsMechanism.this;
            super();
        }
    }

}
