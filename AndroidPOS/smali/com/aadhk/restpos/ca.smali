.class final Lcom/aadhk/restpos/ca;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/PayCloseOutActivity;

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
.method private constructor <init>(Lcom/aadhk/restpos/PayCloseOutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/aadhk/restpos/ca;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/PayCloseOutActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/ca;-><init>(Lcom/aadhk/restpos/PayCloseOutActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/aadhk/restpos/ca;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->c(Lcom/aadhk/restpos/PayCloseOutActivity;)Lcom/aadhk/restpos/g/p;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/ca;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/PayCloseOutActivity;->a(Lcom/aadhk/restpos/PayCloseOutActivity;)Lcom/aadhk/restpos/bean/CloseOutCashRegister;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/p;->a(Lcom/aadhk/restpos/bean/CloseOutCashRegister;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/ca;->b:Ljava/util/Map;

    .line 283
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 286
    iget-object v0, p0, Lcom/aadhk/restpos/ca;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 287
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/aadhk/restpos/ca;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->finish()V

    .line 297
    :goto_0
    return-void

    .line 289
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/ca;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 291
    iget-object v0, p0, Lcom/aadhk/restpos/ca;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 292
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 293
    iget-object v0, p0, Lcom/aadhk/restpos/ca;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 295
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/ca;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method