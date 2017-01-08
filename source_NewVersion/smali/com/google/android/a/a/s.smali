.class public final Lcom/google/android/a/a/s;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/google/android/a/a/p;


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:I

.field private g:Lcom/google/android/a/a/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/a/a/o;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/a/a/s;->e:J

    .line 74
    const-string v0, "com.android.vending.licensing.ServerManagedPolicy"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/google/android/a/a/q;

    invoke-direct {v1, v0, p2}, Lcom/google/android/a/a/q;-><init>(Landroid/content/SharedPreferences;Lcom/google/android/a/a/o;)V

    iput-object v1, p0, Lcom/google/android/a/a/s;->g:Lcom/google/android/a/a/q;

    .line 77
    iget-object v0, p0, Lcom/google/android/a/a/s;->g:Lcom/google/android/a/a/q;

    const-string v1, "lastResponse"

    const/16 v2, 0x123

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/a/a/q;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/a/a/s;->f:I

    .line 78
    iget-object v0, p0, Lcom/google/android/a/a/s;->g:Lcom/google/android/a/a/q;

    const-string v1, "validityTimestamp"

    .line 79
    const-string v2, "0"

    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/google/android/a/a/q;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/a/s;->a:J

    .line 80
    iget-object v0, p0, Lcom/google/android/a/a/s;->g:Lcom/google/android/a/a/q;

    const-string v1, "retryUntil"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/a/a/q;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/a/s;->b:J

    .line 81
    iget-object v0, p0, Lcom/google/android/a/a/s;->g:Lcom/google/android/a/a/q;

    const-string v1, "maxRetries"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/a/a/q;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/a/s;->c:J

    .line 82
    iget-object v0, p0, Lcom/google/android/a/a/s;->g:Lcom/google/android/a/a/q;

    const-string v1, "retryCount"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/a/a/q;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/a/s;->d:J

    .line 83
    return-void
.end method

.method private a(J)V
    .locals 3
    .parameter

    .prologue
    .line 147
    iput-wide p1, p0, Lcom/google/android/a/a/s;->d:J

    .line 148
    iget-object v0, p0, Lcom/google/android/a/a/s;->g:Lcom/google/android/a/a/q;

    const-string v1, "retryCount"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/a/a/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 165
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 173
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/a/s;->a:J

    .line 174
    iget-object v0, p0, Lcom/google/android/a/a/s;->g:Lcom/google/android/a/a/q;

    const-string v1, "validityTimestamp"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/a/a/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void

    .line 168
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 191
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 199
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/a/s;->b:J

    .line 200
    iget-object v0, p0, Lcom/google/android/a/a/s;->g:Lcom/google/android/a/a/q;

    const-string v1, "retryUntil"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/a/a/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void

    .line 194
    :catch_0
    move-exception v0

    const-string p1, "0"

    .line 196
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 217
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 225
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/a/s;->c:J

    .line 226
    iget-object v0, p0, Lcom/google/android/a/a/s;->g:Lcom/google/android/a/a/q;

    const-string v1, "maxRetries"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/a/a/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void

    .line 220
    :catch_0
    move-exception v0

    const-string p1, "0"

    .line 222
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 263
    :try_start_0
    new-instance v0, Ljava/net/URI;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 264
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 265
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    :goto_1
    return-object v1

    .line 265
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 266
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final a(ILcom/google/android/a/a/r;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 103
    const/16 v0, 0x123

    if-eq p1, v0, :cond_1

    .line 104
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/a/a/s;->a(J)V

    .line 109
    :goto_0
    const/16 v0, 0x100

    if-ne p1, v0, :cond_2

    .line 111
    iget-object v0, p2, Lcom/google/android/a/a/r;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/a/a/s;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 112
    iput p1, p0, Lcom/google/android/a/a/s;->f:I

    .line 113
    const-string v0, "VT"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/a/a/s;->a(Ljava/lang/String;)V

    .line 114
    const-string v0, "GT"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/a/a/s;->b(Ljava/lang/String;)V

    .line 115
    const-string v0, "GR"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/a/a/s;->c(Ljava/lang/String;)V

    .line 123
    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/a/s;->e:J

    iput p1, p0, Lcom/google/android/a/a/s;->f:I

    iget-object v0, p0, Lcom/google/android/a/a/s;->g:Lcom/google/android/a/a/q;

    const-string v1, "lastResponse"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/a/a/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/google/android/a/a/s;->g:Lcom/google/android/a/a/q;

    invoke-virtual {v0}, Lcom/google/android/a/a/q;->a()V

    .line 125
    return-void

    .line 106
    :cond_1
    iget-wide v0, p0, Lcom/google/android/a/a/s;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/a/a/s;->a(J)V

    goto :goto_0

    .line 116
    :cond_2
    const/16 v0, 0x231

    if-ne p1, v0, :cond_0

    .line 118
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/google/android/a/a/s;->a(Ljava/lang/String;)V

    .line 119
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/google/android/a/a/s;->b(Ljava/lang/String;)V

    .line 120
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/google/android/a/a/s;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 245
    iget v4, p0, Lcom/google/android/a/a/s;->f:I

    const/16 v5, 0x100

    if-ne v4, v5, :cond_1

    .line 247
    iget-wide v4, p0, Lcom/google/android/a/a/s;->a:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 257
    :cond_0
    :goto_0
    return v0

    .line 251
    :cond_1
    iget v4, p0, Lcom/google/android/a/a/s;->f:I

    const/16 v5, 0x123

    if-ne v4, v5, :cond_2

    .line 252
    iget-wide v4, p0, Lcom/google/android/a/a/s;->e:J

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    .line 255
    iget-wide v4, p0, Lcom/google/android/a/a/s;->b:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/a/a/s;->d:J

    iget-wide v4, p0, Lcom/google/android/a/a/s;->c:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 257
    goto :goto_0
.end method
