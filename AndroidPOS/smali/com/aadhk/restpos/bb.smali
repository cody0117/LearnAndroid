.class final Lcom/aadhk/restpos/bb;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/MgrTableActivity;

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

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Table;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/MgrTableActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Table;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    iput-object p1, p0, Lcom/aadhk/restpos/bb;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p2, p0, Lcom/aadhk/restpos/bb;->c:Ljava/util/List;

    .line 212
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/aadhk/restpos/bb;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrTableActivity;->c(Lcom/aadhk/restpos/MgrTableActivity;)Lcom/aadhk/restpos/g/n;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bb;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/n;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bb;->b:Ljava/util/Map;

    .line 216
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 219
    iget-object v0, p0, Lcom/aadhk/restpos/bb;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 220
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/aadhk/restpos/bb;->a:Lcom/aadhk/restpos/MgrTableActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/bb;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/MgrTableActivity;->a(Lcom/aadhk/restpos/MgrTableActivity;Ljava/util/List;)Ljava/util/List;

    .line 222
    iget-object v0, p0, Lcom/aadhk/restpos/bb;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrTableActivity;->d(Lcom/aadhk/restpos/MgrTableActivity;)V

    .line 231
    :goto_0
    return-void

    .line 223
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/bb;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 225
    iget-object v0, p0, Lcom/aadhk/restpos/bb;->a:Lcom/aadhk/restpos/MgrTableActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 226
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/aadhk/restpos/bb;->a:Lcom/aadhk/restpos/MgrTableActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/bb;->a:Lcom/aadhk/restpos/MgrTableActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
