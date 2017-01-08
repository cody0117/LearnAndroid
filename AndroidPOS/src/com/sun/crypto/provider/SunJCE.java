// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.io.ByteArrayInputStream;
import java.net.URL;
import java.security.AccessController;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE_b

public final class SunJCE extends Provider
{

    private static final String a = "SunJCE Provider (implements RSA, DES, Triple DES, AES, Blowfish, ARCFOUR, RC2, PBE, Diffie-Hellman, HMAC)";
    private static final String b = "1.2.840.113549.1.12.1.6";
    private static final String c = "1.2.840.113549.1.12.1.3";
    private static final String d = "1.2.840.113549.1.5.3";
    private static final String e = "1.2.840.113549.1.5.12";
    private static final String f = "1.2.840.113549.1.3.1";
    static final boolean g = false;
    static final SecureRandom h = new SecureRandom();
    private static boolean i = false;
    private static final long serialVersionUID = 0x5e8ae38e90ba8df1L;

    public SunJCE()
    {
        super("SunJCE", 1.6000000000000001D, "SunJCE Provider (implements RSA, DES, Triple DES, AES, Blowfish, ARCFOUR, RC2, PBE, Diffie-Hellman, HMAC)");
        AccessController.doPrivileged(new _cls1());
    }

    static void a(Class class1)
    {
        if (!b(class1))
        {
            throw new SecurityException("The SunJCE provider may have been tampered.");
        } else
        {
            return;
        }
    }

    static final boolean b(Class class1)
    {
        if (i)
        {
            return true;
        } else
        {
            return c(class1);
        }
    }

    private static final boolean c(Class class1)
    {
        com/sun/crypto/provider/SunJCE;
        JVM INSTR monitorenter ;
        boolean flag = i;
        if (!flag) goto _L2; else goto _L1
_L1:
        boolean flag1 = true;
_L4:
        com/sun/crypto/provider/SunJCE;
        JVM INSTR monitorexit ;
        return flag1;
_L2:
        X509Certificate x509certificate = (X509Certificate)CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream("-----BEGIN CERTIFICATE-----\nMIICnTCCAlugAwIBAgICAh8wCwYHKoZIzjgEAwUAMIGQMQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExEjAQBgNVBAcTCVBhbG8gQWx0bzEdMBsGA1UEChMUU3VuIE1pY3Jvc3lzdGVtcyBJbmMxIzAhBgNVBAsTGkphdmEgU29mdHdhcmUgQ29kZSBTaWduaW5nMRwwGgYDVQQDExNKQ0UgQ29kZSBTaWduaW5nIENBMB4XDTA1MTEyMzIyNDk0MVoXDTEwMTEyNzIyNDk0MVowYzEdMBsGA1UEChMUU3VuIE1pY3Jvc3lzdGVtcyBJbmMxIzAhBgNVBAsTGkphdmEgU29mdHdhcmUgQ29kZSBTaWduaW5nMR0wGwYDVQQDExRTdW4gTWljcm9zeXN0ZW1zIEluYzCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA16bKo6tC3OHFDNfPXLKXMCMtIyeubNnsEtlvrH34HhfF+ZmpSliLCvQ15ms705vy4XgZUbZ3mgSOlLRMAGRo6596ePhc+0Z6yeKhbb3LZ8iz97ZIptkHGOshj9cfcSRPYmorUug9OsybMdIfQXazxT9mZJ9Yx5IDw6xak7kVbpUCAwEAAaOBiDCBhTARBglghkgBhvhCAQEEBAMCBBAwDgYDVR0PAQH/BAQDAgXgMB0GA1UdDgQWBBRI319jCbhc9DWJVltXgfrMybHNjzAfBgNVHSMEGDAWgBRl4vSGydNO8JFOWKJq9dh4WprBpjAgBgNVHREEGTAXgRV5dS1jaGluZy5wZW5nQHN1bi5jb20wCwYHKoZIzjgEAwUAAy8AMCwCFFBFmED9s3OoN9rbXfQV3+brJPW/AhQr+Wq1MlubAvnfjrlqeksh0QaDAQ==\n-----END CERTIFICATE-----".getBytes("UTF8")));
        URL url = (URL)AccessController.doPrivileged(new _cls2(class1));
        if (url == null)
        {
            flag1 = false;
            continue; /* Loop/switch isn't completed */
        }
        SunJCE_b sunjce_b = new SunJCE_b(url);
        try
        {
            sunjce_b.a(x509certificate);
        }
        catch (Exception exception2)
        {
            flag1 = false;
            continue; /* Loop/switch isn't completed */
        }
        i = true;
        flag1 = true;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        throw exception;
        Exception exception1;
        exception1;
        flag1 = false;
        if (true) goto _L4; else goto _L3
_L3:
    }

    static 
    {
        i = false;
    }

    private class _cls1
        implements PrivilegedAction
    {

        final SunJCE a;

        public final Object run()
        {
            a.put("Cipher.RSA", "com.sun.crypto.provider.RSACipher");
            a.put("Cipher.RSA SupportedModes", "ECB");
            a.put("Cipher.RSA SupportedPaddings", "NOPADDING|PKCS1PADDING|OAEPWITHMD5ANDMGF1PADDING|OAEPWITHSHA1ANDMGF1PADDING|OAEPWITHSHA-1ANDMGF1PADDING|OAEPWITHSHA-256ANDMGF1PADDING|OAEPWITHSHA-384ANDMGF1PADDING|OAEPWITHSHA-512ANDMGF1PADDING");
            a.put("Cipher.RSA SupportedKeyClasses", "java.security.interfaces.RSAPublicKey|java.security.interfaces.RSAPrivateKey");
            a.put("Cipher.DES", "com.sun.crypto.provider.DESCipher");
            a.put("Cipher.DES SupportedModes", "ECB|CBC|PCBC|CTR|CTS|CFB|OFB|CFB8|CFB16|CFB24|CFB32|CFB40|CFB48|CFB56|CFB64|OFB8|OFB16|OFB24|OFB32|OFB40|OFB48|OFB56|OFB64");
            a.put("Cipher.DES SupportedPaddings", "NOPADDING|PKCS5PADDING|ISO10126PADDING");
            a.put("Cipher.DES SupportedKeyFormats", "RAW");
            a.put("Cipher.DESede", "com.sun.crypto.provider.DESedeCipher");
            a.put("Alg.Alias.Cipher.TripleDES", "DESede");
            a.put("Cipher.DESede SupportedModes", "ECB|CBC|PCBC|CTR|CTS|CFB|OFB|CFB8|CFB16|CFB24|CFB32|CFB40|CFB48|CFB56|CFB64|OFB8|OFB16|OFB24|OFB32|OFB40|OFB48|OFB56|OFB64");
            a.put("Cipher.DESede SupportedPaddings", "NOPADDING|PKCS5PADDING|ISO10126PADDING");
            a.put("Cipher.DESede SupportedKeyFormats", "RAW");
            a.put("Cipher.DESedeWrap", "com.sun.crypto.provider.DESedeWrapCipher");
            a.put("Cipher.DESedeWrap SupportedModes", "CBC");
            a.put("Cipher.DESedeWrap SupportedPaddings", "NOPADDING");
            a.put("Cipher.DESedeWrap SupportedKeyFormats", "RAW");
            a.put("Cipher.PBEWithMD5AndDES", "com.sun.crypto.provider.PBEWithMD5AndDESCipher");
            a.put("Alg.Alias.Cipher.OID.1.2.840.113549.1.5.3", "PBEWithMD5AndDES");
            a.put("Alg.Alias.Cipher.1.2.840.113549.1.5.3", "PBEWithMD5AndDES");
            a.put("Cipher.PBEWithMD5AndTripleDES", "com.sun.crypto.provider.PBEWithMD5AndTripleDESCipher");
            a.put("Cipher.PBEWithSHA1AndRC2_40", "com.sun.crypto.provider.PKCS12PBECipherCore$PBEWithSHA1AndRC2_40");
            a.put("Alg.Alias.Cipher.OID.1.2.840.113549.1.12.1.6", "PBEWithSHA1AndRC2_40");
            a.put("Alg.Alias.Cipher.1.2.840.113549.1.12.1.6", "PBEWithSHA1AndRC2_40");
            a.put("Cipher.PBEWithSHA1AndDESede", "com.sun.crypto.provider.PKCS12PBECipherCore$PBEWithSHA1AndDESede");
            a.put("Alg.Alias.Cipher.OID.1.2.840.113549.1.12.1.3", "PBEWithSHA1AndDESede");
            a.put("Alg.Alias.Cipher.1.2.840.113549.1.12.1.3", "PBEWithSHA1AndDESede");
            a.put("Cipher.Blowfish", "com.sun.crypto.provider.BlowfishCipher");
            a.put("Cipher.Blowfish SupportedModes", "ECB|CBC|PCBC|CTR|CTS|CFB|OFB|CFB8|CFB16|CFB24|CFB32|CFB40|CFB48|CFB56|CFB64|OFB8|OFB16|OFB24|OFB32|OFB40|OFB48|OFB56|OFB64");
            a.put("Cipher.Blowfish SupportedPaddings", "NOPADDING|PKCS5PADDING|ISO10126PADDING");
            a.put("Cipher.Blowfish SupportedKeyFormats", "RAW");
            a.put("Cipher.AES", "com.sun.crypto.provider.AESCipher");
            a.put("Alg.Alias.Cipher.Rijndael", "AES");
            a.put("Cipher.AES SupportedModes", "ECB|CBC|PCBC|CTR|CTS|CFB|OFB|CFB8|CFB16|CFB24|CFB32|CFB40|CFB48|CFB56|CFB64|OFB8|OFB16|OFB24|OFB32|OFB40|OFB48|OFB56|OFB64|CFB72|CFB80|CFB88|CFB96|CFB104|CFB112|CFB120|CFB128|OFB72|OFB80|OFB88|OFB96|OFB104|OFB112|OFB120|OFB128");
            a.put("Cipher.AES SupportedPaddings", "NOPADDING|PKCS5PADDING|ISO10126PADDING");
            a.put("Cipher.AES SupportedKeyFormats", "RAW");
            a.put("Cipher.AESWrap", "com.sun.crypto.provider.AESWrapCipher");
            a.put("Cipher.AESWrap SupportedModes", "ECB");
            a.put("Cipher.AESWrap SupportedPaddings", "NOPADDING");
            a.put("Cipher.AESWrap SupportedKeyFormats", "RAW");
            a.put("Cipher.RC2", "com.sun.crypto.provider.RC2Cipher");
            a.put("Cipher.RC2 SupportedModes", "ECB|CBC|PCBC|CTR|CTS|CFB|OFB|CFB8|CFB16|CFB24|CFB32|CFB40|CFB48|CFB56|CFB64|OFB8|OFB16|OFB24|OFB32|OFB40|OFB48|OFB56|OFB64");
            a.put("Cipher.RC2 SupportedPaddings", "NOPADDING|PKCS5PADDING|ISO10126PADDING");
            a.put("Cipher.RC2 SupportedKeyFormats", "RAW");
            a.put("Cipher.ARCFOUR", "com.sun.crypto.provider.ARCFOURCipher");
            a.put("Alg.Alias.Cipher.RC4", "ARCFOUR");
            a.put("Cipher.ARCFOUR SupportedModes", "ECB");
            a.put("Cipher.ARCFOUR SupportedPaddings", "NOPADDING");
            a.put("Cipher.ARCFOUR SupportedKeyFormats", "RAW");
            a.put("KeyGenerator.DES", "com.sun.crypto.provider.DESKeyGenerator");
            a.put("KeyGenerator.DESede", "com.sun.crypto.provider.DESedeKeyGenerator");
            a.put("Alg.Alias.KeyGenerator.TripleDES", "DESede");
            a.put("KeyGenerator.Blowfish", "com.sun.crypto.provider.BlowfishKeyGenerator");
            a.put("KeyGenerator.AES", "com.sun.crypto.provider.AESKeyGenerator");
            a.put("Alg.Alias.KeyGenerator.Rijndael", "AES");
            a.put("KeyGenerator.RC2", "com.sun.crypto.provider.KeyGeneratorCore$RC2KeyGenerator");
            a.put("KeyGenerator.ARCFOUR", "com.sun.crypto.provider.KeyGeneratorCore$ARCFOURKeyGenerator");
            a.put("Alg.Alias.KeyGenerator.RC4", "ARCFOUR");
            a.put("KeyGenerator.HmacMD5", "com.sun.crypto.provider.HmacMD5KeyGenerator");
            a.put("KeyGenerator.HmacSHA1", "com.sun.crypto.provider.HmacSHA1KeyGenerator");
            a.put("KeyGenerator.HmacSHA256", "com.sun.crypto.provider.KeyGeneratorCore$HmacSHA256KG");
            a.put("KeyGenerator.HmacSHA384", "com.sun.crypto.provider.KeyGeneratorCore$HmacSHA384KG");
            a.put("KeyGenerator.HmacSHA512", "com.sun.crypto.provider.KeyGeneratorCore$HmacSHA512KG");
            a.put("KeyPairGenerator.DiffieHellman", "com.sun.crypto.provider.DHKeyPairGenerator");
            a.put("Alg.Alias.KeyPairGenerator.DH", "DiffieHellman");
            a.put("Alg.Alias.KeyPairGenerator.OID.1.2.840.113549.1.3.1", "DiffieHellman");
            a.put("Alg.Alias.KeyPairGenerator.1.2.840.113549.1.3.1", "DiffieHellman");
            a.put("AlgorithmParameterGenerator.DiffieHellman", "com.sun.crypto.provider.DHParameterGenerator");
            a.put("Alg.Alias.AlgorithmParameterGenerator.DH", "DiffieHellman");
            a.put("Alg.Alias.AlgorithmParameterGenerator.OID.1.2.840.113549.1.3.1", "DiffieHellman");
            a.put("Alg.Alias.AlgorithmParameterGenerator.1.2.840.113549.1.3.1", "DiffieHellman");
            a.put("KeyAgreement.DiffieHellman", "com.sun.crypto.provider.DHKeyAgreement");
            a.put("Alg.Alias.KeyAgreement.DH", "DiffieHellman");
            a.put("Alg.Alias.KeyAgreement.OID.1.2.840.113549.1.3.1", "DiffieHellman");
            a.put("Alg.Alias.KeyAgreement.1.2.840.113549.1.3.1", "DiffieHellman");
            a.put("KeyAgreement.DiffieHellman SupportedKeyClasses", "javax.crypto.interfaces.DHPublicKey|javax.crypto.interfaces.DHPrivateKey");
            a.put("AlgorithmParameters.DiffieHellman", "com.sun.crypto.provider.DHParameters");
            a.put("Alg.Alias.AlgorithmParameters.DH", "DiffieHellman");
            a.put("Alg.Alias.AlgorithmParameters.OID.1.2.840.113549.1.3.1", "DiffieHellman");
            a.put("Alg.Alias.AlgorithmParameters.1.2.840.113549.1.3.1", "DiffieHellman");
            a.put("AlgorithmParameters.DES", "com.sun.crypto.provider.DESParameters");
            a.put("AlgorithmParameters.DESede", "com.sun.crypto.provider.DESedeParameters");
            a.put("Alg.Alias.AlgorithmParameters.TripleDES", "DESede");
            a.put("AlgorithmParameters.PBE", "com.sun.crypto.provider.PBEParameters");
            a.put("AlgorithmParameters.PBEWithMD5AndDES", "com.sun.crypto.provider.PBEParameters");
            a.put("Alg.Alias.AlgorithmParameters.OID.1.2.840.113549.1.5.3", "PBEWithMD5AndDES");
            a.put("Alg.Alias.AlgorithmParameters.1.2.840.113549.1.5.3", "PBEWithMD5AndDES");
            a.put("AlgorithmParameters.PBEWithMD5AndTripleDES", "com.sun.crypto.provider.PBEParameters");
            a.put("AlgorithmParameters.PBEWithSHA1AndDESede", "com.sun.crypto.provider.PBEParameters");
            a.put("Alg.Alias.AlgorithmParameters.OID.1.2.840.113549.1.12.1.3", "PBEWithSHA1AndDESede");
            a.put("Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.3", "PBEWithSHA1AndDESede");
            a.put("AlgorithmParameters.PBEWithSHA1AndRC2_40", "com.sun.crypto.provider.PBEParameters");
            a.put("Alg.Alias.AlgorithmParameters.OID.1.2.840.113549.1.12.1.6", "PBEWithSHA1AndRC2_40");
            a.put("Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.6", "PBEWithSHA1AndRC2_40");
            a.put("AlgorithmParameters.Blowfish", "com.sun.crypto.provider.BlowfishParameters");
            a.put("AlgorithmParameters.AES", "com.sun.crypto.provider.AESParameters");
            a.put("Alg.Alias.AlgorithmParameters.Rijndael", "AES");
            a.put("AlgorithmParameters.RC2", "com.sun.crypto.provider.RC2Parameters");
            a.put("AlgorithmParameters.OAEP", "com.sun.crypto.provider.OAEPParameters");
            a.put("KeyFactory.DiffieHellman", "com.sun.crypto.provider.DHKeyFactory");
            a.put("Alg.Alias.KeyFactory.DH", "DiffieHellman");
            a.put("Alg.Alias.KeyFactory.OID.1.2.840.113549.1.3.1", "DiffieHellman");
            a.put("Alg.Alias.KeyFactory.1.2.840.113549.1.3.1", "DiffieHellman");
            a.put("SecretKeyFactory.DES", "com.sun.crypto.provider.DESKeyFactory");
            a.put("SecretKeyFactory.DESede", "com.sun.crypto.provider.DESedeKeyFactory");
            a.put("Alg.Alias.SecretKeyFactory.TripleDES", "DESede");
            a.put("SecretKeyFactory.PBEWithMD5AndDES", "com.sun.crypto.provider.PBEKeyFactory$PBEWithMD5AndDES");
            a.put("Alg.Alias.SecretKeyFactory.OID.1.2.840.113549.1.5.3", "PBEWithMD5AndDES");
            a.put("Alg.Alias.SecretKeyFactory.1.2.840.113549.1.5.3", "PBEWithMD5AndDES");
            a.put("Alg.Alias.SecretKeyFactory.PBE", "PBEWithMD5AndDES");
            a.put("SecretKeyFactory.PBEWithMD5AndTripleDES", "com.sun.crypto.provider.PBEKeyFactory$PBEWithMD5AndTripleDES");
            a.put("SecretKeyFactory.PBEWithSHA1AndDESede", "com.sun.crypto.provider.PBEKeyFactory$PBEWithSHA1AndDESede");
            a.put("Alg.Alias.SecretKeyFactory.OID.1.2.840.113549.1.12.1.3", "PBEWithSHA1AndDESede");
            a.put("Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.3", "PBEWithSHA1AndDESede");
            a.put("SecretKeyFactory.PBEWithSHA1AndRC2_40", "com.sun.crypto.provider.PBEKeyFactory$PBEWithSHA1AndRC2_40");
            a.put("Alg.Alias.SecretKeyFactory.OID.1.2.840.113549.1.12.1.6", "PBEWithSHA1AndRC2_40");
            a.put("Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.6", "PBEWithSHA1AndRC2_40");
            a.put("SecretKeyFactory.PBKDF2WithHmacSHA1", "com.sun.crypto.provider.PBKDF2HmacSHA1Factory");
            a.put("Alg.Alias.SecretKeyFactory.OID.1.2.840.113549.1.5.12", "PBKDF2WithHmacSHA1");
            a.put("Alg.Alias.SecretKeyFactory.1.2.840.113549.1.5.12", "PBKDF2WithHmacSHA1");
            a.put("Mac.HmacMD5", "com.sun.crypto.provider.HmacMD5");
            a.put("Mac.HmacSHA1", "com.sun.crypto.provider.HmacSHA1");
            a.put("Mac.HmacSHA256", "com.sun.crypto.provider.HmacCore$HmacSHA256");
            a.put("Mac.HmacSHA384", "com.sun.crypto.provider.HmacCore$HmacSHA384");
            a.put("Mac.HmacSHA512", "com.sun.crypto.provider.HmacCore$HmacSHA512");
            a.put("Mac.HmacPBESHA1", "com.sun.crypto.provider.HmacPKCS12PBESHA1");
            a.put("Mac.SslMacMD5", "com.sun.crypto.provider.SslMacCore$SslMacMD5");
            a.put("Mac.SslMacSHA1", "com.sun.crypto.provider.SslMacCore$SslMacSHA1");
            a.put("Mac.HmacMD5 SupportedKeyFormats", "RAW");
            a.put("Mac.HmacSHA1 SupportedKeyFormats", "RAW");
            a.put("Mac.HmacSHA256 SupportedKeyFormats", "RAW");
            a.put("Mac.HmacSHA384 SupportedKeyFormats", "RAW");
            a.put("Mac.HmacSHA512 SupportedKeyFormats", "RAW");
            a.put("Mac.HmacPBESHA1 SupportedKeyFormats", "RAW");
            a.put("Mac.SslMacMD5 SupportedKeyFormats", "RAW");
            a.put("Mac.SslMacSHA1 SupportedKeyFormats", "RAW");
            a.put("KeyStore.JCEKS", "com.sun.crypto.provider.JceKeyStore");
            a.put("KeyGenerator.SunTlsPrf", "com.sun.crypto.provider.TlsPrfGenerator");
            a.put("KeyGenerator.SunTlsRsaPremasterSecret", "com.sun.crypto.provider.TlsRsaPremasterSecretGenerator");
            a.put("KeyGenerator.SunTlsMasterSecret", "com.sun.crypto.provider.TlsMasterSecretGenerator");
            a.put("KeyGenerator.SunTlsKeyMaterial", "com.sun.crypto.provider.TlsKeyMaterialGenerator");
            return null;
        }

        _cls1()
        {
            a = SunJCE.this;
            super();
        }
    }


    private class _cls2
        implements PrivilegedAction
    {

        final Class a;

        public final Object run()
        {
            return a.getProtectionDomain().getCodeSource().getLocation();
        }

        _cls2(Class class1)
        {
            a = class1;
            super();
        }
    }

}
