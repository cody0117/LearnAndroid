// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bugsense.trace;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.Random;

// Referenced classes of package com.bugsense.trace:
//            G

public class UidManager
{

    private static final char DIGITS[] = {
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
        'a', 'b', 'c', 'd', 'e', 'f'
    };
    private static final int UID_CORRECT_LENTH = 32;
    private static final String UID_ERROR_ID = "12345678901234567890123456789012";
    private static final String UID_FIELD = "UID_FIELD";
    private static final String UID_NOSAVED = "UID_NOSAVED";
    private static final String UID_PREFERENCES = "UIDPREFERENCES";

    public UidManager()
    {
    }

    private static final char[] encodeHex(byte abyte0[])
    {
        int i = 0;
        int j = abyte0.length;
        char ac[] = new char[j << 1];
        for (int k = 0; k < j; k++)
        {
            int l = i + 1;
            ac[i] = DIGITS[(0xf0 & abyte0[k]) >>> 4];
            i = l + 1;
            ac[l] = DIGITS[0xf & abyte0[k]];
        }

        return ac;
    }

    private static final String generateUid()
    {
        String s = Long.valueOf((new Date()).getTime()).toString();
        String s1 = (new Object()).toString();
        long l = System.nanoTime();
        String s2;
        String s3;
        String s4;
        NoSuchAlgorithmException nosuchalgorithmexception;
        byte abyte0[];
        UnsupportedEncodingException unsupportedencodingexception;
        byte abyte1[];
        byte abyte2[];
        try
        {
            Thread.sleep(256L, 42);
        }
        catch (InterruptedException interruptedexception) { }
        s2 = Long.valueOf(System.nanoTime() - l).toString();
        s3 = Integer.valueOf((int)(65535D * (new Random(System.currentTimeMillis())).nextDouble())).toString();
        s4 = (new StringBuilder()).append(s).append(s1).append(s2).append(s3).append("android_id").toString();
        abyte1 = s4.getBytes("UTF-8");
        abyte2 = MessageDigest.getInstance("MD5").digest(abyte1);
        abyte0 = abyte2;
_L2:
        return new String(encodeHex(abyte0));
        unsupportedencodingexception;
        unsupportedencodingexception.printStackTrace();
        abyte0 = null;
        continue; /* Loop/switch isn't completed */
        nosuchalgorithmexception;
        nosuchalgorithmexception.printStackTrace();
        abyte0 = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected static final String getUid(Context context)
    {
        String s;
        if (G.UID != null && G.UID.length() == 32)
        {
            s = G.UID;
        } else
        {
            s = "12345678901234567890123456789012";
            if (context != null)
            {
                SharedPreferences sharedpreferences = context.getSharedPreferences("UIDPREFERENCES", 0);
                if (sharedpreferences != null)
                {
                    s = sharedpreferences.getString("UID_FIELD", "UID_NOSAVED");
                }
            }
            if (s.equals("UID_NOSAVED") || s.equals("12345678901234567890123456789012"))
            {
                String s1 = generateUid();
                saveUid(context, s1);
                return s1;
            }
        }
        return s;
    }

    protected static boolean saveUid(Context context, String s)
    {
        boolean flag = false;
        if (s != null)
        {
            int i = s.length();
            flag = false;
            if (i == 32)
            {
                G.UID = s;
                SharedPreferences sharedpreferences = context.getSharedPreferences("UIDPREFERENCES", 0);
                flag = false;
                if (sharedpreferences != null)
                {
                    flag = sharedpreferences.edit().putString("UID_FIELD", s).commit();
                }
            }
        }
        return flag;
    }

}
