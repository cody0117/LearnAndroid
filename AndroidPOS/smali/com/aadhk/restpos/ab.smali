.class final Lcom/aadhk/restpos/ab;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/LoginActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/aadhk/restpos/ab;->a:Lcom/aadhk/restpos/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 278
    :try_start_0
    new-instance v0, Lcom/aadhk/restpos/f/aa;

    invoke-direct {v0}, Lcom/aadhk/restpos/f/aa;-><init>()V

    .line 279
    iget-object v1, p0, Lcom/aadhk/restpos/ab;->a:Lcom/aadhk/restpos/LoginActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/LoginActivity;->a(Lcom/aadhk/restpos/LoginActivity;)Lcom/aadhk/restpos/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->y()Lcom/aadhk/restpos/bean/License;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/f/aa;->a(Lcom/aadhk/restpos/bean/License;)Ljava/util/Map;

    move-result-object v1

    .line 280
    const-string v0, "serviceStatus"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 281
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    const-string v0, "serviceData"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/License;

    .line 283
    iget-object v1, p0, Lcom/aadhk/restpos/ab;->a:Lcom/aadhk/restpos/LoginActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/LoginActivity;->a(Lcom/aadhk/restpos/LoginActivity;)Lcom/aadhk/restpos/util/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/util/r;->a(Lcom/aadhk/restpos/bean/License;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 287
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/aadhk/restpos/ab;->a:Lcom/aadhk/restpos/LoginActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/LoginActivity;->b(Lcom/aadhk/restpos/LoginActivity;)V

    .line 294
    return-void
.end method
