.class final Lcom/aadhk/restpos/bp;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/MgrTableGroupActivity;

.field private b:I

.field private c:Ljava/util/Map;
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
.method public constructor <init>(Lcom/aadhk/restpos/MgrTableGroupActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/aadhk/restpos/bp;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput p2, p0, Lcom/aadhk/restpos/bp;->b:I

    .line 225
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/aadhk/restpos/bp;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrTableGroupActivity;->a(Lcom/aadhk/restpos/MgrTableGroupActivity;)Lcom/aadhk/restpos/g/m;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/bp;->b:I

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/m;->a(I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bp;->c:Ljava/util/Map;

    .line 229
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 232
    iget-object v0, p0, Lcom/aadhk/restpos/bp;->c:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 233
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/aadhk/restpos/bp;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/bp;->c:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/MgrTableGroupActivity;->a(Lcom/aadhk/restpos/MgrTableGroupActivity;Ljava/util/List;)Ljava/util/List;

    .line 235
    iget-object v0, p0, Lcom/aadhk/restpos/bp;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrTableGroupActivity;->b(Lcom/aadhk/restpos/MgrTableGroupActivity;)V

    .line 248
    :goto_0
    return-void

    .line 236
    :cond_0
    const-string v1, "25"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/bp;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 238
    iget-object v1, p0, Lcom/aadhk/restpos/bp;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    const v2, 0x7f0800cb

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/MgrTableGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    goto :goto_0

    .line 240
    :cond_1
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/bp;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 242
    iget-object v0, p0, Lcom/aadhk/restpos/bp;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 243
    :cond_3
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 244
    iget-object v0, p0, Lcom/aadhk/restpos/bp;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 246
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/bp;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
