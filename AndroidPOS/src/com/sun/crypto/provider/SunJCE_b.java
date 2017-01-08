// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.AccessController;
import java.security.NoSuchProviderException;
import java.security.PrivilegedActionException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Enumeration;
import java.util.Vector;
import java.util.jar.Attributes;
import java.util.jar.JarEntry;
import java.util.jar.JarException;
import java.util.jar.JarFile;
import java.util.jar.Manifest;

final class SunJCE_b
{

    private static final boolean a;
    private URL b;

    SunJCE_b(URL url)
    {
        b = url;
    }

    private String a(URL url, X509Certificate x509certificate)
    {
        URL url1;
        Exception exception;
        JarFile jarfile;
        JarFile jarfile1;
        Exception exception1;
        byte abyte0[];
        Vector vector;
        Enumeration enumeration;
        InputStream inputstream;
        int j;
        if (url.getProtocol().equalsIgnoreCase("jar"))
        {
            url1 = url;
        } else
        {
            url1 = new URL((new StringBuilder("jar:")).append(url.toString()).append("!/").toString());
        }
        jarfile1 = (JarFile)AccessController.doPrivileged(new _cls1(url1));
        abyte0 = new byte[8192];
        vector = new Vector();
        enumeration = jarfile1.entries();
_L1:
        if (!enumeration.hasMoreElements())
        {
            break MISSING_BLOCK_LABEL_236;
        }
        JarEntry jarentry1 = (JarEntry)enumeration.nextElement();
        vector.addElement(jarentry1);
        inputstream = jarfile1.getInputStream(jarentry1);
        do
        {
            j = inputstream.read(abyte0, 0, abyte0.length);
        } while (j != -1);
        inputstream.close();
          goto _L1
        exception1;
        jarfile = jarfile1;
        exception = exception1;
_L3:
        if (jarfile != null)
        {
            jarfile.close();
        }
        throw exception;
        PrivilegedActionException privilegedactionexception;
        privilegedactionexception;
        SecurityException securityexception = new SecurityException((new StringBuilder("Cannot verify ")).append(url1.toString()).toString());
        securityexception.initCause(privilegedactionexception);
        throw securityexception;
        exception;
        jarfile = null;
        if (true) goto _L3; else goto _L2
_L2:
        Exception exception2;
        exception2;
        inputstream.close();
        throw exception2;
        Manifest manifest = jarfile1.getManifest();
        if (manifest != null)
        {
            break MISSING_BLOCK_LABEL_278;
        }
        throw new JarException((new StringBuilder()).append(url.toString()).append(" is not signed.").toString());
        Enumeration enumeration1 = jarfile1.entries();
_L7:
        if (!enumeration1.hasMoreElements()) goto _L5; else goto _L4
_L4:
        JarEntry jarentry = (JarEntry)enumeration1.nextElement();
        if (jarentry.isDirectory()) goto _L7; else goto _L6
_L6:
        Certificate acertificate[] = jarentry.getCertificates();
        if (acertificate == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (acertificate.length != 0)
        {
            break MISSING_BLOCK_LABEL_490;
        }
        if (jarentry.getName().startsWith("META-INF")) goto _L7; else goto _L8
_L8:
        throw new JarException((new StringBuilder()).append(url.toString()).append(" has unsigned entries - ").append(jarentry.getName()).toString());
_L14:
        int i;
        X509Certificate ax509certificate[] = a(acertificate, i);
        if (ax509certificate == null) goto _L10; else goto _L9
_L9:
        if (!x509certificate.equals(ax509certificate[0])) goto _L12; else goto _L11
_L11:
        boolean flag = true;
_L15:
        if (flag) goto _L7; else goto _L13
_L13:
        throw new JarException((new StringBuilder()).append(url.toString()).append(" is not signed by a trusted signer.").toString());
_L12:
        i += ax509certificate.length;
          goto _L14
_L5:
        String s = manifest.getMainAttributes().getValue(java.util.jar.Attributes.Name.CLASS_PATH);
        if (jarfile1 != null)
        {
            jarfile1.close();
        }
        return s;
_L10:
        flag = false;
          goto _L15
        i = 0;
          goto _L14
    }

    private void a(URL url, String s, Vector vector, X509Certificate x509certificate)
    {
        String as[] = a(s);
        int i = 0;
        do
        {
            try
            {
                if (i >= as.length)
                {
                    break;
                }
                a(new URL(url, as[i]), vector, x509certificate);
            }
            catch (MalformedURLException malformedurlexception)
            {
                MalformedURLException malformedurlexception1 = new MalformedURLException((new StringBuilder("The JAR file ")).append(url.toString()).append(" contains invalid URLs in its Class-Path attribute").toString());
                malformedurlexception1.initCause(malformedurlexception);
                throw malformedurlexception1;
            }
            i++;
        } while (true);
    }

    private void a(URL url, Vector vector, X509Certificate x509certificate)
    {
        String s = url.toString();
        if (vector == null || !vector.contains(s))
        {
            String s1 = a(url, x509certificate);
            if (vector != null)
            {
                vector.addElement(s);
            }
            if (s1 != null)
            {
                if (vector == null)
                {
                    vector = new Vector();
                    vector.addElement(s);
                }
                a(url, s1, vector, x509certificate);
            }
        }
    }

    private static String[] a(String s)
    {
        String s1 = s.trim();
        int i = s1.indexOf(' ');
        Vector vector = new Vector();
        boolean flag = false;
        do
        {
            String s2;
            String s3;
            int k;
            if (i > 0)
            {
                s2 = s1.substring(0, i);
                s3 = s1.substring(i + 1).trim();
                k = s3.indexOf(' ');
            } else
            {
                flag = true;
                s2 = s1;
                int j = i;
                s3 = s1;
                k = j;
            }
            if (s2.endsWith(".jar"))
            {
                vector.addElement(s2);
                if (flag)
                {
                    String as[] = new String[vector.size()];
                    vector.copyInto(as);
                    return as;
                }
            } else
            {
                throw new JarException("The provider contains un-verifiable components");
            }
            int l = k;
            s1 = s3;
            i = l;
        } while (true);
    }

    private static X509Certificate[] a(Certificate acertificate[], int i)
    {
        if (i > -1 + acertificate.length)
        {
            return null;
        }
        int j;
        for (j = i; j < -1 + acertificate.length && ((X509Certificate)acertificate[j + 1]).getSubjectDN().equals(((X509Certificate)acertificate[j]).getIssuerDN()); j++) { }
        int k = 1 + (j - i);
        X509Certificate ax509certificate[] = new X509Certificate[k];
        for (int l = 0; l < k; l++)
        {
            ax509certificate[l] = (X509Certificate)acertificate[i + l];
        }

        return ax509certificate;
    }

    final void a(X509Certificate x509certificate)
    {
        try
        {
            a(b, null, x509certificate);
            return;
        }
        catch (NoSuchProviderException nosuchproviderexception)
        {
            throw new JarException((new StringBuilder("Cannot verify ")).append(b.toString()).toString());
        }
        catch (CertificateException certificateexception)
        {
            throw new JarException((new StringBuilder("Cannot verify ")).append(b.toString()).toString());
        }
    }

    private class _cls1
        implements PrivilegedExceptionAction
    {

        final URL a;
        final SunJCE_b b;

        public final Object run()
        {
            JarURLConnection jarurlconnection = (JarURLConnection)a.openConnection();
            jarurlconnection.setUseCaches(false);
            return jarurlconnection.getJarFile();
        }

        _cls1(URL url)
        {
            b = SunJCE_b.this;
            a = url;
            super();
        }
    }

}
