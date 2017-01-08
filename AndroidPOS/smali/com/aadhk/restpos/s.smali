.class final Lcom/aadhk/restpos/s;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/DiscountActivity;

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

.field private c:Lcom/aadhk/restpos/bean/Discount;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/DiscountActivity;Lcom/aadhk/restpos/bean/Discount;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/aadhk/restpos/s;->a:Lcom/aadhk/restpos/DiscountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p2, p0, Lcom/aadhk/restpos/s;->c:Lcom/aadhk/restpos/bean/Discount;

    .line 215
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/aadhk/restpos/s;->a:Lcom/aadhk/restpos/DiscountActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/DiscountActivity;->a(Lcom/aadhk/restpos/DiscountActivity;)Lcom/aadhk/restpos/g/e;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/s;->c:Lcom/aadhk/restpos/bean/Discount;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/e;->a(Lcom/aadhk/restpos/bean/Discount;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/s;->b:Ljava/util/Map;

    .line 219
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 222
    iget-object v0, p0, Lcom/aadhk/restpos/s;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 223
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/aadhk/restpos/s;->a:Lcom/aadhk/restpos/DiscountActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/s;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/DiscountActivity;->a(Lcom/aadhk/restpos/DiscountActivity;Ljava/util/List;)Ljava/util/List;

    .line 225
    iget-object v0, p0, Lcom/aadhk/restpos/s;->a:Lcom/aadhk/restpos/DiscountActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/DiscountActivity;->b(Lcom/aadhk/restpos/DiscountActivity;)V

    .line 234
    :goto_0
    return-void

    .line 226
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/s;->a:Lcom/aadhk/restpos/DiscountActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 228
    iget-object v0, p0, Lcom/aadhk/restpos/s;->a:Lcom/aadhk/restpos/DiscountActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 229
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/aadhk/restpos/s;->a:Lcom/aadhk/restpos/DiscountActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/s;->a:Lcom/aadhk/restpos/DiscountActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
