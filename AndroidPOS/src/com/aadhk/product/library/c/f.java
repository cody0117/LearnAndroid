// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.c;

import android.content.Context;
import android.content.res.Resources;
import com.bugsense.trace.BugSenseHandler;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

// Referenced classes of package com.aadhk.product.library.c:
//            g

public final class f
{

    public static String a()
    {
        Calendar calendar = Calendar.getInstance();
        return (new SimpleDateFormat("yyyy_MM_dd")).format(calendar.getTime());
    }

    public static void a(Context context, String s)
    {
        InputStream inputstream;
        FileOutputStream fileoutputstream;
        byte abyte0[];
        inputstream = context.getResources().openRawResource(0x7f060006);
        fileoutputstream = new FileOutputStream(s);
        abyte0 = new byte[1024];
_L1:
        int i = inputstream.read(abyte0);
label0:
        {
            if (i <= 0)
            {
                break label0;
            }
            try
            {
                fileoutputstream.write(abyte0, 0, i);
            }
            catch (Exception exception)
            {
                BugSenseHandler.sendException(exception);
                exception.printStackTrace();
                return;
            }
        }
          goto _L1
        fileoutputstream.flush();
        fileoutputstream.close();
        inputstream.close();
        return;
    }

    public static void a(String s)
    {
        File file = new File(s);
        if (file.exists())
        {
            file.delete();
        }
    }

    public static void a(String s, String s1)
    {
        File file = new File(s);
        if (file.exists())
        {
            FileInputStream fileinputstream = new FileInputStream(file);
            FileOutputStream fileoutputstream = new FileOutputStream(s1);
            byte abyte0[] = new byte[1024];
            do
            {
                int i = fileinputstream.read(abyte0);
                if (i <= 0)
                {
                    break;
                }
                fileoutputstream.write(abyte0, 0, i);
            } while (true);
            fileoutputstream.flush();
            fileoutputstream.close();
            fileinputstream.close();
        }
    }

    public static void a(String s, String s1, String as[])
    {
        int i = 0;
        ZipOutputStream zipoutputstream;
        byte abyte0[];
        zipoutputstream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(s)));
        abyte0 = new byte[2048];
_L2:
        BufferedInputStream bufferedinputstream;
        if (i >= as.length)
        {
            break MISSING_BLOCK_LABEL_178;
        }
        (new StringBuilder("Adding: ")).append(as[i]);
        bufferedinputstream = new BufferedInputStream(new FileInputStream((new StringBuilder()).append(s1).append(as[i]).toString()), 2048);
        zipoutputstream.putNextEntry(new ZipEntry(as[i].substring(1 + as[i].lastIndexOf("/"))));
_L1:
        int j = bufferedinputstream.read(abyte0, 0, 2048);
label0:
        {
            if (j == -1)
            {
                break label0;
            }
            try
            {
                zipoutputstream.write(abyte0, 0, j);
            }
            catch (Exception exception)
            {
                BugSenseHandler.sendException(exception);
                exception.printStackTrace();
                return;
            }
        }
          goto _L1
        bufferedinputstream.close();
        i++;
          goto _L2
        zipoutputstream.close();
        return;
    }

    public static String[] a(File file, String s)
    {
        if (!file.isDirectory())
        {
            throw new IllegalArgumentException((new StringBuilder()).append(file).append(" is no directory.").toString());
        }
        File afile[] = file.listFiles(new g(Pattern.compile(s)));
        String as[] = new String[afile.length];
        for (int i = 0; i < afile.length; i++)
        {
            as[i] = afile[i].getName();
        }

        return as;
    }

    public static void b(String s)
    {
        File afile[] = (new File(s)).listFiles();
        Arrays.sort(afile);
        for (int i = 0; i < -2 + afile.length; i++)
        {
            afile[i].delete();
        }

    }

    public static byte[] c(String s)
    {
        File file;
        byte abyte0[];
        byte abyte1[];
        file = new File(s);
        boolean flag = file.exists();
        abyte0 = null;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_93;
        }
        abyte1 = new byte[1024];
        BufferedInputStream bufferedinputstream;
        ByteArrayOutputStream bytearrayoutputstream;
        bufferedinputstream = new BufferedInputStream(new FileInputStream(file));
        bytearrayoutputstream = new ByteArrayOutputStream();
_L1:
        int i = bufferedinputstream.read(abyte1);
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_95;
        }
        bytearrayoutputstream.write(abyte1, 0, i);
          goto _L1
        IOException ioexception;
        ioexception;
        BugSenseHandler.sendException(ioexception);
        ioexception.printStackTrace();
        return abyte0;
        abyte0 = bytearrayoutputstream.toByteArray();
        bufferedinputstream.close();
        bytearrayoutputstream.close();
        return abyte0;
    }

    public static byte[] d(String s)
    {
        File file;
        byte abyte0[];
        byte abyte1[];
        file = new File(s);
        boolean flag = file.exists();
        abyte0 = null;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_93;
        }
        abyte1 = new byte[1024];
        BufferedInputStream bufferedinputstream;
        ByteArrayOutputStream bytearrayoutputstream;
        bufferedinputstream = new BufferedInputStream(new FileInputStream(file));
        bytearrayoutputstream = new ByteArrayOutputStream();
_L1:
        int i = bufferedinputstream.read(abyte1);
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_95;
        }
        bytearrayoutputstream.write(abyte1, 0, i);
          goto _L1
        IOException ioexception;
        ioexception;
        BugSenseHandler.sendException(ioexception);
        ioexception.printStackTrace();
        return abyte0;
        abyte0 = bytearrayoutputstream.toByteArray();
        bufferedinputstream.close();
        bytearrayoutputstream.close();
        return abyte0;
    }

    public static String e(String s)
    {
        if (s != null)
        {
            s = s.replaceAll("[\\W]", "");
        }
        return s;
    }
}
