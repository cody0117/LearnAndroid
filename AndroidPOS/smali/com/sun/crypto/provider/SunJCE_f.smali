.class final Lcom/sun/crypto/provider/SunJCE_f;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final k:I = 0x0

.field private static final l:I = 0x1

.field private static final m:I = 0x2

.field private static final n:I = 0x3

.field private static final o:I = 0x4

.field private static final p:I = 0x5

.field private static final q:I = 0x6


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Lcom/sun/crypto/provider/SunJCE_j;

.field private h:Lcom/sun/crypto/provider/SunJCE_h;

.field private i:I

.field private j:Z


# direct methods
.method constructor <init>(Lcom/sun/crypto/provider/SunJCE_e;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->a:[B

    iput v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->b:I

    iput v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->c:I

    iput v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->d:I

    iput v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->e:I

    iput v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->f:I

    iput-object v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->g:Lcom/sun/crypto/provider/SunJCE_j;

    iput-object v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->h:Lcom/sun/crypto/provider/SunJCE_h;

    iput v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->i:I

    iput-boolean v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->j:Z

    iput p2, p0, Lcom/sun/crypto/provider/SunJCE_f;->b:I

    iput p2, p0, Lcom/sun/crypto/provider/SunJCE_f;->c:I

    iput p2, p0, Lcom/sun/crypto/provider/SunJCE_f;->f:I

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->b:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->a:[B

    new-instance v0, Lcom/sun/crypto/provider/SunJCE_g;

    invoke-direct {v0, p1}, Lcom/sun/crypto/provider/SunJCE_g;-><init>(Lcom/sun/crypto/provider/SunJCE_e;)V

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->h:Lcom/sun/crypto/provider/SunJCE_h;

    new-instance v0, Lcom/sun/crypto/provider/SunJCE_i;

    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->b:I

    invoke-direct {v0, v1}, Lcom/sun/crypto/provider/SunJCE_i;-><init>(I)V

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->g:Lcom/sun/crypto/provider/SunJCE_j;

    return-void
.end method

.method private static a(Ljava/lang/String;II)I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_2

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    shr-int/lit8 v0, v1, 0x3

    rem-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    if-le v0, p2, :cond_1

    :cond_0
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid algorithm mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Algorithm mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move p2, v0

    :cond_2
    return p2
.end method

.method private a([BI[BII)I
    .locals 6

    if-eqz p1, :cond_0

    if-nez p5, :cond_1

    :cond_0
    const/4 p5, 0x0

    :goto_0
    return p5

    :cond_1
    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->i:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->c:I

    rem-int v0, p5, v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->i:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->g:Lcom/sun/crypto/provider/SunJCE_j;

    if-eqz v0, :cond_2

    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input length (with padding) not multiple of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_f;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input length not multiple of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_f;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-boolean v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->j:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->h:Lcom/sun/crypto/provider/SunJCE_h;

    move-object v1, p1

    move v2, p2

    move v3, p5

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/crypto/provider/SunJCE_h;->d([BII[BI)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->h:Lcom/sun/crypto/provider/SunJCE_h;

    move-object v1, p1

    move v2, p2

    move v3, p5

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/crypto/provider/SunJCE_h;->c([BII[BI)V

    goto :goto_0
.end method

.method static a(Ljava/security/Key;)[B
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "No key given"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "RAW"

    invoke-interface {p0}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Wrong format: RAW bytes needed"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "RAW key bytes missing"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v0
.end method


# virtual methods
.method final a(I)I
    .locals 3

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->d:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->g:Lcom/sun/crypto/provider/SunJCE_j;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->j:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->c:I

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_f;->b:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->f:I

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->f:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->b:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_f;->f:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_f;->b:I

    rem-int/2addr v0, v2

    sub-int v0, v1, v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->g:Lcom/sun/crypto/provider/SunJCE_j;

    invoke-interface {v1, v0}, Lcom/sun/crypto/provider/SunJCE_j;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method final a([BII[BI)I
    .locals 8

    const/4 v2, 0x0

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->d:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->e:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->g:Lcom/sun/crypto/provider/SunJCE_j;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->j:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->b:I

    sub-int/2addr v0, v1

    :cond_0
    if-lez v0, :cond_2

    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->c:I

    rem-int v1, v0, v1

    sub-int v3, v0, v1

    :goto_0
    if-eqz p4, :cond_1

    array-length v0, p4

    sub-int/2addr v0, p5

    if-ge v0, v3, :cond_3

    :cond_1
    new-instance v0, Ljavax/crypto/ShortBufferException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Output buffer must be (at least) "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v3, v2

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_7

    new-array v1, v3, [B

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->d:I

    sub-int v4, v3, v0

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->d:I

    if-gez v4, :cond_b

    move v6, v3

    move v7, v2

    :goto_1
    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->d:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->a:[B

    invoke-static {v0, v2, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    if-lez v7, :cond_5

    invoke-static {p1, p2, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget-boolean v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->j:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->h:Lcom/sun/crypto/provider/SunJCE_h;

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/crypto/provider/SunJCE_h;->b([BII[BI)V

    :goto_2
    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->c:I

    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->b:I

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->f:I

    if-ge v3, v0, :cond_a

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->f:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->f:I

    :cond_6
    :goto_3
    sub-int/2addr p3, v7

    add-int/2addr p2, v7

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->d:I

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->d:I

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->d:I

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->a:[B

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->a:[B

    iget v4, p0, Lcom/sun/crypto/provider/SunJCE_f;->d:I

    invoke-static {v0, v6, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    if-lez p3, :cond_8

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->a:[B

    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->d:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->d:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->d:I

    return v3

    :cond_9
    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->h:Lcom/sun/crypto/provider/SunJCE_h;

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/crypto/provider/SunJCE_h;->a([BII[BI)V

    goto :goto_2

    :cond_a
    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->b:I

    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->f:I

    sub-int v1, v3, v1

    iget v4, p0, Lcom/sun/crypto/provider/SunJCE_f;->b:I

    rem-int/2addr v1, v4

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->f:I

    goto :goto_3

    :cond_b
    move v6, v0

    move v7, v4

    goto :goto_1
.end method

.method final a([BLjava/lang/String;I)Ljava/security/Key;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/crypto/provider/SunJCE_f;->b([BII)[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/sun/crypto/provider/SunJCE_s;->a([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "The wrapped key is not padded correctly"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "The wrapped key does not have the correct length"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final a(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p3, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/sun/crypto/provider/SunJCE_f;->a(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Wrong parameter type: IV expected"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final a(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sun/crypto/provider/SunJCE_f;->a(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final a(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->j:Z

    invoke-static {p2}, Lcom/sun/crypto/provider/SunJCE_f;->a(Ljava/security/Key;)[B

    move-result-object v2

    if-nez p3, :cond_3

    const/4 v0, 0x0

    :cond_1
    iget v3, p0, Lcom/sun/crypto/provider/SunJCE_f;->i:I

    if-nez v3, :cond_7

    if-eqz v0, :cond_a

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "ECB mode cannot use IV"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    instance-of v0, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_5

    check-cast p3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v3, v0

    iget v4, p0, Lcom/sun/crypto/provider/SunJCE_f;->b:I

    if-eq v3, v4, :cond_1

    :cond_4
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong IV length: must be "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_f;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    instance-of v0, p3, Ljavax/crypto/spec/RC2ParameterSpec;

    if-eqz v0, :cond_6

    check-cast p3, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-virtual {p3}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v3, v0

    iget v4, p0, Lcom/sun/crypto/provider/SunJCE_f;->b:I

    if-eq v3, v4, :cond_1

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong IV length: must be "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_f;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Wrong parameter type: IV expected"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->j:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Parameters missing"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    if-nez p4, :cond_9

    sget-object p4, Lcom/sun/crypto/provider/SunJCE;->h:Ljava/security/SecureRandom;

    :cond_9
    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->b:I

    new-array v0, v0, [B

    invoke-virtual {p4, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    :cond_a
    iput v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->d:I

    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->b:I

    iput v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->f:I

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_f;->h:Lcom/sun/crypto/provider/SunJCE_h;

    iget-boolean v4, p0, Lcom/sun/crypto/provider/SunJCE_f;->j:Z

    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/sun/crypto/provider/SunJCE_h;->a(ZLjava/lang/String;[B[B)V

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x3

    if-nez p1, :cond_0

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "null mode"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ECB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->h:Lcom/sun/crypto/provider/SunJCE_h;

    invoke-virtual {v1}, Lcom/sun/crypto/provider/SunJCE_h;->e()Lcom/sun/crypto/provider/SunJCE_e;

    move-result-object v1

    const-string v2, "CBC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput v4, p0, Lcom/sun/crypto/provider/SunJCE_f;->i:I

    new-instance v0, Lcom/sun/crypto/provider/SunJCE_k;

    invoke-direct {v0, v1}, Lcom/sun/crypto/provider/SunJCE_k;-><init>(Lcom/sun/crypto/provider/SunJCE_e;)V

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->h:Lcom/sun/crypto/provider/SunJCE_h;

    goto :goto_0

    :cond_2
    const-string v2, "CTS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x6

    iput v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->i:I

    new-instance v0, Lcom/sun/crypto/provider/SunJCE_l;

    invoke-direct {v0, v1}, Lcom/sun/crypto/provider/SunJCE_l;-><init>(Lcom/sun/crypto/provider/SunJCE_e;)V

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->h:Lcom/sun/crypto/provider/SunJCE_h;

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->e:I

    iput-object v5, p0, Lcom/sun/crypto/provider/SunJCE_f;->g:Lcom/sun/crypto/provider/SunJCE_j;

    goto :goto_0

    :cond_3
    const-string v2, "CTR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x5

    iput v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->i:I

    new-instance v0, Lcom/sun/crypto/provider/SunJCE_m;

    invoke-direct {v0, v1}, Lcom/sun/crypto/provider/SunJCE_m;-><init>(Lcom/sun/crypto/provider/SunJCE_e;)V

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->h:Lcom/sun/crypto/provider/SunJCE_h;

    iput v4, p0, Lcom/sun/crypto/provider/SunJCE_f;->c:I

    iput-object v5, p0, Lcom/sun/crypto/provider/SunJCE_f;->g:Lcom/sun/crypto/provider/SunJCE_j;

    goto :goto_0

    :cond_4
    const-string v2, "CFB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x2

    iput v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->i:I

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->b:I

    invoke-static {p1, v3, v0}, Lcom/sun/crypto/provider/SunJCE_f;->a(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->c:I

    new-instance v0, Lcom/sun/crypto/provider/SunJCE_n;

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_f;->c:I

    invoke-direct {v0, v1, v2}, Lcom/sun/crypto/provider/SunJCE_n;-><init>(Lcom/sun/crypto/provider/SunJCE_e;I)V

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->h:Lcom/sun/crypto/provider/SunJCE_h;

    goto :goto_0

    :cond_5
    const-string v2, "OFB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iput v3, p0, Lcom/sun/crypto/provider/SunJCE_f;->i:I

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->b:I

    invoke-static {p1, v3, v0}, Lcom/sun/crypto/provider/SunJCE_f;->a(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->c:I

    new-instance v0, Lcom/sun/crypto/provider/SunJCE_o;

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_f;->c:I

    invoke-direct {v0, v1, v2}, Lcom/sun/crypto/provider/SunJCE_o;-><init>(Lcom/sun/crypto/provider/SunJCE_e;I)V

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->h:Lcom/sun/crypto/provider/SunJCE_h;

    goto/16 :goto_0

    :cond_6
    const-string v2, "PCBC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    iput v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->i:I

    new-instance v0, Lcom/sun/crypto/provider/SunJCE_p;

    invoke-direct {v0, v1}, Lcom/sun/crypto/provider/SunJCE_p;-><init>(Lcom/sun/crypto/provider/SunJCE_e;)V

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->h:Lcom/sun/crypto/provider/SunJCE_h;

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cipher mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final a()[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->h:Lcom/sun/crypto/provider/SunJCE_h;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/SunJCE_h;->g()[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method final a([BII)[B
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0, p3}, Lcom/sun/crypto/provider/SunJCE_f;->a(I)I

    move-result v0

    new-array v4, v0, [B

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/crypto/provider/SunJCE_f;->a([BII[BI)I

    move-result v1

    array-length v0, v4

    if-ne v1, v0, :cond_0

    :goto_0
    return-object v4

    :cond_0
    new-array v0, v1, [B
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    invoke-static {v4, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v6

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v4, v0

    goto :goto_0
.end method

.method final b([BII[BI)I
    .locals 10

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->d:I

    add-int v5, v0, p3

    const/4 v0, 0x0

    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->c:I

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_f;->b:I

    if-eq v1, v2, :cond_1

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->f:I

    if-ge v5, v0, :cond_0

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->f:I

    sub-int/2addr v0, v5

    move v3, v0

    :goto_0
    if-lez v3, :cond_2

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->b:I

    if-eq v3, v0, :cond_2

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->g:Lcom/sun/crypto/provider/SunJCE_j;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->j:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input length must be multiple of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_f;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when decrypting with padded cipher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->b:I

    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->f:I

    sub-int v1, v5, v1

    iget v2, p0, Lcom/sun/crypto/provider/SunJCE_f;->b:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    move v3, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->g:Lcom/sun/crypto/provider/SunJCE_j;

    if-eqz v1, :cond_14

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->g:Lcom/sun/crypto/provider/SunJCE_j;

    invoke-interface {v0, v5}, Lcom/sun/crypto/provider/SunJCE_j;->a(I)I

    move-result v0

    move v3, v0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->j:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->g:Lcom/sun/crypto/provider/SunJCE_j;

    if-eqz v0, :cond_13

    add-int v0, v5, v3

    move v6, v0

    :goto_1
    if-nez p4, :cond_3

    new-instance v0, Ljavax/crypto/ShortBufferException;

    const-string v1, "Output buffer is null"

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    array-length v0, p4

    sub-int/2addr v0, p5

    iget-boolean v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->j:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->g:Lcom/sun/crypto/provider/SunJCE_j;

    if-nez v1, :cond_5

    :cond_4
    if-lt v0, v6, :cond_6

    :cond_5
    iget-boolean v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->j:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->b:I

    sub-int v1, v6, v1

    if-ge v0, v1, :cond_7

    :cond_6
    new-instance v1, Ljavax/crypto/ShortBufferException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Output buffer too short: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes given, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes needed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->d:I

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->j:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->g:Lcom/sun/crypto/provider/SunJCE_j;

    if-eqz v1, :cond_12

    :cond_8
    const/4 v2, 0x0

    new-array v1, v6, [B

    iget v4, p0, Lcom/sun/crypto/provider/SunJCE_f;->d:I

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/sun/crypto/provider/SunJCE_f;->a:[B

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/sun/crypto/provider/SunJCE_f;->d:I

    invoke-static {v4, v7, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    if-eqz p3, :cond_a

    iget v4, p0, Lcom/sun/crypto/provider/SunJCE_f;->d:I

    invoke-static {p1, p2, v1, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    iget-boolean v4, p0, Lcom/sun/crypto/provider/SunJCE_f;->j:Z

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/sun/crypto/provider/SunJCE_f;->g:Lcom/sun/crypto/provider/SunJCE_j;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/sun/crypto/provider/SunJCE_f;->g:Lcom/sun/crypto/provider/SunJCE_j;

    invoke-interface {v4, v1, v5, v3}, Lcom/sun/crypto/provider/SunJCE_j;->a([BII)V

    :cond_b
    :goto_2
    iget-boolean v3, p0, Lcom/sun/crypto/provider/SunJCE_f;->j:Z

    if-eqz v3, :cond_f

    if-ge v0, v6, :cond_c

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->h:Lcom/sun/crypto/provider/SunJCE_h;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/SunJCE_h;->c()V

    :cond_c
    new-array v3, v5, [B

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sun/crypto/provider/SunJCE_f;->a([BI[BII)I

    move-result v0

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->g:Lcom/sun/crypto/provider/SunJCE_j;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->g:Lcom/sun/crypto/provider/SunJCE_j;

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2, v0}, Lcom/sun/crypto/provider/SunJCE_j;->b([BII)I

    move-result v0

    if-gez v0, :cond_d

    new-instance v0, Ljavax/crypto/BadPaddingException;

    const-string v1, "Given final block not properly padded"

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    array-length v1, p4

    sub-int/2addr v1, p5

    if-ge v1, v0, :cond_e

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->h:Lcom/sun/crypto/provider/SunJCE_h;

    invoke-virtual {v1}, Lcom/sun/crypto/provider/SunJCE_h;->d()V

    new-instance v1, Ljavax/crypto/ShortBufferException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Output buffer too short: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p4

    sub-int/2addr v3, p5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes given, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes needed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_10

    add-int v2, p5, v1

    aget-byte v4, v3, v1

    aput-byte v4, p4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_f
    move-object v0, p0

    move-object v3, p4

    move v4, p5

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sun/crypto/provider/SunJCE_f;->a([BI[BII)I

    move-result v0

    :cond_10
    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->d:I

    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->b:I

    iput v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->f:I

    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->i:I

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->h:Lcom/sun/crypto/provider/SunJCE_h;

    invoke-virtual {v1}, Lcom/sun/crypto/provider/SunJCE_h;->b()V

    :cond_11
    return v0

    :cond_12
    move v2, p2

    move-object v1, p1

    goto :goto_2

    :cond_13
    move v6, v5

    goto/16 :goto_1

    :cond_14
    move v3, v0

    goto/16 :goto_0
.end method

.method final b(Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-nez p1, :cond_0

    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    const-string v1, "null padding"

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "NoPadding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object v2, p0, Lcom/sun/crypto/provider/SunJCE_f;->g:Lcom/sun/crypto/provider/SunJCE_j;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->g:Lcom/sun/crypto/provider/SunJCE_j;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->i:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->i:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    :cond_2
    iput-object v2, p0, Lcom/sun/crypto/provider/SunJCE_f;->g:Lcom/sun/crypto/provider/SunJCE_j;

    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->i:I

    if-ne v0, v3, :cond_5

    const-string v0, "CTR"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mode must be used with NoPadding"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "ISO10126Padding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/sun/crypto/provider/SunJCE_q;

    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->b:I

    invoke-direct {v0, v1}, Lcom/sun/crypto/provider/SunJCE_q;-><init>(I)V

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->g:Lcom/sun/crypto/provider/SunJCE_j;

    goto :goto_0

    :cond_4
    const-string v0, "PKCS5Padding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string v0, "CTS"

    goto :goto_1

    :cond_6
    return-void
.end method

.method final b(Ljava/security/Key;)[B
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    :cond_0
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Cannot get an encoding of the key to be wrapped"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v1

    :goto_0
    return-object v0

    :cond_1
    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sun/crypto/provider/SunJCE_f;->b([BII)[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method final b([BII)[B
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0, p3}, Lcom/sun/crypto/provider/SunJCE_f;->a(I)I

    move-result v0

    new-array v4, v0, [B

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/crypto/provider/SunJCE_f;->b([BII[BI)I

    move-result v1

    array-length v0, v4

    if-ge v1, v0, :cond_1

    new-array v0, v1, [B
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    invoke-static {v4, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :cond_0
    move-object v4, v0

    :cond_1
    move-object v0, v4

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method final c(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_f;->i:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/sun/crypto/provider/SunJCE_f;->a()[B

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "RC2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_f;->h:Lcom/sun/crypto/provider/SunJCE_h;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/SunJCE_h;->e()Lcom/sun/crypto/provider/SunJCE_e;

    move-result-object v0

    check-cast v0, Lcom/sun/crypto/provider/SunJCE_r;

    new-instance v1, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/SunJCE_r;->b()I

    move-result v0

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I[B)V

    :goto_1
    :try_start_0
    const-string v0, "SunJCE"

    invoke-static {p1, v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "IvParameterSpec not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AlgorithmParameters implementation in SunJCE provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot find SunJCE provider"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
