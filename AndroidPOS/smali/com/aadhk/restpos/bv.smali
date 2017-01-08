.class final Lcom/aadhk/restpos/bv;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/OrderListActivity;

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
.method private constructor <init>(Lcom/aadhk/restpos/OrderListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/aadhk/restpos/bv;->a:Lcom/aadhk/restpos/OrderListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/OrderListActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/bv;-><init>(Lcom/aadhk/restpos/OrderListActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/aadhk/restpos/bv;->a:Lcom/aadhk/restpos/OrderListActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/OrderListActivity;->b(Lcom/aadhk/restpos/OrderListActivity;)Lcom/aadhk/restpos/g/o;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bv;->a:Lcom/aadhk/restpos/OrderListActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/OrderListActivity;->a(Lcom/aadhk/restpos/OrderListActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/g/o;->b(J)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bv;->b:Ljava/util/Map;

    .line 123
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 126
    iget-object v0, p0, Lcom/aadhk/restpos/bv;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/aadhk/restpos/bv;->a:Lcom/aadhk/restpos/OrderListActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/bv;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/OrderListActivity;->a(Lcom/aadhk/restpos/OrderListActivity;Ljava/util/List;)Ljava/util/List;

    .line 129
    iget-object v0, p0, Lcom/aadhk/restpos/bv;->a:Lcom/aadhk/restpos/OrderListActivity;

    const v1, 0x7f09015f

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/OrderListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 130
    iget-object v1, p0, Lcom/aadhk/restpos/bv;->a:Lcom/aadhk/restpos/OrderListActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/OrderListActivity;->c(Lcom/aadhk/restpos/OrderListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 131
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/bv;->a:Lcom/aadhk/restpos/OrderListActivity;

    new-instance v1, Lcom/aadhk/restpos/a/ah;

    iget-object v2, p0, Lcom/aadhk/restpos/bv;->a:Lcom/aadhk/restpos/OrderListActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/bv;->a:Lcom/aadhk/restpos/OrderListActivity;

    invoke-static {v3}, Lcom/aadhk/restpos/OrderListActivity;->c(Lcom/aadhk/restpos/OrderListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/a/ah;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/aadhk/restpos/OrderListActivity;->a(Lcom/aadhk/restpos/OrderListActivity;Lcom/aadhk/restpos/a/ah;)Lcom/aadhk/restpos/a/ah;

    .line 136
    iget-object v0, p0, Lcom/aadhk/restpos/bv;->a:Lcom/aadhk/restpos/OrderListActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/OrderListActivity;->e(Lcom/aadhk/restpos/OrderListActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bv;->a:Lcom/aadhk/restpos/OrderListActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/OrderListActivity;->d(Lcom/aadhk/restpos/OrderListActivity;)Lcom/aadhk/restpos/a/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    iget-object v0, p0, Lcom/aadhk/restpos/bv;->a:Lcom/aadhk/restpos/OrderListActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/OrderListActivity;->f(Lcom/aadhk/restpos/OrderListActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bv;->a:Lcom/aadhk/restpos/OrderListActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/OrderListActivity;->c(Lcom/aadhk/restpos/OrderListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 146
    :goto_1
    return-void

    .line 133
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 138
    :cond_1
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/bv;->a:Lcom/aadhk/restpos/OrderListActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 140
    iget-object v0, p0, Lcom/aadhk/restpos/bv;->a:Lcom/aadhk/restpos/OrderListActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 141
    :cond_3
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/aadhk/restpos/bv;->a:Lcom/aadhk/restpos/OrderListActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 144
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/bv;->a:Lcom/aadhk/restpos/OrderListActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
