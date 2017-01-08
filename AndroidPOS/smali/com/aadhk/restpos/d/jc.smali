.class final Lcom/aadhk/restpos/d/jc;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/it;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/aadhk/restpos/bean/License;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/it;Lcom/aadhk/restpos/bean/License;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/aadhk/restpos/d/jc;->a:Lcom/aadhk/restpos/d/it;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    iput-object p2, p0, Lcom/aadhk/restpos/d/jc;->c:Lcom/aadhk/restpos/bean/License;

    .line 524
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 529
    :try_start_0
    new-instance v0, Lcom/aadhk/restpos/f/aa;

    invoke-direct {v0}, Lcom/aadhk/restpos/f/aa;-><init>()V

    .line 530
    iget-object v1, p0, Lcom/aadhk/restpos/d/jc;->c:Lcom/aadhk/restpos/bean/License;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/f/aa;->b(Lcom/aadhk/restpos/bean/License;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/jc;->b:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :goto_0
    return-void

    .line 531
    :catch_0
    move-exception v0

    .line 532
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 533
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 6

    .prologue
    .line 539
    iget-object v0, p0, Lcom/aadhk/restpos/d/jc;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 540
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/jc;->b:Ljava/util/Map;

    const-string v1, "serviceData"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/License;

    .line 543
    iget-object v1, p0, Lcom/aadhk/restpos/d/jc;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v1}, Lcom/aadhk/restpos/d/it;->c(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/util/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/util/r;->a(Lcom/aadhk/restpos/bean/License;)V

    .line 545
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 546
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 547
    new-instance v0, Lcom/aadhk/a/m;

    const-string v1, "inapp"

    const-string v2, "10001"

    const-string v3, "com.aadhk.restpos.full"

    invoke-direct/range {v0 .. v5}, Lcom/aadhk/a/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 548
    iget-object v1, p0, Lcom/aadhk/restpos/d/jc;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v1}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Lcom/aadhk/a/m;)V
    :try_end_0
    .catch Lcom/aadhk/b/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :goto_0
    return-void

    .line 549
    :catch_0
    move-exception v0

    .line 550
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 551
    invoke-virtual {v0}, Lcom/aadhk/b/a;->printStackTrace()V

    goto :goto_0

    .line 554
    :cond_0
    const-string v1, "90"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/aadhk/restpos/d/jc;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/jc;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v1}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v1

    const v2, 0x7f080012

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/jc;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v0

    const v1, 0x7f080082

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
