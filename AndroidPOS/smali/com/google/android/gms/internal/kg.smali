.class public final Lcom/google/android/gms/internal/kg;
.super Lcom/google/android/gms/internal/jv;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ia;
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/google/android/gms/internal/kg;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/kx;

.field private final e:Lcom/google/android/gms/internal/dn;

.field private final f:Lcom/google/android/gms/internal/bs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/kg;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/bs;Lcom/google/android/gms/internal/dn;Lcom/google/android/gms/internal/kx;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/jv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/kg;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/kg;->d:Lcom/google/android/gms/internal/kx;

    iput-object p3, p0, Lcom/google/android/gms/internal/kg;->e:Lcom/google/android/gms/internal/dn;

    iput-object p2, p0, Lcom/google/android/gms/internal/kg;->f:Lcom/google/android/gms/internal/bs;

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/google/android/gms/internal/bs;Lcom/google/android/gms/internal/fh;)Lcom/google/android/gms/internal/fj;
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Lcom/google/android/gms/internal/kw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/kw;-><init>(Landroid/content/Context;)V

    iget v1, v0, Lcom/google/android/gms/internal/kw;->l:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/fj;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fj;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/kn;

    iget-object v1, p2, Lcom/google/android/gms/internal/fh;->f:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/kn;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/google/android/gms/internal/fh;->c:Lcom/google/android/gms/internal/av;

    iget-object v1, v1, Lcom/google/android/gms/internal/av;->c:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/google/android/gms/internal/fh;->c:Lcom/google/android/gms/internal/av;

    iget-object v1, v1, Lcom/google/android/gms/internal/av;->c:Landroid/os/Bundle;

    const-string v2, "_ad"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p0, p2, v1}, Lcom/google/android/gms/internal/kl;->a(Landroid/content/Context;Lcom/google/android/gms/internal/fh;Ljava/lang/String;)Lcom/google/android/gms/internal/fj;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/bs;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/bs;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/bs;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/bs;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v0, v1, v2, v4}, Lcom/google/android/gms/internal/kl;->a(Lcom/google/android/gms/internal/fh;Lcom/google/android/gms/internal/kw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/fj;

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/fj;-><init>(I)V

    goto :goto_0

    :cond_2
    new-instance v4, Lcom/google/android/gms/internal/kj;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/kj;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/google/android/gms/internal/me;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/kh;

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/kh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/fh;Lcom/google/android/gms/internal/kn;Lcom/google/android/gms/internal/mk;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/kn;->a()Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ku;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/fj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fj;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v1, Lcom/google/android/gms/internal/me;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ki;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ki;-><init>(Lcom/google/android/gms/internal/kn;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Lcom/google/android/gms/internal/fj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fj;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v1, Lcom/google/android/gms/internal/me;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ki;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ki;-><init>(Lcom/google/android/gms/internal/kn;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ku;->a()I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_4

    new-instance v1, Lcom/google/android/gms/internal/fj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ku;->a()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/fj;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v0, Lcom/google/android/gms/internal/me;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ki;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ki;-><init>(Lcom/google/android/gms/internal/kn;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ku;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p2, Lcom/google/android/gms/internal/fh;->g:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :cond_5
    iget-object v1, p2, Lcom/google/android/gms/internal/fh;->k:Lcom/google/android/gms/internal/gs;

    iget-object v1, v1, Lcom/google/android/gms/internal/gs;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ku;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lcom/google/android/gms/internal/kg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ku;)Lcom/google/android/gms/internal/fj;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/me;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ki;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ki;-><init>(Lcom/google/android/gms/internal/kn;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/me;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ki;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ki;-><init>(Lcom/google/android/gms/internal/kn;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ku;)Lcom/google/android/gms/internal/fj;
    .locals 10

    const/16 v9, 0x12c

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Lcom/google/android/gms/internal/kt;

    invoke-direct {v3}, Lcom/google/android/gms/internal/kt;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdRequestServiceImpl: Sending request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v2, v1

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    :try_start_1
    invoke-static {p0, p1, v6, v0}, Lcom/google/android/gms/internal/lq;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    const/4 v6, 0x0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "x-afma-drt-cookie"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ku;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ku;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v7, v6

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v7, v6}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V

    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    const/16 v8, 0xc8

    if-lt v6, v8, :cond_2

    if-ge v6, v9, :cond_2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/lq;->a(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v7, v2}, Lcom/google/android/gms/internal/kt;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/kt;->a(J)Lcom/google/android/gms/internal/fj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_2
    if-lt v6, v9, :cond_4

    const/16 v2, 0x190

    if-ge v6, v2, :cond_4

    :try_start_3
    const-string v2, "Location"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/fj;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/fj;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, v1

    goto :goto_1

    :cond_3
    :try_start_5
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x5

    if-le v1, v6, :cond_5

    new-instance v1, Lcom/google/android/gms/internal/fj;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/fj;-><init>(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    move-object v0, v1

    goto :goto_1

    :cond_4
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received error HTTP response code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/android/gms/internal/fj;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/fj;-><init>(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-object v0, v1

    goto :goto_1

    :cond_5
    :try_start_9
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/kt;->a(Ljava/util/Map;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while connecting to ad server: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/android/gms/internal/fj;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fj;-><init>(I)V

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_b
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/bs;Lcom/google/android/gms/internal/dn;Lcom/google/android/gms/internal/kx;)Lcom/google/android/gms/internal/kg;
    .locals 3

    sget-object v1, Lcom/google/android/gms/internal/kg;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/kg;->b:Lcom/google/android/gms/internal/kg;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/kg;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1, p2, p3}, Lcom/google/android/gms/internal/kg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/bs;Lcom/google/android/gms/internal/dn;Lcom/google/android/gms/internal/kx;)V

    sput-object v0, Lcom/google/android/gms/internal/kg;->b:Lcom/google/android/gms/internal/kg;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/kg;->b:Lcom/google/android/gms/internal/kg;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/fh;)Lcom/google/android/gms/internal/fj;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/kg;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/kg;->f:Lcom/google/android/gms/internal/bs;

    iget-object v2, p0, Lcom/google/android/gms/internal/kg;->e:Lcom/google/android/gms/internal/dn;

    iget-object v2, p0, Lcom/google/android/gms/internal/kg;->d:Lcom/google/android/gms/internal/kx;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/kg;->a(Landroid/content/Context;Lcom/google/android/gms/internal/bs;Lcom/google/android/gms/internal/fh;)Lcom/google/android/gms/internal/fj;

    move-result-object v0

    return-object v0
.end method
