.class final Lcom/aadhk/restpos/d/ge;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/gb;

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
.method private constructor <init>(Lcom/aadhk/restpos/d/gb;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/aadhk/restpos/d/ge;->a:Lcom/aadhk/restpos/d/gb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/gb;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/ge;-><init>(Lcom/aadhk/restpos/d/gb;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/d/ge;->a:Lcom/aadhk/restpos/d/gb;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gb;->a(Lcom/aadhk/restpos/d/gb;)Lcom/aadhk/restpos/g/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/g/t;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ge;->b:Ljava/util/Map;

    .line 82
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 86
    iget-object v0, p0, Lcom/aadhk/restpos/d/ge;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/aadhk/restpos/d/ge;->a:Lcom/aadhk/restpos/d/gb;

    iget-object v0, p0, Lcom/aadhk/restpos/d/ge;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/gb;->a(Lcom/aadhk/restpos/d/gb;Ljava/util/List;)Ljava/util/List;

    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/d/ge;->a:Lcom/aadhk/restpos/d/gb;

    new-instance v1, Lcom/aadhk/restpos/d/gc;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ge;->a:Lcom/aadhk/restpos/d/gb;

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/d/gc;-><init>(Lcom/aadhk/restpos/d/gb;B)V

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/gb;->a(Lcom/aadhk/restpos/d/gb;Lcom/aadhk/restpos/d/gc;)Lcom/aadhk/restpos/d/gc;

    .line 90
    iget-object v0, p0, Lcom/aadhk/restpos/d/ge;->a:Lcom/aadhk/restpos/d/gb;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gb;->c(Lcom/aadhk/restpos/d/gb;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ge;->a:Lcom/aadhk/restpos/d/gb;

    invoke-static {v1}, Lcom/aadhk/restpos/d/gb;->b(Lcom/aadhk/restpos/d/gb;)Lcom/aadhk/restpos/d/gc;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/d/ge;->a:Lcom/aadhk/restpos/d/gb;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gb;->d(Lcom/aadhk/restpos/d/gb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/d/ge;->a:Lcom/aadhk/restpos/d/gb;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gb;->e(Lcom/aadhk/restpos/d/gb;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ge;->a:Lcom/aadhk/restpos/d/gb;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gb;->e(Lcom/aadhk/restpos/d/gb;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 96
    :cond_1
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/ge;->a:Lcom/aadhk/restpos/d/gb;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gb;->f(Lcom/aadhk/restpos/d/gb;)Lcom/aadhk/restpos/PriceScheduleActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 98
    iget-object v0, p0, Lcom/aadhk/restpos/d/ge;->a:Lcom/aadhk/restpos/d/gb;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gb;->f(Lcom/aadhk/restpos/d/gb;)Lcom/aadhk/restpos/PriceScheduleActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 99
    :cond_3
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/d/ge;->a:Lcom/aadhk/restpos/d/gb;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gb;->f(Lcom/aadhk/restpos/d/gb;)Lcom/aadhk/restpos/PriceScheduleActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 102
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/ge;->a:Lcom/aadhk/restpos/d/gb;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gb;->f(Lcom/aadhk/restpos/d/gb;)Lcom/aadhk/restpos/PriceScheduleActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
