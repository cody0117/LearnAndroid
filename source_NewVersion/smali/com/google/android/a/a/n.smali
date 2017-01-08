.class final Lcom/google/android/a/a/n;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Lcom/google/android/a/a/p;

.field private final b:Lcom/google/android/a/a/m;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/android/a/a/b;


# direct methods
.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/a/a/n;->b:Lcom/google/android/a/a/m;

    invoke-interface {v0, p1}, Lcom/google/android/a/a/m;->a(I)V

    .line 217
    return-void
.end method

.method private a(ILcom/google/android/a/a/r;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/a/a/n;->a:Lcom/google/android/a/a/p;

    invoke-interface {v0, p1, p2}, Lcom/google/android/a/a/p;->a(ILcom/google/android/a/a/r;)V

    .line 208
    iget-object v0, p0, Lcom/google/android/a/a/n;->a:Lcom/google/android/a/a/p;

    invoke-interface {v0}, Lcom/google/android/a/a/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/google/android/a/a/n;->b:Lcom/google/android/a/a/m;

    invoke-interface {v0}, Lcom/google/android/a/a/m;->a()V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/google/android/a/a/n;->b:Lcom/google/android/a/a/m;

    invoke-interface {v0}, Lcom/google/android/a/a/m;->b()V

    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/a/a/n;->b:Lcom/google/android/a/a/m;

    invoke-interface {v0}, Lcom/google/android/a/a/m;->b()V

    .line 221
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/a/a/m;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/a/a/n;->b:Lcom/google/android/a/a/m;

    return-object v0
.end method

.method public final a(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0x123

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 88
    .line 90
    const/4 v0, 0x0

    .line 91
    if-eqz p2, :cond_0

    if-eq p2, v4, :cond_0

    .line 92
    if-ne p2, v5, :cond_9

    .line 95
    :cond_0
    :try_start_0
    const-string v0, "SHA1withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 97
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 99
    invoke-static {p4}, Lcom/google/android/a/a/a/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/google/android/a/a/n;->d()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/a/a/a/b; {:try_start_0 .. :try_end_0} :catch_3

    .line 194
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 106
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 108
    :catch_1
    move-exception v0

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/a/a/n;->a(I)V

    goto :goto_0

    .line 110
    :catch_2
    move-exception v0

    .line 111
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 113
    :catch_3
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/a/a/n;->d()V

    goto :goto_0

    .line 120
    :cond_1
    const/16 v0, 0x3a

    :try_start_1
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_2

    const-string v0, ""

    move-object v1, v0

    :goto_1
    const-string v0, "|"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    const/4 v3, 0x6

    if-ge v0, v3, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong number of fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4

    .line 122
    :catch_4
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/a/a/n;->d()V

    goto :goto_0

    .line 120
    :cond_2
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_3

    const-string v0, ""

    move-object p3, v1

    move-object v1, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object p3, v1

    move-object v1, v0

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/google/android/a/a/r;

    invoke-direct {v0}, Lcom/google/android/a/a/r;-><init>()V

    iput-object v1, v0, Lcom/google/android/a/a/r;->g:Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/a/a/r;->a:I

    const/4 v1, 0x1

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/a/a/r;->b:I

    const/4 v1, 0x2

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/google/android/a/a/r;->c:Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/google/android/a/a/r;->d:Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/google/android/a/a/r;->e:Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/a/a/r;->f:J
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    .line 127
    iget v1, v0, Lcom/google/android/a/a/r;->a:I

    if-eq v1, p2, :cond_5

    .line 128
    invoke-direct {p0}, Lcom/google/android/a/a/n;->d()V

    goto/16 :goto_0

    .line 133
    :cond_5
    iget v1, v0, Lcom/google/android/a/a/r;->b:I

    iget v2, p0, Lcom/google/android/a/a/n;->c:I

    if-eq v1, v2, :cond_6

    .line 134
    invoke-direct {p0}, Lcom/google/android/a/a/n;->d()V

    goto/16 :goto_0

    .line 139
    :cond_6
    iget-object v1, v0, Lcom/google/android/a/a/r;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/a/a/n;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 140
    invoke-direct {p0}, Lcom/google/android/a/a/n;->d()V

    goto/16 :goto_0

    .line 145
    :cond_7
    iget-object v1, v0, Lcom/google/android/a/a/r;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/a/a/n;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 146
    invoke-direct {p0}, Lcom/google/android/a/a/n;->d()V

    goto/16 :goto_0

    .line 152
    :cond_8
    iget-object v1, v0, Lcom/google/android/a/a/r;->e:Ljava/lang/String;

    .line 153
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 154
    invoke-direct {p0}, Lcom/google/android/a/a/n;->d()V

    goto/16 :goto_0

    .line 160
    :cond_9
    sparse-switch p2, :sswitch_data_0

    .line 191
    invoke-direct {p0}, Lcom/google/android/a/a/n;->d()V

    goto/16 :goto_0

    .line 163
    :sswitch_0
    iget-object v1, p0, Lcom/google/android/a/a/n;->f:Lcom/google/android/a/a/b;

    invoke-interface {v1}, Lcom/google/android/a/a/b;->a()I

    move-result v1

    .line 164
    invoke-direct {p0, v1, v0}, Lcom/google/android/a/a/n;->a(ILcom/google/android/a/a/r;)V

    goto/16 :goto_0

    .line 167
    :sswitch_1
    const/16 v1, 0x231

    invoke-direct {p0, v1, v0}, Lcom/google/android/a/a/n;->a(ILcom/google/android/a/a/r;)V

    goto/16 :goto_0

    .line 170
    :sswitch_2
    invoke-direct {p0, v6, v0}, Lcom/google/android/a/a/n;->a(ILcom/google/android/a/a/r;)V

    goto/16 :goto_0

    .line 174
    :sswitch_3
    invoke-direct {p0, v6, v0}, Lcom/google/android/a/a/n;->a(ILcom/google/android/a/a/r;)V

    goto/16 :goto_0

    .line 178
    :sswitch_4
    invoke-direct {p0, v6, v0}, Lcom/google/android/a/a/n;->a(ILcom/google/android/a/a/r;)V

    goto/16 :goto_0

    .line 182
    :sswitch_5
    invoke-direct {p0, v4}, Lcom/google/android/a/a/n;->a(I)V

    goto/16 :goto_0

    .line 185
    :sswitch_6
    invoke-direct {p0, v5}, Lcom/google/android/a/a/n;->a(I)V

    goto/16 :goto_0

    .line 188
    :sswitch_7
    invoke-direct {p0, v7}, Lcom/google/android/a/a/n;->a(I)V

    goto/16 :goto_0

    .line 160
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_7
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x101 -> :sswitch_2
        0x102 -> :sswitch_5
        0x103 -> :sswitch_6
    .end sparse-switch
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/google/android/a/a/n;->c:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/a/a/n;->d:Ljava/lang/String;

    return-object v0
.end method
