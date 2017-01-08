.class final Lcom/aadhk/restpos/d/kp;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/kk;

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

.field private c:Lcom/aadhk/restpos/bean/User;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/kk;Lcom/aadhk/restpos/bean/User;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/aadhk/restpos/d/kp;->a:Lcom/aadhk/restpos/d/kk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p2, p0, Lcom/aadhk/restpos/d/kp;->c:Lcom/aadhk/restpos/bean/User;

    .line 355
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/aadhk/restpos/d/kp;->a:Lcom/aadhk/restpos/d/kk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/kk;->c(Lcom/aadhk/restpos/d/kk;)Lcom/aadhk/restpos/g/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/kp;->c:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/ae;->a(Lcom/aadhk/restpos/bean/User;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/kp;->b:Ljava/util/Map;

    .line 360
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 364
    iget-object v0, p0, Lcom/aadhk/restpos/d/kp;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 365
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    iget-object v0, p0, Lcom/aadhk/restpos/d/kp;->b:Ljava/util/Map;

    const-string v1, "serviceData"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 367
    iget-object v1, p0, Lcom/aadhk/restpos/d/kp;->a:Lcom/aadhk/restpos/d/kk;

    invoke-static {v1}, Lcom/aadhk/restpos/d/kk;->b(Lcom/aadhk/restpos/d/kk;)Lcom/aadhk/restpos/UserActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/UserActivity;->a(Ljava/util/List;)V

    .line 368
    iget-object v0, p0, Lcom/aadhk/restpos/d/kp;->a:Lcom/aadhk/restpos/d/kk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/kk;->d(Lcom/aadhk/restpos/d/kk;)V

    .line 377
    :goto_0
    return-void

    .line 369
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/kp;->a:Lcom/aadhk/restpos/d/kk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/kk;->b(Lcom/aadhk/restpos/d/kk;)Lcom/aadhk/restpos/UserActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 371
    iget-object v0, p0, Lcom/aadhk/restpos/d/kp;->a:Lcom/aadhk/restpos/d/kk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/kk;->b(Lcom/aadhk/restpos/d/kk;)Lcom/aadhk/restpos/UserActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 372
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 373
    iget-object v0, p0, Lcom/aadhk/restpos/d/kp;->a:Lcom/aadhk/restpos/d/kk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/kk;->b(Lcom/aadhk/restpos/d/kk;)Lcom/aadhk/restpos/UserActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 375
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/kp;->a:Lcom/aadhk/restpos/d/kk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/kk;->b(Lcom/aadhk/restpos/d/kk;)Lcom/aadhk/restpos/UserActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
