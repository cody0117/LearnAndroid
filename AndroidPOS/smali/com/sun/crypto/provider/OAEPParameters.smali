.class public final Lcom/sun/crypto/provider/OAEPParameters;
.super Ljava/security/AlgorithmParametersSpi;
.source "ProGuard"


# static fields
.field private static d:Lsun/security/util/ObjectIdentifier;

.field private static e:Lsun/security/util/ObjectIdentifier;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/security/spec/MGF1ParameterSpec;

.field private c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lsun/security/util/ObjectIdentifier;-><init>([I)V

    sput-object v0, Lcom/sun/crypto/provider/OAEPParameters;->d:Lsun/security/util/ObjectIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lsun/security/util/ObjectIdentifier;-><init>([I)V

    sput-object v0, Lcom/sun/crypto/provider/OAEPParameters;->e:Lsun/security/util/ObjectIdentifier;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sput-object v2, Lcom/sun/crypto/provider/OAEPParameters;->d:Lsun/security/util/ObjectIdentifier;

    goto :goto_0

    :catch_1
    move-exception v0

    sput-object v2, Lcom/sun/crypto/provider/OAEPParameters;->e:Lsun/security/util/ObjectIdentifier;

    goto :goto_1

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x48t 0x3t 0x0t 0x0t
        0x8dt 0xbbt 0x1t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x48t 0x3t 0x0t 0x0t
        0x8dt 0xbbt 0x1t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "SHA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "SHA-1"

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "SHA256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "SHA-256"

    goto :goto_0

    :cond_2
    const-string v0, "SHA384"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "SHA-384"

    goto :goto_0

    :cond_3
    const-string v0, "SHA512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SHA-512"

    goto :goto_0
.end method


# virtual methods
.method protected final engineGetEncoded()[B
    .locals 6

    const/16 v5, 0x30

    const/16 v4, -0x80

    const/4 v3, 0x1

    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/sun/crypto/provider/OAEPParameters;->a:Ljava/lang/String;

    invoke-static {v1}, Lsun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v1, v2}, Lsun/security/x509/AlgorithmId;->derEncode(Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    invoke-static {v4, v3, v1}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v1

    invoke-virtual {v0, v1, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    sget-object v2, Lcom/sun/crypto/provider/OAEPParameters;->d:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    :try_start_1
    iget-object v2, p0, Lcom/sun/crypto/provider/OAEPParameters;->b:Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    invoke-virtual {v2, v1}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v2, v5, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    invoke-static {v4, v3, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v1

    invoke-virtual {v0, v1, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    sget-object v2, Lcom/sun/crypto/provider/OAEPParameters;->e:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    iget-object v2, p0, Lcom/sun/crypto/provider/OAEPParameters;->c:[B

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v2, v5, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    const/4 v1, 0x2

    invoke-static {v4, v3, v1}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v1

    invoke-virtual {v0, v1, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v1, v5, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AlgorithmId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/crypto/provider/OAEPParameters;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " impl not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AlgorithmId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/crypto/provider/OAEPParameters;->b:Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " impl not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineGetEncoded(Ljava/lang/String;)[B
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only support ASN.1 format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/crypto/provider/OAEPParameters;->engineGetEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method protected final engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 6

    const-class v0, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/crypto/spec/OAEPParameterSpec;

    iget-object v1, p0, Lcom/sun/crypto/provider/OAEPParameters;->a:Ljava/lang/String;

    const-string v2, "MGF1"

    iget-object v3, p0, Lcom/sun/crypto/provider/OAEPParameters;->b:Ljava/security/spec/MGF1ParameterSpec;

    new-instance v4, Ljavax/crypto/spec/PSource$PSpecified;

    iget-object v5, p0, Lcom/sun/crypto/provider/OAEPParameters;->c:[B

    invoke-direct {v4, v5}, Ljavax/crypto/spec/PSource$PSpecified;-><init>([B)V

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "Inappropriate parameter specification"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 4

    instance-of v0, p1, Ljavax/crypto/spec/OAEPParameterSpec;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "Inappropriate parameter specification"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/crypto/provider/OAEPParameters;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MGF1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported mgf "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; MGF1 only"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    instance-of v1, v0, Ljava/security/spec/MGF1ParameterSpec;

    if-nez v1, :cond_2

    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "Inappropriate mgf parameters; non-null MGF1ParameterSpec only"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    check-cast v0, Ljava/security/spec/MGF1ParameterSpec;

    iput-object v0, p0, Lcom/sun/crypto/provider/OAEPParameters;->b:Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/PSource;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PSpecified"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    check-cast v0, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v0}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/crypto/provider/OAEPParameters;->c:[B

    return-void

    :cond_3
    new-instance v1, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported pSource "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/crypto/spec/PSource;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; PSpecified only"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final engineInit([B)V
    .locals 6

    const/4 v1, 0x0

    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-direct {v0, p1}, Lsun/security/util/DerInputStream;-><init>([B)V

    const-string v2, "SHA-1"

    iput-object v2, p0, Lcom/sun/crypto/provider/OAEPParameters;->a:Ljava/lang/String;

    sget-object v2, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    iput-object v2, p0, Lcom/sun/crypto/provider/OAEPParameters;->b:Ljava/security/spec/MGF1ParameterSpec;

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/sun/crypto/provider/OAEPParameters;->c:[B

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_a

    aget-object v3, v2, v0

    invoke-virtual {v3, v1}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/crypto/provider/OAEPParameters;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/crypto/provider/OAEPParameters;->a:Ljava/lang/String;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v3, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/x509/AlgorithmId;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v4

    sget-object v5, Lcom/sun/crypto/provider/OAEPParameters;->d:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v4, v5}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Only MGF1 mgf is supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v4, Lsun/security/util/DerValue;

    invoke-virtual {v3}, Lsun/security/x509/AlgorithmId;->getEncodedParams()[B

    move-result-object v3

    invoke-direct {v4, v3}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-static {v4}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/crypto/provider/OAEPParameters;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SHA-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    iput-object v3, p0, Lcom/sun/crypto/provider/OAEPParameters;->b:Ljava/security/spec/MGF1ParameterSpec;

    goto :goto_1

    :cond_3
    const-string v4, "SHA-256"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    iput-object v3, p0, Lcom/sun/crypto/provider/OAEPParameters;->b:Ljava/security/spec/MGF1ParameterSpec;

    goto :goto_1

    :cond_4
    const-string v4, "SHA-384"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA384:Ljava/security/spec/MGF1ParameterSpec;

    iput-object v3, p0, Lcom/sun/crypto/provider/OAEPParameters;->b:Ljava/security/spec/MGF1ParameterSpec;

    goto :goto_1

    :cond_5
    const-string v4, "SHA-512"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    iput-object v3, p0, Lcom/sun/crypto/provider/OAEPParameters;->b:Ljava/security/spec/MGF1ParameterSpec;

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unrecognized message digest algorithm"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v3, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/x509/AlgorithmId;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v4

    sget-object v5, Lcom/sun/crypto/provider/OAEPParameters;->e:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v4, v5}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Wrong OID for pSpecified"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v4, Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/x509/AlgorithmId;->getEncodedParams()[B

    move-result-object v3

    invoke-direct {v4, v3}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v3

    iput-object v3, p0, Lcom/sun/crypto/provider/OAEPParameters;->c:[B

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Extra data for pSpecified"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoded OAEPParameters"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    return-void
.end method

.method protected final engineInit([BLjava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "ASN.1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only support ASN.1 format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/crypto/provider/OAEPParameters;->engineInit([B)V

    return-void
.end method

.method protected final engineToString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "MD: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/crypto/provider/OAEPParameters;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "MGF: MGF1"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/crypto/provider/OAEPParameters;->b:Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "PSource: PSpecified "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/crypto/provider/OAEPParameters;->c:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/sun/crypto/provider/OAEPParameters;->c:[B

    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-static {v0}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
