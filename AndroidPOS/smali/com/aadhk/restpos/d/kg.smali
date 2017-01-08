.class final Lcom/aadhk/restpos/d/kg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ke;

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
.method private constructor <init>(Lcom/aadhk/restpos/d/ke;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/aadhk/restpos/d/kg;->a:Lcom/aadhk/restpos/d/ke;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/ke;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/kg;-><init>(Lcom/aadhk/restpos/d/ke;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/aadhk/restpos/d/kg;->a:Lcom/aadhk/restpos/d/ke;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ke;->b(Lcom/aadhk/restpos/d/ke;)Lcom/aadhk/restpos/g/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/kg;->a:Lcom/aadhk/restpos/d/ke;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ke;->a(Lcom/aadhk/restpos/d/ke;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/ac;->a(I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/kg;->b:Ljava/util/Map;

    .line 116
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 120
    iget-object v0, p0, Lcom/aadhk/restpos/d/kg;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/aadhk/restpos/d/kg;->a:Lcom/aadhk/restpos/d/ke;

    iget-object v0, p0, Lcom/aadhk/restpos/d/kg;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/ke;->a(Lcom/aadhk/restpos/d/ke;Ljava/util/List;)Ljava/util/List;

    .line 123
    iget-object v0, p0, Lcom/aadhk/restpos/d/kg;->a:Lcom/aadhk/restpos/d/ke;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ke;->d(Lcom/aadhk/restpos/d/ke;)Lcom/aadhk/restpos/a/aj;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/kg;->a:Lcom/aadhk/restpos/d/ke;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ke;->c(Lcom/aadhk/restpos/d/ke;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/a/aj;->a(Ljava/util/List;)V

    .line 124
    iget-object v0, p0, Lcom/aadhk/restpos/d/kg;->a:Lcom/aadhk/restpos/d/ke;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ke;->d(Lcom/aadhk/restpos/d/ke;)Lcom/aadhk/restpos/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/a/aj;->notifyDataSetChanged()V

    .line 133
    :goto_0
    return-void

    .line 125
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/kg;->a:Lcom/aadhk/restpos/d/ke;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ke;->e(Lcom/aadhk/restpos/d/ke;)Lcom/aadhk/restpos/TableListActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 127
    iget-object v0, p0, Lcom/aadhk/restpos/d/kg;->a:Lcom/aadhk/restpos/d/ke;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ke;->e(Lcom/aadhk/restpos/d/ke;)Lcom/aadhk/restpos/TableListActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 128
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/aadhk/restpos/d/kg;->a:Lcom/aadhk/restpos/d/ke;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ke;->e(Lcom/aadhk/restpos/d/ke;)Lcom/aadhk/restpos/TableListActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/kg;->a:Lcom/aadhk/restpos/d/ke;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ke;->e(Lcom/aadhk/restpos/d/ke;)Lcom/aadhk/restpos/TableListActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
