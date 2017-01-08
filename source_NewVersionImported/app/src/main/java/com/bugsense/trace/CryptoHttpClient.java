// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bugsense.trace;

import a.a.a.a;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.security.KeyStore;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.SingleClientConnManager;

// Referenced classes of package com.bugsense.trace:
//            G, BugSenseHandler

public class CryptoHttpClient extends DefaultHttpClient
{

    protected static final int ANALYTICS = 0;
    private static final String BASE64KEYANALYTICS = "AAAAAQAAABROxuBB/aUFmT3yact6TK5IOds4eQAABIABAAVteWtleQAAATltDpSyAAAAAAAFWC41MDkAAAMgMIIDHDCCAoWgAwIBAgIJAJMoXqN3LTQpMA0GCSqGSIb3DQEBBQUAMIGmMQswCQYDVQQGEwJVUzELMAkGA1UECAwCREUxETAPBgNVBAcMCERlbGF3YXJlMRYwFAYDVQQKDA1CdWdTZW5zZSBJbmMuMR4wHAYDVQQLDBVDZXJ0aWZpY2F0ZSBBdXRob3JpdHkxHjAcBgNVBAMMFUNlcnRpZmljYXRlIEF1dGhvcml0eTEfMB0GCSqGSIb3DQEJARYQb3BzQGJ1Z3NlbnNlLmNvbTAeFw0xMjA4MjcxNTU4MzVaFw0yMjA4MjUxNTU4MzVaMIGmMQswCQYDVQQGEwJVUzELMAkGA1UECAwCREUxETAPBgNVBAcMCERlbGF3YXJlMRYwFAYDVQQKDA1CdWdTZW5zZSBJbmMuMR4wHAYDVQQLDBVDZXJ0aWZpY2F0ZSBBdXRob3JpdHkxHjAcBgNVBAMMFUNlcnRpZmljYXRlIEF1dGhvcml0eTEfMB0GCSqGSIb3DQEJARYQb3BzQGJ1Z3NlbnNlLmNvbTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEAtKnp4mKe+5iOpV7BfiPWz/4KWjwLrQG2V89fmS8iJ2o63yjMgBYyRKgoHEp9h4TIwzmmTrZw63Q5wE0DnUQwMB+oNCAWCxzZxfGd9dz/omxFvbL1SiqTg7jNjjkzR6JVN3EmjY+CU742DTTKsa6eFTyaRfcexCj1gW+HHSef5q0CAwEAAaNQME4wHQYDVR0OBBYEFL6lHUJktOncX8C7umbgoombEmkGMB8GA1UdIwQYMBaAFL6lHUJktOncX8C7umbgoombEmkGMAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEFBQADgYEABKsEXB7Rn8nz5qgNhOHZtt/bTiA31PyT73sEVQftEOIwOY1CEVC8I6iGn/tBhyeIDpQOVUpTftlaX3UtBeSPzzfnv7a+eZFIdcsgCtSZJ3DpZiY0Fkk4MgbueQEMed1wxl7mfgWGC/fgyZNpw33VuTpSYIFx1FGw9JnBxWJCW9oAKo+JAbCJoSyLOAs15lw1qAknCtI=";
    private static final String BASE64KEYERRORS = "AAAAAQAAABTqE8O13A7h+0EkKxWZwl/MrC5GHgAABYgBAAVteWtleQAAATmbH+bhAAAAAAAFWC41MDkAAAReMIIEWjCCA0KgAwIBAgILBAAAAAABL07hQUMwDQYJKoZIhvcNAQEFBQAwVzELMAkGA1UEBhMCQkUxGTAXBgNVBAoTEEdsb2JhbFNpZ24gbnYtc2ExEDAOBgNVBAsTB1Jvb3QgQ0ExGzAZBgNVBAMTEkdsb2JhbFNpZ24gUm9vdCBDQTAeFw0xMTA0MTMxMDAwMDBaFw0yMjA0MTMxMDAwMDBaMFcxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMS0wKwYDVQQDEyRHbG9iYWxTaWduIERvbWFpbiBWYWxpZGF0aW9uIENBIC0gRzIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCxo83A3zNAJuveWteUZtQBY8wzRIng4rjCRw2PrWmGHKhzQgvxcvstrLURcoMi9lbnLsVncZ0AHDK84+0uCEWp5vrdyIyDBcFvS9AmSgv2G0XATX6TvA0nhO0wo+nGJibdLR/Yi8POGdBb/Aif5NjiNeSgaKb2DaN0YEKyl4IkjkGk8i5eto6nbtlsfw07JDVq0KtbaveXAgA/UaanbnPKdw12fJu2MBoanPcfKHsOi0cf538FjMbJyLvP6dx6QS6hhtrUObLiE0CmqDr6D1MeT+xumAkbypp3s1WFhekuFrWdXlTxSnpsObpuFwY0s7JC4ffznJoLEUTeaniOsRNPAgMBAAGjggElMIIBITAOBgNVHQ8BAf8EBAMCAQYwEgYDVR0TAQH/BAgwBgEB/wIBADAdBgNVHQ4EFgQUlq36sFu5g2QqdsIcimnaQtz+/SgwRwYDVR0gBEAwPjA8BgRVHSAAMDQwMgYIKwYBBQUHAgEWJmh0dHBzOi8vd3d3Lmdsb2JhbHNpZ24uY29tL3JlcG9zaXRvcnkvMDMGA1UdHwQsMCowKKAmoCSGImh0dHA6Ly9jcmwuZ2xvYmFsc2lnbi5uZXQvcm9vdC5jcmwwPQYIKwYBBQUHAQEEMTAvMC0GCCsGAQUFBzABhiFodHRwOi8vb2NzcC5nbG9iYWxzaWduLmNvbS9yb290cjEwHwYDVR0jBBgwFoAUYHtmGkUNl8qJUC99BM00qP/8/UswDQYJKoZIhvcNAQEFBQADggEBADrn/K6vBUOAJ3VBX6jwKI8fj4N+sri6rnUxJ4il5blOBEPSregTAKPbGQEwnmw8Un9c3qtnw4QEVFGZnmMvvdW3wNXaAw5J0+Gzkk/fkk59riJqzti8/Hyua7aK6kVikBHTC3GnXgYi/0046rk6bs1nGgJ/S/O/DnlvvtUpMllZHZYIm3CP9x5cRntO0J20U8gSAhsNuzLrWVO5PhtWjRXI8UI/d/4f5W2eZh+r2rKDV7QMItKGvNoy18DtcIV8k6rwl9w5EdLYieuNkKO2UCXLbNmmw2/7iFS45JJwh855O/DeNr8DBAA9+e+eqWek9IY+I5e4KnHi7f5piGe/JlwA1dUF+2pp1as1qpadDzN/FNFE+2Q=";
    protected static final int ERRORS = 1;
    int KEY;

    public CryptoHttpClient(int i)
    {
        KEY = 0;
        KEY = i;
    }

    private SSLSocketFactory newSslSocketFactory()
    {
        String s;
        byte abyte0[];
        KeyStore keystore;
        ByteArrayInputStream bytearrayinputstream;
        SSLSocketFactory sslsocketfactory;
        if (KEY == 0)
        {
            s = "AAAAAQAAABROxuBB/aUFmT3yact6TK5IOds4eQAABIABAAVteWtleQAAATltDpSyAAAAAAAFWC41MDkAAAMgMIIDHDCCAoWgAwIBAgIJAJMoXqN3LTQpMA0GCSqGSIb3DQEBBQUAMIGmMQswCQYDVQQGEwJVUzELMAkGA1UECAwCREUxETAPBgNVBAcMCERlbGF3YXJlMRYwFAYDVQQKDA1CdWdTZW5zZSBJbmMuMR4wHAYDVQQLDBVDZXJ0aWZpY2F0ZSBBdXRob3JpdHkxHjAcBgNVBAMMFUNlcnRpZmljYXRlIEF1dGhvcml0eTEfMB0GCSqGSIb3DQEJARYQb3BzQGJ1Z3NlbnNlLmNvbTAeFw0xMjA4MjcxNTU4MzVaFw0yMjA4MjUxNTU4MzVaMIGmMQswCQYDVQQGEwJVUzELMAkGA1UECAwCREUxETAPBgNVBAcMCERlbGF3YXJlMRYwFAYDVQQKDA1CdWdTZW5zZSBJbmMuMR4wHAYDVQQLDBVDZXJ0aWZpY2F0ZSBBdXRob3JpdHkxHjAcBgNVBAMMFUNlcnRpZmljYXRlIEF1dGhvcml0eTEfMB0GCSqGSIb3DQEJARYQb3BzQGJ1Z3NlbnNlLmNvbTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEAtKnp4mKe+5iOpV7BfiPWz/4KWjwLrQG2V89fmS8iJ2o63yjMgBYyRKgoHEp9h4TIwzmmTrZw63Q5wE0DnUQwMB+oNCAWCxzZxfGd9dz/omxFvbL1SiqTg7jNjjkzR6JVN3EmjY+CU742DTTKsa6eFTyaRfcexCj1gW+HHSef5q0CAwEAAaNQME4wHQYDVR0OBBYEFL6lHUJktOncX8C7umbgoombEmkGMB8GA1UdIwQYMBaAFL6lHUJktOncX8C7umbgoombEmkGMAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEFBQADgYEABKsEXB7Rn8nz5qgNhOHZtt/bTiA31PyT73sEVQftEOIwOY1CEVC8I6iGn/tBhyeIDpQOVUpTftlaX3UtBeSPzzfnv7a+eZFIdcsgCtSZJ3DpZiY0Fkk4MgbueQEMed1wxl7mfgWGC/fgyZNpw33VuTpSYIFx1FGw9JnBxWJCW9oAKo+JAbCJoSyLOAs15lw1qAknCtI=";
        } else
        {
            s = "AAAAAQAAABTqE8O13A7h+0EkKxWZwl/MrC5GHgAABYgBAAVteWtleQAAATmbH+bhAAAAAAAFWC41MDkAAAReMIIEWjCCA0KgAwIBAgILBAAAAAABL07hQUMwDQYJKoZIhvcNAQEFBQAwVzELMAkGA1UEBhMCQkUxGTAXBgNVBAoTEEdsb2JhbFNpZ24gbnYtc2ExEDAOBgNVBAsTB1Jvb3QgQ0ExGzAZBgNVBAMTEkdsb2JhbFNpZ24gUm9vdCBDQTAeFw0xMTA0MTMxMDAwMDBaFw0yMjA0MTMxMDAwMDBaMFcxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMS0wKwYDVQQDEyRHbG9iYWxTaWduIERvbWFpbiBWYWxpZGF0aW9uIENBIC0gRzIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCxo83A3zNAJuveWteUZtQBY8wzRIng4rjCRw2PrWmGHKhzQgvxcvstrLURcoMi9lbnLsVncZ0AHDK84+0uCEWp5vrdyIyDBcFvS9AmSgv2G0XATX6TvA0nhO0wo+nGJibdLR/Yi8POGdBb/Aif5NjiNeSgaKb2DaN0YEKyl4IkjkGk8i5eto6nbtlsfw07JDVq0KtbaveXAgA/UaanbnPKdw12fJu2MBoanPcfKHsOi0cf538FjMbJyLvP6dx6QS6hhtrUObLiE0CmqDr6D1MeT+xumAkbypp3s1WFhekuFrWdXlTxSnpsObpuFwY0s7JC4ffznJoLEUTeaniOsRNPAgMBAAGjggElMIIBITAOBgNVHQ8BAf8EBAMCAQYwEgYDVR0TAQH/BAgwBgEB/wIBADAdBgNVHQ4EFgQUlq36sFu5g2QqdsIcimnaQtz+/SgwRwYDVR0gBEAwPjA8BgRVHSAAMDQwMgYIKwYBBQUHAgEWJmh0dHBzOi8vd3d3Lmdsb2JhbHNpZ24uY29tL3JlcG9zaXRvcnkvMDMGA1UdHwQsMCowKKAmoCSGImh0dHA6Ly9jcmwuZ2xvYmFsc2lnbi5uZXQvcm9vdC5jcmwwPQYIKwYBBQUHAQEEMTAvMC0GCCsGAQUFBzABhiFodHRwOi8vb2NzcC5nbG9iYWxzaWduLmNvbS9yb290cjEwHwYDVR0jBBgwFoAUYHtmGkUNl8qJUC99BM00qP/8/UswDQYJKoZIhvcNAQEFBQADggEBADrn/K6vBUOAJ3VBX6jwKI8fj4N+sri6rnUxJ4il5blOBEPSregTAKPbGQEwnmw8Un9c3qtnw4QEVFGZnmMvvdW3wNXaAw5J0+Gzkk/fkk59riJqzti8/Hyua7aK6kVikBHTC3GnXgYi/0046rk6bs1nGgJ/S/O/DnlvvtUpMllZHZYIm3CP9x5cRntO0J20U8gSAhsNuzLrWVO5PhtWjRXI8UI/d/4f5W2eZh+r2rKDV7QMItKGvNoy18DtcIV8k6rwl9w5EdLYieuNkKO2UCXLbNmmw2/7iFS45JJwh855O/DeNr8DBAA9+e+eqWek9IY+I5e4KnHi7f5piGe/JlwA1dUF+2pp1as1qpadDzN/FNFE+2Q=";
        }
        abyte0 = a.a(s);
        Exception exception1;
        try
        {
            keystore = KeyStore.getInstance("BKS");
            bytearrayinputstream = new ByteArrayInputStream(abyte0);
        }
        catch (Exception exception)
        {
            G.TAG;
            (new StringBuilder("Problem in SSL: ")).append(exception.getMessage());
            if (BugSenseHandler.I_WANT_TO_DEBUG)
            {
                exception.printStackTrace();
            }
            throw new AssertionError(exception);
        }
        keystore.load(bytearrayinputstream, "secret24".toCharArray());
        bytearrayinputstream.close();
        sslsocketfactory = new SSLSocketFactory(keystore);
        sslsocketfactory.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
        return sslsocketfactory;
        exception1;
        bytearrayinputstream.close();
        throw exception1;
    }

    protected ClientConnectionManager createClientConnectionManager()
    {
        SchemeRegistry schemeregistry = new SchemeRegistry();
        schemeregistry.register(new Scheme("https", newSslSocketFactory(), 443));
        return new SingleClientConnManager(getParams(), schemeregistry);
    }
}
