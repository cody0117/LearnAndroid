.class final Lcom/aadhk/restpos/ch;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/PaymentActivity;

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
.method private constructor <init>(Lcom/aadhk/restpos/PaymentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/aadhk/restpos/ch;->a:Lcom/aadhk/restpos/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/PaymentActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/ch;-><init>(Lcom/aadhk/restpos/PaymentActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 188
    iget-object v0, p0, Lcom/aadhk/restpos/ch;->a:Lcom/aadhk/restpos/PaymentActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PaymentActivity;->a(Lcom/aadhk/restpos/PaymentActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/aadhk/restpos/ch;->a:Lcom/aadhk/restpos/PaymentActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PaymentActivity;->b(Lcom/aadhk/restpos/PaymentActivity;)Lcom/aadhk/restpos/g/s;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/ch;->a:Lcom/aadhk/restpos/PaymentActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/PaymentActivity;->a(Lcom/aadhk/restpos/PaymentActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/aadhk/restpos/ch;->a:Lcom/aadhk/restpos/PaymentActivity;

    invoke-static {v3}, Lcom/aadhk/restpos/PaymentActivity;->a(Lcom/aadhk/restpos/PaymentActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Order;->getBillId()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/g/s;->a(JJ)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/ch;->b:Ljava/util/Map;

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/ch;->a:Lcom/aadhk/restpos/PaymentActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PaymentActivity;->b(Lcom/aadhk/restpos/PaymentActivity;)Lcom/aadhk/restpos/g/s;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/ch;->a:Lcom/aadhk/restpos/PaymentActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/PaymentActivity;->a(Lcom/aadhk/restpos/PaymentActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/g/s;->a(J)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/ch;->b:Ljava/util/Map;

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 197
    iget-object v0, p0, Lcom/aadhk/restpos/ch;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    iget-object v1, p0, Lcom/aadhk/restpos/ch;->a:Lcom/aadhk/restpos/PaymentActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/ch;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/PaymentActivity;->a(Lcom/aadhk/restpos/PaymentActivity;Ljava/util/List;)Ljava/util/List;

    .line 201
    iget-object v0, p0, Lcom/aadhk/restpos/ch;->a:Lcom/aadhk/restpos/PaymentActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/ch;->a:Lcom/aadhk/restpos/PaymentActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/PaymentActivity;->c(Lcom/aadhk/restpos/PaymentActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/PaymentActivity;->a(Lcom/aadhk/restpos/PaymentActivity;Ljava/util/List;)Ljava/util/List;

    .line 202
    iget-object v0, p0, Lcom/aadhk/restpos/ch;->a:Lcom/aadhk/restpos/PaymentActivity;

    iget-object v0, v0, Lcom/aadhk/restpos/PaymentActivity;->c:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/aadhk/restpos/ch;->a:Lcom/aadhk/restpos/PaymentActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PaymentActivity;->d(Lcom/aadhk/restpos/PaymentActivity;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aadhk/restpos/util/e;

    invoke-direct {v1}, Lcom/aadhk/restpos/util/e;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/ch;->a:Lcom/aadhk/restpos/PaymentActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/ch;->a:Lcom/aadhk/restpos/PaymentActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/PaymentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/PaymentActivity;->a(Lcom/aadhk/restpos/PaymentActivity;Landroid/support/v4/app/FragmentManager;)Landroid/support/v4/app/FragmentManager;

    .line 207
    iget-object v0, p0, Lcom/aadhk/restpos/ch;->a:Lcom/aadhk/restpos/PaymentActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PaymentActivity;->e(Lcom/aadhk/restpos/PaymentActivity;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/aadhk/restpos/ch;->a:Lcom/aadhk/restpos/PaymentActivity;

    new-instance v2, Lcom/aadhk/restpos/d/ey;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/ey;-><init>()V

    invoke-static {v1, v2}, Lcom/aadhk/restpos/PaymentActivity;->a(Lcom/aadhk/restpos/PaymentActivity;Lcom/aadhk/restpos/d/ey;)Lcom/aadhk/restpos/d/ey;

    .line 209
    const v1, 0x7f090060

    iget-object v2, p0, Lcom/aadhk/restpos/ch;->a:Lcom/aadhk/restpos/PaymentActivity;

    invoke-static {v2}, Lcom/aadhk/restpos/PaymentActivity;->f(Lcom/aadhk/restpos/PaymentActivity;)Lcom/aadhk/restpos/d/ey;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 210
    iget-object v1, p0, Lcom/aadhk/restpos/ch;->a:Lcom/aadhk/restpos/PaymentActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/PaymentActivity;->g(Lcom/aadhk/restpos/PaymentActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/aadhk/restpos/ch;->a:Lcom/aadhk/restpos/PaymentActivity;

    new-instance v2, Lcom/aadhk/restpos/d/fp;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/fp;-><init>()V

    invoke-static {v1, v2}, Lcom/aadhk/restpos/PaymentActivity;->a(Lcom/aadhk/restpos/PaymentActivity;Lcom/aadhk/restpos/d/fp;)Lcom/aadhk/restpos/d/fp;

    .line 212
    const v1, 0x7f09005f

    iget-object v2, p0, Lcom/aadhk/restpos/ch;->a:Lcom/aadhk/restpos/PaymentActivity;

    invoke-static {v2}, Lcom/aadhk/restpos/PaymentActivity;->h(Lcom/aadhk/restpos/PaymentActivity;)Lcom/aadhk/restpos/d/fp;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 214
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 223
    :goto_0
    return-void

    .line 215
    :cond_2
    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    iget-object v0, p0, Lcom/aadhk/restpos/ch;->a:Lcom/aadhk/restpos/PaymentActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 217
    iget-object v0, p0, Lcom/aadhk/restpos/ch;->a:Lcom/aadhk/restpos/PaymentActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 218
    :cond_3
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 219
    iget-object v0, p0, Lcom/aadhk/restpos/ch;->a:Lcom/aadhk/restpos/PaymentActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 221
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/ch;->a:Lcom/aadhk/restpos/PaymentActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
