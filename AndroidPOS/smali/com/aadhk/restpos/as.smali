.class final Lcom/aadhk/restpos/as;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/MgrItemActivity;

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
.method private constructor <init>(Lcom/aadhk/restpos/MgrItemActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/aadhk/restpos/as;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/MgrItemActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/as;-><init>(Lcom/aadhk/restpos/MgrItemActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/aadhk/restpos/as;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrItemActivity;->a(Lcom/aadhk/restpos/MgrItemActivity;)Lcom/aadhk/restpos/g/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/g/k;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/as;->b:Ljava/util/Map;

    .line 155
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 159
    iget-object v0, p0, Lcom/aadhk/restpos/as;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/aadhk/restpos/as;->a:Lcom/aadhk/restpos/MgrItemActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/as;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/MgrItemActivity;->b(Lcom/aadhk/restpos/MgrItemActivity;Ljava/util/Map;)Ljava/util/Map;

    .line 170
    :goto_0
    return-void

    .line 162
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/as;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 164
    iget-object v0, p0, Lcom/aadhk/restpos/as;->a:Lcom/aadhk/restpos/MgrItemActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 165
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/aadhk/restpos/as;->a:Lcom/aadhk/restpos/MgrItemActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/as;->a:Lcom/aadhk/restpos/MgrItemActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
