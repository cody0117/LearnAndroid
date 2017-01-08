.class public final Lcom/sun/crypto/provider/SunJCE;
.super Ljava/security/Provider;
.source "ProGuard"


# static fields
.field private static final a:Ljava/lang/String; = "SunJCE Provider (implements RSA, DES, Triple DES, AES, Blowfish, ARCFOUR, RC2, PBE, Diffie-Hellman, HMAC)"

.field private static final b:Ljava/lang/String; = "1.2.840.113549.1.12.1.6"

.field private static final c:Ljava/lang/String; = "1.2.840.113549.1.12.1.3"

.field private static final d:Ljava/lang/String; = "1.2.840.113549.1.5.3"

.field private static final e:Ljava/lang/String; = "1.2.840.113549.1.5.12"

.field private static final f:Ljava/lang/String; = "1.2.840.113549.1.3.1"

.field static final g:Z = false

.field static final h:Ljava/security/SecureRandom; = null

.field private static i:Z = false

.field private static final serialVersionUID:J = 0x5e8ae38e90ba8df1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/sun/crypto/provider/SunJCE;->h:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/crypto/provider/SunJCE;->i:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "SunJCE"

    const-wide v1, 0x3ff999999999999aL

    const-string v3, "SunJCE Provider (implements RSA, DES, Triple DES, AES, Blowfish, ARCFOUR, RC2, PBE, Diffie-Hellman, HMAC)"

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    new-instance v0, Lcom/sun/crypto/provider/SunJCE$1;

    invoke-direct {v0, p0}, Lcom/sun/crypto/provider/SunJCE$1;-><init>(Lcom/sun/crypto/provider/SunJCE;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method static a(Ljava/lang/Class;)V
    .locals 2

    invoke-static {p0}, Lcom/sun/crypto/provider/SunJCE;->b(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The SunJCE provider may have been tampered."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static final b(Ljava/lang/Class;)Z
    .locals 1

    sget-boolean v0, Lcom/sun/crypto/provider/SunJCE;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/sun/crypto/provider/SunJCE;->c(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0
.end method

.method private static final declared-synchronized c(Ljava/lang/Class;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-class v4, Lcom/sun/crypto/provider/SunJCE;

    monitor-enter v4

    :try_start_0
    sget-boolean v0, Lcom/sun/crypto/provider/SunJCE;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    monitor-exit v4

    return v0

    :cond_0
    :try_start_1
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    const-string v1, "-----BEGIN CERTIFICATE-----\nMIICnTCCAlugAwIBAgICAh8wCwYHKoZIzjgEAwUAMIGQMQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExEjAQBgNVBAcTCVBhbG8gQWx0bzEdMBsGA1UEChMUU3VuIE1pY3Jvc3lzdGVtcyBJbmMxIzAhBgNVBAsTGkphdmEgU29mdHdhcmUgQ29kZSBTaWduaW5nMRwwGgYDVQQDExNKQ0UgQ29kZSBTaWduaW5nIENBMB4XDTA1MTEyMzIyNDk0MVoXDTEwMTEyNzIyNDk0MVowYzEdMBsGA1UEChMUU3VuIE1pY3Jvc3lzdGVtcyBJbmMxIzAhBgNVBAsTGkphdmEgU29mdHdhcmUgQ29kZSBTaWduaW5nMR0wGwYDVQQDExRTdW4gTWljcm9zeXN0ZW1zIEluYzCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA16bKo6tC3OHFDNfPXLKXMCMtIyeubNnsEtlvrH34HhfF+ZmpSliLCvQ15ms705vy4XgZUbZ3mgSOlLRMAGRo6596ePhc+0Z6yeKhbb3LZ8iz97ZIptkHGOshj9cfcSRPYmorUug9OsybMdIfQXazxT9mZJ9Yx5IDw6xak7kVbpUCAwEAAaOBiDCBhTARBglghkgBhvhCAQEEBAMCBBAwDgYDVR0PAQH/BAQDAgXgMB0GA1UdDgQWBBRI319jCbhc9DWJVltXgfrMybHNjzAfBgNVHSMEGDAWgBRl4vSGydNO8JFOWKJq9dh4WprBpjAgBgNVHREEGTAXgRV5dS1jaGluZy5wZW5nQHN1bi5jb20wCwYHKoZIzjgEAwUAAy8AMCwCFFBFmED9s3OoN9rbXfQV3+brJPW/AhQr+Wq1MlubAvnfjrlqeksh0QaDAQ==\n-----END CERTIFICATE-----"

    const-string v5, "UTF8"

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v1, Lcom/sun/crypto/provider/SunJCE$2;

    invoke-direct {v1, p0}, Lcom/sun/crypto/provider/SunJCE$2;-><init>(Ljava/lang/Class;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    if-nez v1, :cond_1

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/sun/crypto/provider/SunJCE_b;

    invoke-direct {v5, v1}, Lcom/sun/crypto/provider/SunJCE_b;-><init>(Ljava/net/URL;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v5, v0}, Lcom/sun/crypto/provider/SunJCE_b;->a(Ljava/security/cert/X509Certificate;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v0, 0x1

    :try_start_4
    sput-boolean v0, Lcom/sun/crypto/provider/SunJCE;->i:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method
