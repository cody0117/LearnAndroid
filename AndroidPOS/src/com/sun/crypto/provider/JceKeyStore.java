// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.security.DigestInputStream;
import java.security.DigestOutputStream;
import java.security.Key;
import java.security.KeyStoreException;
import java.security.KeyStoreSpi;
import java.security.MessageDigest;
import java.security.PrivateKey;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.util.Date;
import java.util.Enumeration;
import java.util.Hashtable;
import javax.crypto.SealedObject;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE_z, SunJCE_aa

public final class JceKeyStore extends KeyStoreSpi
{

    private static final int a = 0xcececece;
    private static final int b = 0xfeedfeed;
    private static final int c = 1;
    private static final int d = 2;
    private Hashtable e;

    public JceKeyStore()
    {
        e = new Hashtable();
    }

    private MessageDigest a(char ac[])
    {
        MessageDigest messagedigest = MessageDigest.getInstance("SHA");
        byte abyte0[] = new byte[2 * ac.length];
        int i = 0;
        for (int j = 0; j < ac.length; j++)
        {
            int l = i + 1;
            abyte0[i] = (byte)(ac[j] >> 8);
            i = l + 1;
            abyte0[l] = (byte)ac[j];
        }

        messagedigest.update(abyte0);
        for (int k = 0; k < abyte0.length; k++)
        {
            abyte0[k] = 0;
        }

        messagedigest.update("Mighty Aphrodite".getBytes("UTF8"));
        return messagedigest;
    }

    public final Enumeration engineAliases()
    {
        return e.keys();
    }

    public final boolean engineContainsAlias(String s)
    {
        return e.containsKey(s.toLowerCase());
    }

    public final void engineDeleteEntry(String s)
    {
        synchronized (e)
        {
            e.remove(s.toLowerCase());
        }
    }

    public final Certificate engineGetCertificate(String s)
    {
        Object obj = e.get(s.toLowerCase());
        if (obj != null)
        {
            if (obj instanceof ak)
            {
                return ((ak)obj).b;
            }
            if ((obj instanceof ai) && ((ai)obj).c != null)
            {
                return ((ai)obj).c[0];
            }
        }
        return null;
    }

    public final String engineGetCertificateAlias(Certificate certificate)
    {
        Enumeration enumeration = e.keys();
_L2:
        String s;
        Object obj;
        Certificate certificate1;
        if (!enumeration.hasMoreElements())
        {
            break MISSING_BLOCK_LABEL_100;
        }
        s = (String)enumeration.nextElement();
        obj = e.get(s);
        if (!(obj instanceof ak))
        {
            continue; /* Loop/switch isn't completed */
        }
        certificate1 = ((ak)obj).b;
_L4:
        if (!certificate1.equals(certificate)) goto _L2; else goto _L1
_L1:
        return s;
        if (!(obj instanceof ai) || ((ai)obj).c == null) goto _L2; else goto _L3
_L3:
        certificate1 = ((ai)obj).c[0];
          goto _L4
        return null;
    }

    public final Certificate[] engineGetCertificateChain(String s)
    {
        Object obj = e.get(s.toLowerCase());
        if ((obj instanceof ai) && ((ai)obj).c != null)
        {
            return (Certificate[])((ai)obj).c.clone();
        } else
        {
            return null;
        }
    }

    public final Date engineGetCreationDate(String s)
    {
        Object obj = e.get(s.toLowerCase());
        if (obj != null)
        {
            if (obj instanceof ak)
            {
                return new Date(((ak)obj).a.getTime());
            }
            if (obj instanceof ai)
            {
                return new Date(((ai)obj).a.getTime());
            } else
            {
                return new Date(((aj)obj).a.getTime());
            }
        } else
        {
            return null;
        }
    }

    public final Key engineGetKey(String s, char ac[])
    {
        Object obj = e.get(s.toLowerCase());
        if (!(obj instanceof ai) && !(obj instanceof aj))
        {
            return null;
        }
        SunJCE_z sunjce_z = new SunJCE_z(ac);
        if (obj instanceof ai)
        {
            byte abyte0[] = ((ai)obj).b;
            SunJCE_aa sunjce_aa;
            try
            {
                sunjce_aa = new SunJCE_aa(abyte0);
            }
            catch (IOException ioexception)
            {
                throw new UnrecoverableKeyException("Private key not stored as PKCS #8 EncryptedPrivateKeyInfo");
            }
            return sunjce_z.a(sunjce_aa);
        } else
        {
            return sunjce_z.a(((aj)obj).b);
        }
    }

    public final boolean engineIsCertificateEntry(String s)
    {
        boolean flag = e.get(s.toLowerCase()) instanceof ak;
        boolean flag1 = false;
        if (flag)
        {
            flag1 = true;
        }
        return flag1;
    }

    public final boolean engineIsKeyEntry(String s)
    {
        boolean flag;
label0:
        {
            Object obj = e.get(s.toLowerCase());
            if (!(obj instanceof ai))
            {
                boolean flag1 = obj instanceof aj;
                flag = false;
                if (!flag1)
                {
                    break label0;
                }
            }
            flag = true;
        }
        return flag;
    }

    public final void engineLoad(InputStream inputstream, char ac[])
    {
        Hashtable hashtable = e;
        hashtable;
        JVM INSTR monitorenter ;
        if (inputstream == null)
        {
            return;
        }
        if (ac == null) goto _L2; else goto _L1
_L1:
        MessageDigest messagedigest1;
        DataInputStream datainputstream2;
        messagedigest1 = a(ac);
        datainputstream2 = new DataInputStream(new DigestInputStream(inputstream, messagedigest1));
        DataInputStream datainputstream1;
        MessageDigest messagedigest;
        datainputstream1 = datainputstream2;
        messagedigest = messagedigest1;
_L6:
        ObjectInputStream objectinputstream = null;
        int i;
        int j;
        i = datainputstream1.readInt();
        j = datainputstream1.readInt();
          goto _L3
_L38:
        throw new IOException("Invalid keystore format");
        Exception exception;
        exception;
_L31:
        if (objectinputstream == null) goto _L5; else goto _L4
_L4:
        objectinputstream.close();
_L36:
        throw exception;
        Exception exception1;
        exception1;
        hashtable;
        JVM INSTR monitorexit ;
        throw exception1;
_L2:
        DataInputStream datainputstream = new DataInputStream(inputstream);
        datainputstream1 = datainputstream;
        messagedigest = null;
          goto _L6
_L39:
        if (j != 1) goto _L8; else goto _L7
_L7:
        CertificateFactory certificatefactory = CertificateFactory.getInstance("X509");
        Hashtable hashtable1 = null;
_L20:
        int k;
        e.clear();
        k = datainputstream1.readInt();
        int l = 0;
_L40:
        if (l >= k) goto _L10; else goto _L9
_L9:
        int i1 = datainputstream1.readInt();
        if (i1 != 1) goto _L12; else goto _L11
_L11:
        ai ai1;
        String s;
        ai1 = new ai(null);
        s = datainputstream1.readUTF();
        ai1.a = new Date(datainputstream1.readLong());
        ai1.b = new byte[datainputstream1.readInt()];
        int j1;
        datainputstream1.readFully(ai1.b);
        j1 = datainputstream1.readInt();
        if (j1 <= 0)
        {
            break MISSING_BLOCK_LABEL_269;
        }
        ai1.c = new Certificate[j1];
        int k1;
        CertificateFactory certificatefactory1;
        k1 = 0;
        certificatefactory1 = certificatefactory;
_L19:
        if (k1 >= j1) goto _L14; else goto _L13
_L13:
        if (j != 2) goto _L16; else goto _L15
_L15:
        String s1 = datainputstream1.readUTF();
        if (!hashtable1.containsKey(s1)) goto _L18; else goto _L17
_L17:
        certificatefactory1 = (CertificateFactory)hashtable1.get(s1);
_L16:
        byte abyte0[] = new byte[datainputstream1.readInt()];
        datainputstream1.readFully(abyte0);
        ByteArrayInputStream bytearrayinputstream = new ByteArrayInputStream(abyte0);
        ai1.c[k1] = certificatefactory1.generateCertificate(bytearrayinputstream);
        k1++;
          goto _L19
_L8:
        hashtable1 = new Hashtable(3);
        certificatefactory = null;
          goto _L20
        OutOfMemoryError outofmemoryerror;
        outofmemoryerror;
        throw new IOException("Keysize too big");
        OutOfMemoryError outofmemoryerror2;
        outofmemoryerror2;
        throw new IOException("Too many certificates in chain");
_L18:
        certificatefactory1 = CertificateFactory.getInstance(s1);
        hashtable1.put(s1, certificatefactory1);
          goto _L16
        OutOfMemoryError outofmemoryerror1;
        outofmemoryerror1;
        throw new IOException("Certificate too big");
_L14:
        e.put(s, ai1);
        CertificateFactory certificatefactory2;
        ObjectInputStream objectinputstream2;
        ObjectInputStream objectinputstream1 = objectinputstream;
        certificatefactory2 = certificatefactory1;
        objectinputstream2 = objectinputstream1;
          goto _L21
_L12:
        if (i1 != 2) goto _L23; else goto _L22
_L22:
        ak ak1;
        String s2;
        ak1 = new ak(null);
        s2 = datainputstream1.readUTF();
        ak1.a = new Date(datainputstream1.readLong());
        if (j != 2) goto _L25; else goto _L24
_L24:
        String s3 = datainputstream1.readUTF();
        if (!hashtable1.containsKey(s3)) goto _L27; else goto _L26
_L26:
        CertificateFactory certificatefactory3 = (CertificateFactory)hashtable1.get(s3);
_L28:
        byte abyte1[] = new byte[datainputstream1.readInt()];
        datainputstream1.readFully(abyte1);
        ak1.b = certificatefactory3.generateCertificate(new ByteArrayInputStream(abyte1));
        e.put(s2, ak1);
        ObjectInputStream objectinputstream3 = objectinputstream;
        certificatefactory2 = certificatefactory3;
        objectinputstream2 = objectinputstream3;
          goto _L21
_L27:
        certificatefactory3 = CertificateFactory.getInstance(s3);
        hashtable1.put(s3, certificatefactory3);
          goto _L28
        OutOfMemoryError outofmemoryerror3;
        outofmemoryerror3;
        throw new IOException("Certificate too big");
_L23:
        if (i1 != 3) goto _L30; else goto _L29
_L29:
        aj aj1;
        String s4;
        aj1 = new aj(null);
        s4 = datainputstream1.readUTF();
        aj1.a = new Date(datainputstream1.readLong());
        ObjectInputStream objectinputstream4 = new ObjectInputStream(datainputstream1);
        aj1.b = (SealedObject)objectinputstream4.readObject();
        e.put(s4, aj1);
        objectinputstream2 = objectinputstream4;
        certificatefactory2 = certificatefactory;
          goto _L21
_L37:
        ClassNotFoundException classnotfoundexception;
        throw new IOException(classnotfoundexception.getMessage());
        exception;
        objectinputstream = objectinputstream4;
          goto _L31
_L30:
        throw new IOException("Unrecognized keystore entry");
_L10:
        if (ac == null) goto _L33; else goto _L32
_L32:
        byte abyte2[];
        byte abyte3[];
        abyte2 = messagedigest.digest();
        abyte3 = new byte[abyte2.length];
        datainputstream1.readFully(abyte3);
        int l1 = 0;
_L34:
        if (l1 >= abyte2.length)
        {
            break; /* Loop/switch isn't completed */
        }
        if (abyte2[l1] != abyte3[l1])
        {
            throw new IOException("Keystore was tampered with, or password was incorrect");
        }
        l1++;
        if (true) goto _L34; else goto _L33
_L33:
        if (objectinputstream == null)
        {
            break MISSING_BLOCK_LABEL_831;
        }
        objectinputstream.close();
_L35:
        hashtable;
        JVM INSTR monitorexit ;
        return;
        datainputstream1.close();
        if (true) goto _L35; else goto _L5
_L5:
        datainputstream1.close();
          goto _L36
        classnotfoundexception;
        objectinputstream4 = objectinputstream;
          goto _L37
_L25:
        certificatefactory3 = certificatefactory;
          goto _L28
_L3:
        if ((i == 0xcececece || i == 0xfeedfeed) && (j == 1 || j == 2)) goto _L39; else goto _L38
_L21:
        l++;
        certificatefactory = certificatefactory2;
        objectinputstream = objectinputstream2;
          goto _L40
        classnotfoundexception;
          goto _L37
    }

    public final void engineSetCertificateEntry(String s, Certificate certificate)
    {
        Hashtable hashtable = e;
        hashtable;
        JVM INSTR monitorenter ;
        Object obj = e.get(s.toLowerCase());
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_70;
        }
        if (obj instanceof ai)
        {
            throw new KeyStoreException("Cannot overwrite own certificate");
        }
        break MISSING_BLOCK_LABEL_51;
        Exception exception;
        exception;
        hashtable;
        JVM INSTR monitorexit ;
        throw exception;
        if (obj instanceof aj)
        {
            throw new KeyStoreException("Cannot overwrite secret key");
        }
        ak ak1 = new ak(null);
        ak1.b = certificate;
        ak1.a = new Date();
        e.put(s.toLowerCase(), ak1);
        hashtable;
        JVM INSTR monitorexit ;
    }

    public final void engineSetKeyEntry(String s, Key key, char ac[], Certificate acertificate[])
    {
        Hashtable hashtable = e;
        hashtable;
        JVM INSTR monitorenter ;
        SunJCE_z sunjce_z;
        ai ai1;
        sunjce_z = new SunJCE_z(ac);
        if (!(key instanceof PrivateKey))
        {
            break MISSING_BLOCK_LABEL_136;
        }
        ai1 = new ai(null);
        ai1.a = new Date();
        ai1.b = sunjce_z.a((PrivateKey)key);
        if (acertificate == null) goto _L2; else goto _L1
_L1:
        if (acertificate.length == 0) goto _L2; else goto _L3
_L3:
        ai1.c = (Certificate[])acertificate.clone();
_L4:
        e.put(s.toLowerCase(), ai1);
_L5:
        hashtable;
        JVM INSTR monitorexit ;
        return;
_L2:
        ai1.c = null;
          goto _L4
        Exception exception1;
        exception1;
        throw new KeyStoreException(exception1.getMessage());
        Exception exception;
        exception;
        hashtable;
        JVM INSTR monitorexit ;
        throw exception;
        aj aj1 = new aj(null);
        aj1.a = new Date();
        aj1.b = sunjce_z.a(key);
        e.put(s.toLowerCase(), aj1);
          goto _L5
    }

    public final void engineSetKeyEntry(String s, byte abyte0[], Certificate acertificate[])
    {
        Hashtable hashtable = e;
        hashtable;
        JVM INSTR monitorenter ;
        ai ai1;
        ai1 = new ai(null);
        ai1.a = new Date();
        ai1.b = (byte[])abyte0.clone();
        if (acertificate == null)
        {
            break MISSING_BLOCK_LABEL_82;
        }
        if (acertificate.length == 0)
        {
            break MISSING_BLOCK_LABEL_82;
        }
        ai1.c = (Certificate[])acertificate.clone();
_L2:
        e.put(s.toLowerCase(), ai1);
        hashtable;
        JVM INSTR monitorexit ;
        return;
        ai1.c = null;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public final int engineSize()
    {
        return e.size();
    }

    public final void engineStore(OutputStream outputstream, char ac[])
    {
        Hashtable hashtable = e;
        hashtable;
        JVM INSTR monitorenter ;
        if (ac != null)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        throw new IllegalArgumentException("password can't be null");
        Exception exception1;
        exception1;
        hashtable;
        JVM INSTR monitorexit ;
        throw exception1;
        MessageDigest messagedigest;
        DataOutputStream dataoutputstream;
        messagedigest = a(ac);
        dataoutputstream = new DataOutputStream(new DigestOutputStream(outputstream, messagedigest));
        Enumeration enumeration;
        dataoutputstream.writeInt(0xcececece);
        dataoutputstream.writeInt(2);
        dataoutputstream.writeInt(e.size());
        enumeration = e.keys();
        ObjectOutputStream objectoutputstream1 = null;
_L4:
        if (!enumeration.hasMoreElements()) goto _L2; else goto _L1
_L1:
        String s;
        Object obj;
        ai ai1;
        s = (String)enumeration.nextElement();
        obj = e.get(s);
        if (!(obj instanceof ai))
        {
            break MISSING_BLOCK_LABEL_276;
        }
        ai1 = (ai)obj;
        dataoutputstream.writeInt(1);
        dataoutputstream.writeUTF(s);
        dataoutputstream.writeLong(ai1.a.getTime());
        dataoutputstream.writeInt(ai1.b.length);
        dataoutputstream.write(ai1.b);
        if (ai1.c != null)
        {
            break MISSING_BLOCK_LABEL_265;
        }
        int i = 0;
_L6:
        dataoutputstream.writeInt(i);
        int j = 0;
_L5:
        if (j >= i) goto _L4; else goto _L3
_L3:
        byte abyte1[] = ai1.c[j].getEncoded();
        dataoutputstream.writeUTF(ai1.c[j].getType());
        dataoutputstream.writeInt(abyte1.length);
        dataoutputstream.write(abyte1);
        j++;
          goto _L5
        i = ai1.c.length;
          goto _L6
        if (!(obj instanceof ak)) goto _L8; else goto _L7
_L7:
        dataoutputstream.writeInt(2);
        dataoutputstream.writeUTF(s);
        dataoutputstream.writeLong(((ak)obj).a.getTime());
        byte abyte0[] = ((ak)obj).b.getEncoded();
        dataoutputstream.writeUTF(((ak)obj).b.getType());
        dataoutputstream.writeInt(abyte0.length);
        dataoutputstream.write(abyte0);
          goto _L4
        Exception exception;
        exception;
        ObjectOutputStream objectoutputstream = objectoutputstream1;
_L13:
        if (objectoutputstream == null) goto _L10; else goto _L9
_L9:
        objectoutputstream.close();
_L12:
        throw exception;
_L8:
        ObjectOutputStream objectoutputstream2;
        dataoutputstream.writeInt(3);
        dataoutputstream.writeUTF(s);
        dataoutputstream.writeLong(((aj)obj).a.getTime());
        objectoutputstream2 = new ObjectOutputStream(dataoutputstream);
        objectoutputstream2.writeObject(((aj)obj).b);
        objectoutputstream1 = objectoutputstream2;
          goto _L4
_L2:
        dataoutputstream.write(messagedigest.digest());
        dataoutputstream.flush();
        if (objectoutputstream1 == null)
        {
            break MISSING_BLOCK_LABEL_467;
        }
        objectoutputstream1.close();
_L11:
        hashtable;
        JVM INSTR monitorexit ;
        return;
        dataoutputstream.close();
        if (true) goto _L11; else goto _L10
_L10:
        dataoutputstream.close();
          goto _L12
        exception;
        objectoutputstream = null;
          goto _L13
        exception;
        objectoutputstream = objectoutputstream2;
          goto _L13
    }

    private class ak
    {

        Date a;
        Certificate b;

        private ak()
        {
        }

        ak(_cls1 _pcls1)
        {
            this();
        }
    }


    private class ai
    {

        Date a;
        byte b[];
        Certificate c[];

        private ai()
        {
        }

        ai(_cls1 _pcls1)
        {
            this();
        }
    }


    private class aj
    {

        Date a;
        SealedObject b;

        private aj()
        {
        }

        aj(_cls1 _pcls1)
        {
            this();
        }
    }

}
