.class final Lcom/aadhk/restpos/co;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/PaymentMethodActivity;

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
.method private constructor <init>(Lcom/aadhk/restpos/PaymentMethodActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/aadhk/restpos/co;->a:Lcom/aadhk/restpos/PaymentMethodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/PaymentMethodActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/co;-><init>(Lcom/aadhk/restpos/PaymentMethodActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/aadhk/restpos/co;->a:Lcom/aadhk/restpos/PaymentMethodActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PaymentMethodActivity;->a(Lcom/aadhk/restpos/PaymentMethodActivity;)Lcom/aadhk/restpos/g/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/g/r;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/co;->b:Ljava/util/Map;

    .line 217
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 220
    iget-object v0, p0, Lcom/aadhk/restpos/co;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 221
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/aadhk/restpos/co;->a:Lcom/aadhk/restpos/PaymentMethodActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/co;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/PaymentMethodActivity;->a(Lcom/aadhk/restpos/PaymentMethodActivity;Ljava/util/List;)Ljava/util/List;

    .line 223
    iget-object v0, p0, Lcom/aadhk/restpos/co;->a:Lcom/aadhk/restpos/PaymentMethodActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PaymentMethodActivity;->b(Lcom/aadhk/restpos/PaymentMethodActivity;)V

    .line 232
    :goto_0
    return-void

    .line 224
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/co;->a:Lcom/aadhk/restpos/PaymentMethodActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 226
    iget-object v0, p0, Lcom/aadhk/restpos/co;->a:Lcom/aadhk/restpos/PaymentMethodActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 227
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/aadhk/restpos/co;->a:Lcom/aadhk/restpos/PaymentMethodActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 230
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/co;->a:Lcom/aadhk/restpos/PaymentMethodActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
