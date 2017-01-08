.class final Lcom/aadhk/restpos/d/dj;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/db;

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

.field private c:Lcom/aadhk/restpos/bean/Modifier;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/db;Lcom/aadhk/restpos/bean/Modifier;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/aadhk/restpos/d/dj;->a:Lcom/aadhk/restpos/d/db;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p2, p0, Lcom/aadhk/restpos/d/dj;->c:Lcom/aadhk/restpos/bean/Modifier;

    .line 181
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/aadhk/restpos/d/dj;->a:Lcom/aadhk/restpos/d/db;

    invoke-static {v0}, Lcom/aadhk/restpos/d/db;->c(Lcom/aadhk/restpos/d/db;)Lcom/aadhk/restpos/g/l;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/dj;->c:Lcom/aadhk/restpos/bean/Modifier;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Modifier;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/g/l;->a(J)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dj;->b:Ljava/util/Map;

    .line 186
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 190
    iget-object v0, p0, Lcom/aadhk/restpos/d/dj;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 191
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/aadhk/restpos/d/dj;->a:Lcom/aadhk/restpos/d/db;

    invoke-static {v0}, Lcom/aadhk/restpos/d/db;->d(Lcom/aadhk/restpos/d/db;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/dj;->c:Lcom/aadhk/restpos/bean/Modifier;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/aadhk/restpos/d/dj;->a:Lcom/aadhk/restpos/d/db;

    invoke-static {v0}, Lcom/aadhk/restpos/d/db;->a(Lcom/aadhk/restpos/d/db;)Lcom/aadhk/restpos/d/dh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/dh;->notifyDataSetChanged()V

    .line 202
    :goto_0
    return-void

    .line 194
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/dj;->a:Lcom/aadhk/restpos/d/db;

    invoke-static {v0}, Lcom/aadhk/restpos/d/db;->b(Lcom/aadhk/restpos/d/db;)Lcom/aadhk/restpos/MgrModifierActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 196
    iget-object v0, p0, Lcom/aadhk/restpos/d/dj;->a:Lcom/aadhk/restpos/d/db;

    invoke-static {v0}, Lcom/aadhk/restpos/d/db;->b(Lcom/aadhk/restpos/d/db;)Lcom/aadhk/restpos/MgrModifierActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 197
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p0, Lcom/aadhk/restpos/d/dj;->a:Lcom/aadhk/restpos/d/db;

    invoke-static {v0}, Lcom/aadhk/restpos/d/db;->b(Lcom/aadhk/restpos/d/db;)Lcom/aadhk/restpos/MgrModifierActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/dj;->a:Lcom/aadhk/restpos/d/db;

    invoke-static {v0}, Lcom/aadhk/restpos/d/db;->b(Lcom/aadhk/restpos/d/db;)Lcom/aadhk/restpos/MgrModifierActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
