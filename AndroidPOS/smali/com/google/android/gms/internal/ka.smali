.class public final Lcom/google/android/gms/internal/ka;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ia;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/internal/la;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/lz;

.field private final c:Lcom/google/android/gms/internal/ts;

.field private final d:Lcom/google/android/gms/internal/s;

.field private final e:Ljava/lang/Object;

.field private final f:Lcom/google/android/gms/internal/lb;

.field private g:Z

.field private h:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ts;Lcom/google/android/gms/internal/s;Lcom/google/android/gms/internal/lz;Lcom/google/android/gms/internal/lb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ka;->e:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ka;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ka;->c:Lcom/google/android/gms/internal/ts;

    iput-object p4, p0, Lcom/google/android/gms/internal/ka;->b:Lcom/google/android/gms/internal/lz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ka;->d:Lcom/google/android/gms/internal/s;

    iput-object p5, p0, Lcom/google/android/gms/internal/ka;->f:Lcom/google/android/gms/internal/lb;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ka;->g:Z

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/ka;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ka;->i:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/cg;)Lcom/google/android/gms/internal/la;
    .locals 31

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ka;->e:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/ka;->h:I

    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ka;->h:I

    const/4 v4, -0x2

    if-ne v2, v4, :cond_0

    const/4 v6, 0x0

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x2

    if-eq v6, v2, :cond_1

    const/16 v30, 0x0

    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/la;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ka;->f:Lcom/google/android/gms/internal/lb;

    iget-object v3, v3, Lcom/google/android/gms/internal/lb;->a:Lcom/google/android/gms/internal/fh;

    iget-object v3, v3, Lcom/google/android/gms/internal/fh;->c:Lcom/google/android/gms/internal/av;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ka;->f:Lcom/google/android/gms/internal/lb;

    iget-object v5, v5, Lcom/google/android/gms/internal/lb;->b:Lcom/google/android/gms/internal/fj;

    iget-object v5, v5, Lcom/google/android/gms/internal/fj;->d:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ka;->f:Lcom/google/android/gms/internal/lb;

    iget-object v7, v7, Lcom/google/android/gms/internal/lb;->b:Lcom/google/android/gms/internal/fj;

    iget-object v7, v7, Lcom/google/android/gms/internal/fj;->f:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ka;->i:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/ka;->f:Lcom/google/android/gms/internal/lb;

    iget-object v9, v9, Lcom/google/android/gms/internal/lb;->b:Lcom/google/android/gms/internal/fj;

    iget v9, v9, Lcom/google/android/gms/internal/fj;->l:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/ka;->f:Lcom/google/android/gms/internal/lb;

    iget-object v10, v10, Lcom/google/android/gms/internal/lb;->b:Lcom/google/android/gms/internal/fj;

    iget-wide v10, v10, Lcom/google/android/gms/internal/fj;->k:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/ka;->f:Lcom/google/android/gms/internal/lb;

    iget-object v12, v12, Lcom/google/android/gms/internal/lb;->a:Lcom/google/android/gms/internal/fh;

    iget-object v12, v12, Lcom/google/android/gms/internal/fh;->i:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ka;->f:Lcom/google/android/gms/internal/lb;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/gms/internal/lb;->d:Lcom/google/android/gms/internal/ay;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ka;->f:Lcom/google/android/gms/internal/lb;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gms/internal/lb;->b:Lcom/google/android/gms/internal/fj;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/google/android/gms/internal/fj;->g:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ka;->f:Lcom/google/android/gms/internal/lb;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/google/android/gms/internal/lb;->f:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ka;->f:Lcom/google/android/gms/internal/lb;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/google/android/gms/internal/lb;->g:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ka;->f:Lcom/google/android/gms/internal/lb;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/gms/internal/lb;->b:Lcom/google/android/gms/internal/fj;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/gms/internal/fj;->o:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ka;->f:Lcom/google/android/gms/internal/lb;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/google/android/gms/internal/lb;->h:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/internal/la;-><init>(Lcom/google/android/gms/internal/av;Lcom/google/android/gms/internal/mg;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/eh;Ljava/lang/String;Lcom/google/android/gms/internal/du;Lcom/google/android/gms/internal/dw;JLcom/google/android/gms/internal/ay;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/cg;)V

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    move-object/from16 v30, p1

    goto/16 :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private b()Lcom/google/android/gms/internal/la;
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ka;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v3, v6

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ka;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v2, v6

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ka;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v1, v6

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ka;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v6

    :goto_3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ka;->a(Lcom/google/android/gms/internal/cg;)Lcom/google/android/gms/internal/la;

    move-result-object v0

    :goto_4
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ka;->d:Lcom/google/android/gms/internal/s;

    iget-object v2, p0, Lcom/google/android/gms/internal/ka;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ka;->f:Lcom/google/android/gms/internal/lb;

    iget-object v0, v0, Lcom/google/android/gms/internal/lb;->a:Lcom/google/android/gms/internal/fh;

    iget-object v3, v0, Lcom/google/android/gms/internal/fh;->k:Lcom/google/android/gms/internal/gs;

    const-string v5, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html"

    new-instance v4, Lcom/google/android/gms/internal/lt;

    invoke-direct {v4}, Lcom/google/android/gms/internal/lt;-><init>()V

    sget-object v7, Lcom/google/android/gms/internal/me;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/t;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/t;-><init>(Lcom/google/android/gms/internal/s;Landroid/content/Context;Lcom/google/android/gms/internal/gs;Lcom/google/android/gms/internal/lt;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/q;

    iget-object v1, p0, Lcom/google/android/gms/internal/ka;->c:Lcom/google/android/gms/internal/ts;

    iget-object v2, p0, Lcom/google/android/gms/internal/ka;->c:Lcom/google/android/gms/internal/ts;

    iget-object v3, p0, Lcom/google/android/gms/internal/ka;->c:Lcom/google/android/gms/internal/ts;

    iget-object v4, p0, Lcom/google/android/gms/internal/ka;->c:Lcom/google/android/gms/internal/ts;

    iget-object v5, p0, Lcom/google/android/gms/internal/ka;->c:Lcom/google/android/gms/internal/ts;

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/q;->a(Lcom/google/android/gms/internal/tr;Lcom/google/android/gms/internal/fp;Lcom/google/android/gms/internal/co;Lcom/google/android/gms/internal/fu;Lcom/google/android/gms/internal/da;)V

    move-object v3, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/lt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/lt;-><init>()V

    const-string v1, "/nativeAdPreProcess"

    new-instance v2, Lcom/google/android/gms/internal/kb;

    invoke-direct {v2, p0, v3, v0}, Lcom/google/android/gms/internal/kb;-><init>(Lcom/google/android/gms/internal/ka;Lcom/google/android/gms/internal/q;Lcom/google/android/gms/internal/lt;)V

    invoke-interface {v3, v1, v2}, Lcom/google/android/gms/internal/q;->a(Ljava/lang/String;Lcom/google/android/gms/internal/cz;)V

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/google/android/gms/internal/ka;->f:Lcom/google/android/gms/internal/lb;

    iget-object v2, v2, Lcom/google/android/gms/internal/lb;->b:Lcom/google/android/gms/internal/fj;

    iget-object v2, v2, Lcom/google/android/gms/internal/fj;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "google.afma.nativeAds.preProcessJsonGmsg"

    invoke-interface {v3, v2, v1}, Lcom/google/android/gms/internal/q;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    goto :goto_1

    :cond_2
    const-string v0, "template_id"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/ke;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ke;-><init>()V

    move-object v1, v0

    goto :goto_2

    :cond_3
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/kf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kf;-><init>()V

    move-object v1, v0

    goto/16 :goto_2

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ka;->a(I)V

    move-object v1, v6

    goto/16 :goto_2

    :cond_5
    const-string v0, "tracking_urls_and_actions"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "impression_tracking_urls"

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ka;->a(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    move-object v0, v6

    :goto_5
    iput-object v0, p0, Lcom/google/android/gms/internal/ka;->i:Ljava/util/List;

    invoke-interface {v1, p0, v2}, Lcom/google/android/gms/internal/kd;->a(Lcom/google/android/gms/internal/ka;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/cg;

    move-result-object v0

    if-nez v0, :cond_7

    move-object v0, v6

    goto/16 :goto_3

    :cond_6
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_5

    :cond_7
    new-instance v1, Lcom/google/android/gms/internal/cf;

    iget-object v4, p0, Lcom/google/android/gms/internal/ka;->c:Lcom/google/android/gms/internal/ts;

    invoke-direct {v1, v4, v3, v2}, Lcom/google/android/gms/internal/cf;-><init>(Lcom/google/android/gms/internal/ts;Lcom/google/android/gms/internal/q;Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/cg;->a(Lcom/google/android/gms/internal/cf;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    :catch_0
    move-exception v0

    :goto_6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ka;->g:Z

    if-nez v0, :cond_8

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ka;->a(I)V

    :cond_8
    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/ka;->a(Lcom/google/android/gms/internal/cg;)Lcom/google/android/gms/internal/la;

    move-result-object v0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_6
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    if-eqz p3, :cond_2

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3}, Lcom/google/android/gms/internal/ka;->a(IZ)V

    new-instance v0, Lcom/google/android/gms/internal/lu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/lu;-><init>()V

    :goto_2
    return-object v0

    :cond_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ka;->b:Lcom/google/android/gms/internal/lz;

    new-instance v2, Lcom/google/android/gms/internal/kc;

    invoke-direct {v2, p0, p3}, Lcom/google/android/gms/internal/kc;-><init>(Lcom/google/android/gms/internal/ka;Z)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/lz;->a(Ljava/lang/String;Lcom/google/android/gms/internal/mc;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_2
.end method

.method public final a(I)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ka;->e:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ka;->g:Z

    iput p1, p0, Lcom/google/android/gms/internal/ka;->h:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ka;->a(I)V

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ka;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ka;->g:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ka;->b()Lcom/google/android/gms/internal/la;

    move-result-object v0

    return-object v0
.end method
