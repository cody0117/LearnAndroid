.class final Lcom/aadhk/restpos/d/eh;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/du;

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
.method private constructor <init>(Lcom/aadhk/restpos/d/du;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/aadhk/restpos/d/eh;->a:Lcom/aadhk/restpos/d/du;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/du;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/eh;-><init>(Lcom/aadhk/restpos/d/du;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/aadhk/restpos/d/eh;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->b(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/g/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/eh;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v1}, Lcom/aadhk/restpos/d/du;->a(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/g/ad;->a(J)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eh;->b:Ljava/util/Map;

    .line 148
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 152
    iget-object v0, p0, Lcom/aadhk/restpos/d/eh;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    iget-object v1, p0, Lcom/aadhk/restpos/d/eh;->a:Lcom/aadhk/restpos/d/du;

    iget-object v0, p0, Lcom/aadhk/restpos/d/eh;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/du;->a(Lcom/aadhk/restpos/d/du;Ljava/util/List;)Ljava/util/List;

    .line 155
    iget-object v0, p0, Lcom/aadhk/restpos/d/eh;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->c(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/aadhk/restpos/d/eh;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->d(Lcom/aadhk/restpos/d/du;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aadhk/restpos/util/e;

    invoke-direct {v1}, Lcom/aadhk/restpos/util/e;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/eh;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/eh;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v1}, Lcom/aadhk/restpos/d/du;->d(Lcom/aadhk/restpos/d/du;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Ljava/util/List;)V

    .line 161
    iget-object v0, p0, Lcom/aadhk/restpos/d/eh;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->a(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v0

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/aadhk/restpos/d/eh;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->f(Lcom/aadhk/restpos/d/du;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/eh;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->g(Lcom/aadhk/restpos/d/du;)V

    .line 167
    iget-object v0, p0, Lcom/aadhk/restpos/d/eh;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->h(Lcom/aadhk/restpos/d/du;)V

    .line 176
    :goto_1
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/eh;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->f(Lcom/aadhk/restpos/d/du;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 168
    :cond_2
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/eh;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 170
    iget-object v0, p0, Lcom/aadhk/restpos/d/eh;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 171
    :cond_4
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 172
    iget-object v0, p0, Lcom/aadhk/restpos/d/eh;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 174
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/eh;->a:Lcom/aadhk/restpos/d/du;

    invoke-static {v0}, Lcom/aadhk/restpos/d/du;->e(Lcom/aadhk/restpos/d/du;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
