.class abstract Lcom/sun/crypto/provider/PBEKeyFactory;
.super Ljavax/crypto/SecretKeyFactorySpi;
.source "ProGuard"


# static fields
.field private static b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/sun/crypto/provider/PBEKeyFactory;->b:Ljava/util/HashSet;

    const-string v1, "PBEWithMD5AndDES"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/crypto/provider/PBEKeyFactory;->b:Ljava/util/HashSet;

    const-string v1, "PBEWithSHA1AndDESede"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/crypto/provider/PBEKeyFactory;->b:Ljava/util/HashSet;

    const-string v1, "PBEWithSHA1AndRC2_40"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/crypto/provider/PBEKeyFactory;->b:Ljava/util/HashSet;

    const-string v1, "PBEWithMD5AndTripleDES"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljavax/crypto/SecretKeyFactorySpi;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/crypto/provider/SunJCE;->b(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The SunJCE provider may have been tampered."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/sun/crypto/provider/PBEKeyFactory;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/sun/crypto/provider/PBEKeyFactory$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/crypto/provider/PBEKeyFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 2

    instance-of v0, p1, Ljavax/crypto/spec/PBEKeySpec;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Invalid key spec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/sun/crypto/provider/PBEKey;

    check-cast p1, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v1, p0, Lcom/sun/crypto/provider/PBEKeyFactory;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/sun/crypto/provider/PBEKey;-><init>(Ljavax/crypto/spec/PBEKeySpec;Ljava/lang/String;)V

    return-object v0
.end method

.method protected engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 5

    const/4 v1, 0x0

    instance-of v0, p1, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sun/crypto/provider/PBEKeyFactory;->b:Ljava/util/HashSet;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RAW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    const-class v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    array-length v0, v2

    new-array v3, v0, [C

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-byte v4, v2, v0

    and-int/lit8 v4, v4, 0x7f

    int-to-char v4, v4

    aput-char v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v0, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    const/16 v4, 0x20

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([CC)V

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([BB)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Invalid key spec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Invalid key format/algorithm"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 4

    if-eqz p1, :cond_1

    :try_start_0
    sget-object v0, Lcom/sun/crypto/provider/PBEKeyFactory;->b:Ljava/util/HashSet;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RAW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/sun/crypto/provider/PBEKey;

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const-class v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p0, p1, v0}, Lcom/sun/crypto/provider/PBEKeyFactory;->engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p0, v0}, Lcom/sun/crypto/provider/PBEKeyFactory;->engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Invalid key format/algorithm"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot translate key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
