.class final Lcom/aadhk/restpos/dk;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/ServiceFeeActivity;

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

.field private c:Lcom/aadhk/restpos/bean/ServiceFee;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/ServiceFeeActivity;Lcom/aadhk/restpos/bean/ServiceFee;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/aadhk/restpos/dk;->a:Lcom/aadhk/restpos/ServiceFeeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p2, p0, Lcom/aadhk/restpos/dk;->c:Lcom/aadhk/restpos/bean/ServiceFee;

    .line 214
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/aadhk/restpos/dk;->a:Lcom/aadhk/restpos/ServiceFeeActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/ServiceFeeActivity;->a(Lcom/aadhk/restpos/ServiceFeeActivity;)Lcom/aadhk/restpos/g/z;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/dk;->c:Lcom/aadhk/restpos/bean/ServiceFee;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/z;->a(Lcom/aadhk/restpos/bean/ServiceFee;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/dk;->b:Ljava/util/Map;

    .line 218
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 221
    iget-object v0, p0, Lcom/aadhk/restpos/dk;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/aadhk/restpos/dk;->a:Lcom/aadhk/restpos/ServiceFeeActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/dk;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/ServiceFeeActivity;->a(Lcom/aadhk/restpos/ServiceFeeActivity;Ljava/util/List;)Ljava/util/List;

    .line 224
    iget-object v0, p0, Lcom/aadhk/restpos/dk;->a:Lcom/aadhk/restpos/ServiceFeeActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/ServiceFeeActivity;->b(Lcom/aadhk/restpos/ServiceFeeActivity;)V

    .line 233
    :goto_0
    return-void

    .line 225
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/dk;->a:Lcom/aadhk/restpos/ServiceFeeActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 227
    iget-object v0, p0, Lcom/aadhk/restpos/dk;->a:Lcom/aadhk/restpos/ServiceFeeActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 228
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    iget-object v0, p0, Lcom/aadhk/restpos/dk;->a:Lcom/aadhk/restpos/ServiceFeeActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/dk;->a:Lcom/aadhk/restpos/ServiceFeeActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
