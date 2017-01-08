.class final Lcom/aadhk/restpos/d/in;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ii;

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
.method private constructor <init>(Lcom/aadhk/restpos/d/ii;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/aadhk/restpos/d/in;->a:Lcom/aadhk/restpos/d/ii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/ii;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/in;-><init>(Lcom/aadhk/restpos/d/ii;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/aadhk/restpos/d/in;->a:Lcom/aadhk/restpos/d/ii;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ii;->c(Lcom/aadhk/restpos/d/ii;)Lcom/aadhk/restpos/g/y;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/in;->a:Lcom/aadhk/restpos/d/ii;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ii;->a(Lcom/aadhk/restpos/d/ii;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/y;->a(I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/in;->b:Ljava/util/Map;

    .line 176
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 180
    iget-object v0, p0, Lcom/aadhk/restpos/d/in;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/aadhk/restpos/d/in;->a:Lcom/aadhk/restpos/d/ii;

    iget-object v0, p0, Lcom/aadhk/restpos/d/in;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/ii;->a(Lcom/aadhk/restpos/d/ii;Ljava/util/List;)Ljava/util/List;

    .line 183
    iget-object v0, p0, Lcom/aadhk/restpos/d/in;->a:Lcom/aadhk/restpos/d/ii;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ii;->d(Lcom/aadhk/restpos/d/ii;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/aadhk/restpos/d/ij;

    iget-object v2, p0, Lcom/aadhk/restpos/d/in;->a:Lcom/aadhk/restpos/d/ii;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/d/ij;-><init>(Lcom/aadhk/restpos/d/ii;B)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    :goto_0
    return-void

    .line 184
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/in;->a:Lcom/aadhk/restpos/d/ii;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ii;->e(Lcom/aadhk/restpos/d/ii;)Lcom/aadhk/restpos/RolePermissionActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 186
    iget-object v0, p0, Lcom/aadhk/restpos/d/in;->a:Lcom/aadhk/restpos/d/ii;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ii;->e(Lcom/aadhk/restpos/d/ii;)Lcom/aadhk/restpos/RolePermissionActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 187
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    iget-object v0, p0, Lcom/aadhk/restpos/d/in;->a:Lcom/aadhk/restpos/d/ii;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ii;->e(Lcom/aadhk/restpos/d/ii;)Lcom/aadhk/restpos/RolePermissionActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/in;->a:Lcom/aadhk/restpos/d/ii;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ii;->e(Lcom/aadhk/restpos/d/ii;)Lcom/aadhk/restpos/RolePermissionActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
