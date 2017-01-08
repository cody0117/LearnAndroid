.class final Lcom/aadhk/restpos/d/fy;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/fq;

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


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/d/fq;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/aadhk/restpos/d/fy;->a:Lcom/aadhk/restpos/d/fq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/fq;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/fy;-><init>(Lcom/aadhk/restpos/d/fq;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/aadhk/restpos/d/fy;->a:Lcom/aadhk/restpos/d/fq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/fq;->k(Lcom/aadhk/restpos/d/fq;)Lcom/aadhk/restpos/g/t;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fy;->a:Lcom/aadhk/restpos/d/fq;

    invoke-static {v1}, Lcom/aadhk/restpos/d/fq;->g(Lcom/aadhk/restpos/d/fq;)Lcom/aadhk/restpos/bean/PriceSchedule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/t;->a(Lcom/aadhk/restpos/bean/PriceSchedule;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fy;->b:Ljava/util/Map;

    .line 402
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 406
    iget-object v0, p0, Lcom/aadhk/restpos/d/fy;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 407
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    iget-object v0, p0, Lcom/aadhk/restpos/d/fy;->a:Lcom/aadhk/restpos/d/fq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/fq;->d(Lcom/aadhk/restpos/d/fq;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 409
    iget-object v1, p0, Lcom/aadhk/restpos/d/fy;->a:Lcom/aadhk/restpos/d/fq;

    invoke-static {v1}, Lcom/aadhk/restpos/d/fq;->l(Lcom/aadhk/restpos/d/fq;)Lcom/aadhk/restpos/util/r;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v1, v0}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/fy;->a:Lcom/aadhk/restpos/d/fq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/fq;->a(Lcom/aadhk/restpos/d/fq;)Lcom/aadhk/restpos/PriceScheduleActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/PriceScheduleActivity;->b()V

    .line 420
    :goto_1
    return-void

    .line 412
    :cond_1
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/fy;->a:Lcom/aadhk/restpos/d/fq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/fq;->a(Lcom/aadhk/restpos/d/fq;)Lcom/aadhk/restpos/PriceScheduleActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 414
    iget-object v0, p0, Lcom/aadhk/restpos/d/fy;->a:Lcom/aadhk/restpos/d/fq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/fq;->a(Lcom/aadhk/restpos/d/fq;)Lcom/aadhk/restpos/PriceScheduleActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 415
    :cond_3
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 416
    iget-object v0, p0, Lcom/aadhk/restpos/d/fy;->a:Lcom/aadhk/restpos/d/fq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/fq;->a(Lcom/aadhk/restpos/d/fq;)Lcom/aadhk/restpos/PriceScheduleActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 418
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/fy;->a:Lcom/aadhk/restpos/d/fq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/fq;->a(Lcom/aadhk/restpos/d/fq;)Lcom/aadhk/restpos/PriceScheduleActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
