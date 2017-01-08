// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.PrivilegedAction;
import java.security.Provider;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE

final class a
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

    (SunJCE sunjce)
    {
        a = sunjce;
        super();
    }
}
