.class final Lcom/aadhk/restpos/d/ig;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ia;

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
.method private constructor <init>(Lcom/aadhk/restpos/d/ia;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/aadhk/restpos/d/ig;->a:Lcom/aadhk/restpos/d/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/ia;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/ig;-><init>(Lcom/aadhk/restpos/d/ia;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/aadhk/restpos/d/ig;->a:Lcom/aadhk/restpos/d/ia;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ia;->c(Lcom/aadhk/restpos/d/ia;)Lcom/aadhk/restpos/ReservationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReservationActivity;->a()Lcom/aadhk/restpos/g/x;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ig;->a:Lcom/aadhk/restpos/d/ia;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ia;->d(Lcom/aadhk/restpos/d/ia;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/x;->a(Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ig;->b:Ljava/util/Map;

    .line 196
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 200
    iget-object v0, p0, Lcom/aadhk/restpos/d/ig;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 201
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/aadhk/restpos/d/ig;->a:Lcom/aadhk/restpos/d/ia;

    iget-object v0, p0, Lcom/aadhk/restpos/d/ig;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/ia;->a(Lcom/aadhk/restpos/d/ia;Ljava/util/Map;)Ljava/util/Map;

    .line 203
    iget-object v0, p0, Lcom/aadhk/restpos/d/ig;->a:Lcom/aadhk/restpos/d/ia;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ig;->a:Lcom/aadhk/restpos/d/ia;

    invoke-static {v2}, Lcom/aadhk/restpos/d/ia;->b(Lcom/aadhk/restpos/d/ia;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/ia;->a(Lcom/aadhk/restpos/d/ia;Ljava/util/List;)Ljava/util/List;

    .line 204
    iget-object v0, p0, Lcom/aadhk/restpos/d/ig;->a:Lcom/aadhk/restpos/d/ia;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ia;->e(Lcom/aadhk/restpos/d/ia;)V

    .line 205
    iget-object v0, p0, Lcom/aadhk/restpos/d/ig;->a:Lcom/aadhk/restpos/d/ia;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ia;->f(Lcom/aadhk/restpos/d/ia;)V

    .line 214
    :goto_0
    return-void

    .line 206
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ig;->a:Lcom/aadhk/restpos/d/ia;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ia;->c(Lcom/aadhk/restpos/d/ia;)Lcom/aadhk/restpos/ReservationActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 208
    iget-object v0, p0, Lcom/aadhk/restpos/d/ig;->a:Lcom/aadhk/restpos/d/ia;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ia;->c(Lcom/aadhk/restpos/d/ia;)Lcom/aadhk/restpos/ReservationActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 209
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/aadhk/restpos/d/ig;->a:Lcom/aadhk/restpos/d/ia;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ia;->c(Lcom/aadhk/restpos/d/ia;)Lcom/aadhk/restpos/ReservationActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 212
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/ig;->a:Lcom/aadhk/restpos/d/ia;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ia;->c(Lcom/aadhk/restpos/d/ia;)Lcom/aadhk/restpos/ReservationActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
