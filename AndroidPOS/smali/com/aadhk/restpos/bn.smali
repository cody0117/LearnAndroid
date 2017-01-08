.class final Lcom/aadhk/restpos/bn;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/MgrTableGroupActivity;

.field private b:Lcom/aadhk/restpos/bean/TableGroup;

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
.method public constructor <init>(Lcom/aadhk/restpos/MgrTableGroupActivity;Lcom/aadhk/restpos/bean/TableGroup;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/aadhk/restpos/bn;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p2, p0, Lcom/aadhk/restpos/bn;->b:Lcom/aadhk/restpos/bean/TableGroup;

    .line 161
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/aadhk/restpos/bn;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrTableGroupActivity;->a(Lcom/aadhk/restpos/MgrTableGroupActivity;)Lcom/aadhk/restpos/g/m;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bn;->b:Lcom/aadhk/restpos/bean/TableGroup;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/m;->a(Lcom/aadhk/restpos/bean/TableGroup;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/bn;->c:Ljava/util/Map;

    .line 165
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 168
    iget-object v0, p0, Lcom/aadhk/restpos/bn;->c:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/aadhk/restpos/bn;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/bn;->c:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/MgrTableGroupActivity;->a(Lcom/aadhk/restpos/MgrTableGroupActivity;Ljava/util/List;)Ljava/util/List;

    .line 171
    iget-object v0, p0, Lcom/aadhk/restpos/bn;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrTableGroupActivity;->b(Lcom/aadhk/restpos/MgrTableGroupActivity;)V

    .line 180
    :goto_0
    return-void

    .line 172
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/bn;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 174
    iget-object v0, p0, Lcom/aadhk/restpos/bn;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 175
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    iget-object v0, p0, Lcom/aadhk/restpos/bn;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/bn;->a:Lcom/aadhk/restpos/MgrTableGroupActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
