.class final Lcom/aadhk/restpos/d/dq;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/dm;

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
.method private constructor <init>(Lcom/aadhk/restpos/d/dm;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/aadhk/restpos/d/dq;->a:Lcom/aadhk/restpos/d/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/dm;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/dq;-><init>(Lcom/aadhk/restpos/d/dm;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/d/dq;->a:Lcom/aadhk/restpos/d/dm;

    invoke-static {v0}, Lcom/aadhk/restpos/d/dm;->a(Lcom/aadhk/restpos/d/dm;)Lcom/aadhk/restpos/g/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/g/l;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dq;->b:Ljava/util/Map;

    .line 100
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/d/dq;->b:Ljava/util/Map;

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
    iget-object v1, p0, Lcom/aadhk/restpos/d/dq;->a:Lcom/aadhk/restpos/d/dm;

    iget-object v0, p0, Lcom/aadhk/restpos/d/dq;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/dm;->a(Lcom/aadhk/restpos/d/dm;Ljava/util/List;)Ljava/util/List;

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/d/dq;->a:Lcom/aadhk/restpos/d/dm;

    invoke-static {v0}, Lcom/aadhk/restpos/d/dm;->b(Lcom/aadhk/restpos/d/dm;)V

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
    iget-object v0, p0, Lcom/aadhk/restpos/d/dq;->a:Lcom/aadhk/restpos/d/dm;

    invoke-static {v0}, Lcom/aadhk/restpos/d/dm;->c(Lcom/aadhk/restpos/d/dm;)Lcom/aadhk/restpos/MgrModifierActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 110
    iget-object v0, p0, Lcom/aadhk/restpos/d/dq;->a:Lcom/aadhk/restpos/d/dm;

    invoke-static {v0}, Lcom/aadhk/restpos/d/dm;->c(Lcom/aadhk/restpos/d/dm;)Lcom/aadhk/restpos/MgrModifierActivity;

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
    iget-object v0, p0, Lcom/aadhk/restpos/d/dq;->a:Lcom/aadhk/restpos/d/dm;

    invoke-static {v0}, Lcom/aadhk/restpos/d/dm;->c(Lcom/aadhk/restpos/d/dm;)Lcom/aadhk/restpos/MgrModifierActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/dq;->a:Lcom/aadhk/restpos/d/dm;

    invoke-static {v0}, Lcom/aadhk/restpos/d/dm;->c(Lcom/aadhk/restpos/d/dm;)Lcom/aadhk/restpos/MgrModifierActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method