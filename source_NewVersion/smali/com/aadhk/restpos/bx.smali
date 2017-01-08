.class final Lcom/aadhk/restpos/bx;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/b/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/SettingActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/SettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/aadhk/restpos/bx;->a:Lcom/aadhk/restpos/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/bx;->a:Lcom/aadhk/restpos/SettingActivity;

    const-string v1, "com.aadhk.restpos.full"

    invoke-static {v0, v1, p1}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 421
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 422
    new-instance v0, Lcom/aadhk/a/m;

    const-string v1, "inapp"

    const-string v2, "10001"

    const-string v3, "com.aadhk.restpos.full"

    invoke-direct/range {v0 .. v5}, Lcom/aadhk/a/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 423
    iget-object v1, p0, Lcom/aadhk/restpos/bx;->a:Lcom/aadhk/restpos/SettingActivity;

    invoke-static {v1, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Lcom/aadhk/a/m;)V

    .line 431
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/bx;->a:Lcom/aadhk/restpos/SettingActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090056

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lcom/aadhk/b/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 429
    invoke-virtual {v0}, Lcom/aadhk/b/a;->printStackTrace()V

    goto :goto_0
.end method
