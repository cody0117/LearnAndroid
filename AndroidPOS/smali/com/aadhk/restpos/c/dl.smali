.class final Lcom/aadhk/restpos/c/dl;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/di;

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
.method private constructor <init>(Lcom/aadhk/restpos/c/di;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/aadhk/restpos/c/dl;->a:Lcom/aadhk/restpos/c/di;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/c/di;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/c/dl;-><init>(Lcom/aadhk/restpos/c/di;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/c/dl;->a:Lcom/aadhk/restpos/c/di;

    invoke-static {v0}, Lcom/aadhk/restpos/c/di;->d(Lcom/aadhk/restpos/c/di;)Lcom/aadhk/restpos/g/x;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/c/dl;->a:Lcom/aadhk/restpos/c/di;

    invoke-static {v1}, Lcom/aadhk/restpos/c/di;->c(Lcom/aadhk/restpos/c/di;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/x;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/dl;->b:Ljava/util/Map;

    .line 101
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/c/dl;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/aadhk/restpos/c/dl;->a:Lcom/aadhk/restpos/c/di;

    iget-object v0, p0, Lcom/aadhk/restpos/c/dl;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/c/di;->a(Lcom/aadhk/restpos/c/di;Ljava/util/List;)Ljava/util/List;

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/c/dl;->a:Lcom/aadhk/restpos/c/di;

    invoke-static {v0}, Lcom/aadhk/restpos/c/di;->e(Lcom/aadhk/restpos/c/di;)Landroid/widget/GridView;

    move-result-object v0

    new-instance v1, Lcom/aadhk/restpos/c/dj;

    iget-object v2, p0, Lcom/aadhk/restpos/c/dl;->a:Lcom/aadhk/restpos/c/di;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/c/dj;-><init>(Lcom/aadhk/restpos/c/di;B)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/dl;->a:Lcom/aadhk/restpos/c/di;

    invoke-static {v0}, Lcom/aadhk/restpos/c/di;->f(Lcom/aadhk/restpos/c/di;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 110
    iget-object v0, p0, Lcom/aadhk/restpos/c/dl;->a:Lcom/aadhk/restpos/c/di;

    invoke-static {v0}, Lcom/aadhk/restpos/c/di;->f(Lcom/aadhk/restpos/c/di;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 111
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/aadhk/restpos/c/dl;->a:Lcom/aadhk/restpos/c/di;

    invoke-static {v0}, Lcom/aadhk/restpos/c/di;->f(Lcom/aadhk/restpos/c/di;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/dl;->a:Lcom/aadhk/restpos/c/di;

    invoke-static {v0}, Lcom/aadhk/restpos/c/di;->f(Lcom/aadhk/restpos/c/di;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
