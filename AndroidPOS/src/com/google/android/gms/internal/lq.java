// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Rect;
import android.net.Uri;
import android.net.UrlQuerySanitizer;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.nio.CharBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            me, lr, md, ls

public final class lq
{

    private static final Object a = new Object();
    private static final SimpleDateFormat b[];
    private static boolean c = true;
    private static String d;
    private static boolean e = false;

    public static String a(Context context, String s)
    {
label0:
        {
            String s4;
            synchronized (a)
            {
                if (d == null)
                {
                    break label0;
                }
                s4 = d;
            }
            return s4;
        }
        int i = android.os.Build.VERSION.SDK_INT;
        if (i < 17)
        {
            break MISSING_BLOCK_LABEL_90;
        }
        String s3;
        d = WebSettings.getDefaultUserAgent(context);
        s3 = (new StringBuilder()).append(d).append(" (Mobile; ").append(s).append(")").toString();
        d = s3;
        obj;
        JVM INSTR monitorexit ;
        return s3;
        exception;
        throw exception;
        Exception exception2;
        exception2;
        if (me.b())
        {
            break MISSING_BLOCK_LABEL_155;
        }
        me.a.post(new lr(context));
_L1:
        String s2 = d;
        if (s2 != null)
        {
            break MISSING_BLOCK_LABEL_162;
        }
        a;
          goto _L1
        InterruptedException interruptedexception;
        interruptedexception;
        d = f();
        (new StringBuilder("Interrupted, use default user agent: ")).append(d);
          goto _L1
        d = f(context);
_L2:
        String s1;
        s1 = (new StringBuilder()).append(d).append(" (Mobile; ").append(s).append(")").toString();
        d = s1;
        obj;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception1;
        exception1;
        d = f();
          goto _L2
    }

    public static String a(Readable readable)
    {
        StringBuilder stringbuilder = new StringBuilder();
        CharBuffer charbuffer = CharBuffer.allocate(2048);
        do
        {
            int i = readable.read(charbuffer);
            if (i != -1)
            {
                charbuffer.flip();
                stringbuilder.append(charbuffer, 0, i);
            } else
            {
                return stringbuilder.toString();
            }
        } while (true);
    }

    public static String a(String s)
    {
        return Uri.parse(s).buildUpon().query(null).build().toString();
    }

    public static Map a(Uri uri)
    {
        if (uri == null)
        {
            return null;
        }
        HashMap hashmap = new HashMap();
        UrlQuerySanitizer urlquerysanitizer = new UrlQuerySanitizer();
        urlquerysanitizer.setAllowUnregisteredParamaters(true);
        urlquerysanitizer.setUnregisteredParameterValueSanitizer(UrlQuerySanitizer.getAllButNulLegal());
        urlquerysanitizer.parseUrl(uri.toString());
        android.net.UrlQuerySanitizer.ParameterValuePair parametervaluepair;
        for (Iterator iterator = urlquerysanitizer.getParameterList().iterator(); iterator.hasNext(); hashmap.put(parametervaluepair.mParameter, parametervaluepair.mValue))
        {
            parametervaluepair = (android.net.UrlQuerySanitizer.ParameterValuePair)iterator.next();
        }

        return hashmap;
    }

    private static JSONArray a(Collection collection)
    {
        JSONArray jsonarray = new JSONArray();
        for (Iterator iterator = collection.iterator(); iterator.hasNext(); a(jsonarray, iterator.next())) { }
        return jsonarray;
    }

    private static JSONObject a(Bundle bundle)
    {
        JSONObject jsonobject = new JSONObject();
        String s;
        for (Iterator iterator = bundle.keySet().iterator(); iterator.hasNext(); a(jsonobject, s, bundle.get(s)))
        {
            s = (String)iterator.next();
        }

        return jsonobject;
    }

    public static JSONObject a(Map map)
    {
        JSONObject jsonobject;
        try
        {
            jsonobject = new JSONObject();
            String s;
            for (Iterator iterator = map.keySet().iterator(); iterator.hasNext(); a(jsonobject, s, map.get(s)))
            {
                s = (String)iterator.next();
            }

        }
        catch (ClassCastException classcastexception)
        {
            throw new JSONException((new StringBuilder("Could not convert map to JSON: ")).append(classcastexception.getMessage()).toString());
        }
        return jsonobject;
    }

    public static void a(Context context, String s, WebSettings websettings)
    {
        websettings.setUserAgentString(a(context, s));
    }

    public static void a(Context context, String s, String s1)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(s1);
        a(context, s, ((List) (arraylist)));
    }

    public static void a(Context context, String s, List list)
    {
        for (Iterator iterator = list.iterator(); iterator.hasNext(); (new md(context, s, (String)iterator.next())).e()) { }
    }

    public static void a(Context context, String s, List list, String s1)
    {
        for (Iterator iterator = list.iterator(); iterator.hasNext(); (new md(context, s, (String)iterator.next(), s1)).e()) { }
    }

    public static void a(Context context, String s, boolean flag, HttpURLConnection httpurlconnection)
    {
        a(context, s, flag, httpurlconnection, false);
    }

    public static void a(Context context, String s, boolean flag, HttpURLConnection httpurlconnection, boolean flag1)
    {
        httpurlconnection.setConnectTimeout(60000);
        httpurlconnection.setInstanceFollowRedirects(flag);
        httpurlconnection.setReadTimeout(60000);
        httpurlconnection.setRequestProperty("User-Agent", a(context, s));
        httpurlconnection.setUseCaches(flag1);
    }

    public static void a(WebView webview)
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            webview.onPause();
        }
    }

    public static void a(HttpURLConnection httpurlconnection, String s)
    {
        httpurlconnection.setConnectTimeout(60000);
        httpurlconnection.setInstanceFollowRedirects(true);
        httpurlconnection.setReadTimeout(60000);
        httpurlconnection.setRequestProperty("User-Agent", s);
        httpurlconnection.setUseCaches(false);
    }

    private static void a(JSONArray jsonarray, Object obj)
    {
        if (obj instanceof Bundle)
        {
            jsonarray.put(a((Bundle)obj));
            return;
        }
        if (obj instanceof Map)
        {
            jsonarray.put(a((Map)obj));
            return;
        }
        if (obj instanceof Collection)
        {
            jsonarray.put(a((Collection)obj));
            return;
        }
        if (obj instanceof Object[])
        {
            Object aobj[] = (Object[])obj;
            JSONArray jsonarray1 = new JSONArray();
            int i = aobj.length;
            for (int j = 0; j < i; j++)
            {
                a(jsonarray1, aobj[j]);
            }

            jsonarray.put(jsonarray1);
            return;
        } else
        {
            jsonarray.put(obj);
            return;
        }
    }

    private static void a(JSONObject jsonobject, String s, Object obj)
    {
        if (obj instanceof Bundle)
        {
            jsonobject.put(s, a((Bundle)obj));
            return;
        }
        if (obj instanceof Map)
        {
            jsonobject.put(s, a((Map)obj));
            return;
        }
        if (obj instanceof Collection)
        {
            if (s == null)
            {
                s = "null";
            }
            jsonobject.put(s, a((Collection)obj));
            return;
        }
        if (obj instanceof Object[])
        {
            jsonobject.put(s, a(((Collection) (Arrays.asList((Object[])obj)))));
            return;
        } else
        {
            jsonobject.put(s, obj);
            return;
        }
    }

    public static boolean a()
    {
        return c;
    }

    public static boolean a(Context context)
    {
        Intent intent = new Intent();
        intent.setClassName(context, "com.google.android.gms.ads.AdActivity");
        ResolveInfo resolveinfo = context.getPackageManager().resolveActivity(intent, 0x10000);
        if (resolveinfo == null || resolveinfo.activityInfo == null)
        {
            return false;
        }
        boolean flag;
        if ((0x10 & resolveinfo.activityInfo.configChanges) == 0)
        {
            String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] {
                "keyboard"
            });
            flag = false;
        } else
        {
            flag = true;
        }
        if ((0x20 & resolveinfo.activityInfo.configChanges) == 0)
        {
            String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] {
                "keyboardHidden"
            });
            flag = false;
        }
        if ((0x80 & resolveinfo.activityInfo.configChanges) == 0)
        {
            String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] {
                "orientation"
            });
            flag = false;
        }
        if ((0x100 & resolveinfo.activityInfo.configChanges) == 0)
        {
            String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] {
                "screenLayout"
            });
            flag = false;
        }
        if ((0x200 & resolveinfo.activityInfo.configChanges) == 0)
        {
            String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] {
                "uiMode"
            });
            flag = false;
        }
        if ((0x400 & resolveinfo.activityInfo.configChanges) == 0)
        {
            String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] {
                "screenSize"
            });
            flag = false;
        }
        if ((0x800 & resolveinfo.activityInfo.configChanges) == 0)
        {
            String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] {
                "smallestScreenSize"
            });
            return false;
        } else
        {
            return flag;
        }
    }

    public static boolean a(PackageManager packagemanager, String s, String s1)
    {
        return packagemanager.checkPermission(s1, s) == 0;
    }

    public static boolean a(ClassLoader classloader, Class class1, String s)
    {
        boolean flag;
        try
        {
            flag = class1.isAssignableFrom(Class.forName(s, false, classloader));
        }
        catch (Throwable throwable)
        {
            return false;
        }
        return flag;
    }

    static boolean a(boolean flag)
    {
        c = flag;
        return flag;
    }

    public static int b()
    {
        return android.os.Build.VERSION.SDK_INT < 9 ? 0 : 6;
    }

    public static int b(String s)
    {
        int i;
        try
        {
            i = Integer.parseInt(s);
        }
        catch (NumberFormatException numberformatexception)
        {
            (new StringBuilder("Could not parse value:")).append(numberformatexception);
            return 0;
        }
        return i;
    }

    public static void b(Context context)
    {
        if (e)
        {
            return;
        } else
        {
            IntentFilter intentfilter = new IntentFilter();
            intentfilter.addAction("android.intent.action.USER_PRESENT");
            intentfilter.addAction("android.intent.action.SCREEN_OFF");
            context.getApplicationContext().registerReceiver(new ls((byte)0), intentfilter);
            e = true;
            return;
        }
    }

    public static void b(WebView webview)
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            webview.onResume();
        }
    }

    public static int c()
    {
        return android.os.Build.VERSION.SDK_INT < 9 ? 1 : 7;
    }

    public static int c(Context context)
    {
        int i;
        int j;
        if (context instanceof Activity)
        {
            Window window = ((Activity)context).getWindow();
            Rect rect = new Rect();
            window.getDecorView().getWindowVisibleDisplayFrame(rect);
            j = rect.top;
            i = window.findViewById(0x1020002).getTop() - j;
        } else
        {
            i = 0;
            j = 0;
        }
        return i + j;
    }

    public static boolean c(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            return false;
        } else
        {
            return s.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)");
        }
    }

    public static long d(String s)
    {
        int i;
        SimpleDateFormat asimpledateformat[];
        int j;
        i = 0;
        if (TextUtils.isEmpty(s))
        {
            return -1L;
        }
        asimpledateformat = b;
        j = asimpledateformat.length;
_L2:
        SimpleDateFormat simpledateformat;
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        simpledateformat = asimpledateformat[i];
        long l1;
        simpledateformat.setLenient(false);
        simpledateformat.setTimeZone(TimeZone.getTimeZone("UTC"));
        l1 = simpledateformat.parse(s).getTime();
        return l1;
        ParseException parseexception;
        parseexception;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        long l;
        try
        {
            l = Long.parseLong(s);
        }
        catch (NumberFormatException numberformatexception)
        {
            return -1L;
        }
        return l;
    }

    public static String d()
    {
        byte abyte0[];
        byte abyte1[];
        String s;
        int i;
        UUID uuid = UUID.randomUUID();
        abyte0 = BigInteger.valueOf(uuid.getLeastSignificantBits()).toByteArray();
        abyte1 = BigInteger.valueOf(uuid.getMostSignificantBits()).toByteArray();
        s = (new BigInteger(1, abyte0)).toString();
        i = 0;
_L2:
        if (i >= 2)
        {
            break; /* Loop/switch isn't completed */
        }
        String s1;
        MessageDigest messagedigest = MessageDigest.getInstance("MD5");
        messagedigest.update(abyte0);
        messagedigest.update(abyte1);
        byte abyte2[] = new byte[8];
        System.arraycopy(messagedigest.digest(), 0, abyte2, 0, 8);
        s1 = (new BigInteger(1, abyte2)).toString();
        s = s1;
_L3:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        return s;
        NoSuchAlgorithmException nosuchalgorithmexception;
        nosuchalgorithmexception;
          goto _L3
    }

    public static int[] d(Context context)
    {
        WindowManager windowmanager = (WindowManager)context.getSystemService("window");
        DisplayMetrics displaymetrics = new DisplayMetrics();
        windowmanager.getDefaultDisplay().getMetrics(displaymetrics);
        float f1 = 160F / (float)displaymetrics.densityDpi;
        return (new int[] {
            (int)(f1 * (float)displaymetrics.widthPixels), (int)(f1 * (float)displaymetrics.heightPixels)
        });
    }

    static Object e()
    {
        return a;
    }

    static String e(Context context)
    {
        return f(context);
    }

    static String e(String s)
    {
        d = s;
        return s;
    }

    private static String f()
    {
        StringBuffer stringbuffer = new StringBuffer(256);
        stringbuffer.append("Mozilla/5.0 (Linux; U; Android");
        if (android.os.Build.VERSION.RELEASE != null)
        {
            stringbuffer.append(" ").append(android.os.Build.VERSION.RELEASE);
        }
        stringbuffer.append("; ").append(Locale.getDefault());
        if (Build.DEVICE != null)
        {
            stringbuffer.append("; ").append(Build.DEVICE);
            if (Build.DISPLAY != null)
            {
                stringbuffer.append(" Build/").append(Build.DISPLAY);
            }
        }
        stringbuffer.append(") AppleWebKit/533 Version/4.0 Safari/533");
        return stringbuffer.toString();
    }

    private static String f(Context context)
    {
        return (new WebView(context)).getSettings().getUserAgentString();
    }

    static 
    {
        SimpleDateFormat asimpledateformat[] = new SimpleDateFormat[2];
        asimpledateformat[0] = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
        asimpledateformat[1] = new SimpleDateFormat("yyyyMMdd");
        b = asimpledateformat;
    }
}
