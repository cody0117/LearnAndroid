.class final Lcom/aadhk/restpos/i;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/DeliveryActivity;

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
.method private constructor <init>(Lcom/aadhk/restpos/DeliveryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/aadhk/restpos/i;->a:Lcom/aadhk/restpos/DeliveryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/DeliveryActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/i;-><init>(Lcom/aadhk/restpos/DeliveryActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/aadhk/restpos/i;->a:Lcom/aadhk/restpos/DeliveryActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/DeliveryActivity;->a(Lcom/aadhk/restpos/DeliveryActivity;)Lcom/aadhk/restpos/g/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/g/d;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/i;->b:Ljava/util/Map;

    .line 223
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 226
    iget-object v0, p0, Lcom/aadhk/restpos/i;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    iget-object v1, p0, Lcom/aadhk/restpos/i;->a:Lcom/aadhk/restpos/DeliveryActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/i;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/DeliveryActivity;->a(Lcom/aadhk/restpos/DeliveryActivity;Ljava/util/List;)Ljava/util/List;

    .line 229
    iget-object v0, p0, Lcom/aadhk/restpos/i;->a:Lcom/aadhk/restpos/DeliveryActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/aadhk/restpos/DeliveryActivity;->b(Lcom/aadhk/restpos/DeliveryActivity;Ljava/util/List;)Ljava/util/List;

    .line 230
    iget-object v0, p0, Lcom/aadhk/restpos/i;->a:Lcom/aadhk/restpos/DeliveryActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/DeliveryActivity;->b(Lcom/aadhk/restpos/DeliveryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Customer;

    .line 231
    iget-object v2, p0, Lcom/aadhk/restpos/i;->a:Lcom/aadhk/restpos/DeliveryActivity;

    invoke-static {v2}, Lcom/aadhk/restpos/DeliveryActivity;->c(Lcom/aadhk/restpos/DeliveryActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getTel()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 233
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/aadhk/restpos/i;->a:Lcom/aadhk/restpos/DeliveryActivity;

    const v2, 0x1090003

    iget-object v3, p0, Lcom/aadhk/restpos/i;->a:Lcom/aadhk/restpos/DeliveryActivity;

    invoke-static {v3}, Lcom/aadhk/restpos/DeliveryActivity;->c(Lcom/aadhk/restpos/DeliveryActivity;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 235
    iget-object v1, p0, Lcom/aadhk/restpos/i;->a:Lcom/aadhk/restpos/DeliveryActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/DeliveryActivity;->d(Lcom/aadhk/restpos/DeliveryActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 244
    :goto_1
    return-void

    .line 236
    :cond_1
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/i;->a:Lcom/aadhk/restpos/DeliveryActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 238
    iget-object v0, p0, Lcom/aadhk/restpos/i;->a:Lcom/aadhk/restpos/DeliveryActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 239
    :cond_3
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 240
    iget-object v0, p0, Lcom/aadhk/restpos/i;->a:Lcom/aadhk/restpos/DeliveryActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 242
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/i;->a:Lcom/aadhk/restpos/DeliveryActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
