.class final Lcom/aadhk/restpos/cm;
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

.field private c:Lcom/aadhk/restpos/bean/PaymentMethod;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/PaymentMethodActivity;Lcom/aadhk/restpos/bean/PaymentMethod;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/aadhk/restpos/cm;->a:Lcom/aadhk/restpos/PaymentMethodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p2, p0, Lcom/aadhk/restpos/cm;->c:Lcom/aadhk/restpos/bean/PaymentMethod;

    .line 95
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/aadhk/restpos/cm;->a:Lcom/aadhk/restpos/PaymentMethodActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PaymentMethodActivity;->a(Lcom/aadhk/restpos/PaymentMethodActivity;)Lcom/aadhk/restpos/g/r;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/cm;->c:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/r;->a(Lcom/aadhk/restpos/bean/PaymentMethod;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/cm;->b:Ljava/util/Map;

    .line 99
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 102
    iget-object v0, p0, Lcom/aadhk/restpos/cm;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/aadhk/restpos/cm;->a:Lcom/aadhk/restpos/PaymentMethodActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/cm;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/PaymentMethodActivity;->a(Lcom/aadhk/restpos/PaymentMethodActivity;Ljava/util/List;)Ljava/util/List;

    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/cm;->a:Lcom/aadhk/restpos/PaymentMethodActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PaymentMethodActivity;->b(Lcom/aadhk/restpos/PaymentMethodActivity;)V

    .line 114
    :goto_0
    return-void

    .line 106
    :cond_0
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/cm;->a:Lcom/aadhk/restpos/PaymentMethodActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 108
    :cond_1
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/cm;->a:Lcom/aadhk/restpos/PaymentMethodActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 110
    iget-object v0, p0, Lcom/aadhk/restpos/cm;->a:Lcom/aadhk/restpos/PaymentMethodActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/cm;->a:Lcom/aadhk/restpos/PaymentMethodActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
