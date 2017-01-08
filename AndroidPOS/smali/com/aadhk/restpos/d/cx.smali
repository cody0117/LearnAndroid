.class final Lcom/aadhk/restpos/d/cx;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/cf;

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

.field private c:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/cf;Ljava/lang/StringBuilder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/aadhk/restpos/d/cx;->a:Lcom/aadhk/restpos/d/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p2, p0, Lcom/aadhk/restpos/d/cx;->c:Ljava/lang/StringBuilder;

    .line 174
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 178
    invoke-static {}, Lcom/aadhk/restpos/d/cf;->a()Lcom/aadhk/restpos/g/k;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/cx;->a:Lcom/aadhk/restpos/d/cf;

    invoke-static {v1}, Lcom/aadhk/restpos/d/cf;->b(Lcom/aadhk/restpos/d/cf;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/aadhk/restpos/d/cx;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/aadhk/restpos/g/k;->a(JLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cx;->b:Ljava/util/Map;

    .line 179
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 183
    iget-object v0, p0, Lcom/aadhk/restpos/d/cx;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/aadhk/restpos/d/cx;->a:Lcom/aadhk/restpos/d/cf;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cf;->c(Lcom/aadhk/restpos/d/cf;)Lcom/aadhk/restpos/d/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/cq;->notifyDataSetChanged()V

    .line 186
    iget-object v0, p0, Lcom/aadhk/restpos/d/cx;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v0, v0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->a()V

    .line 187
    iget-object v0, p0, Lcom/aadhk/restpos/d/cx;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v0, v0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/aadhk/restpos/d/cx;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v0, v0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/MgrItemActivity;->a(Lcom/aadhk/restpos/bean/Item;)V

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/cx;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v0, v0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cx;->a:Lcom/aadhk/restpos/d/cf;

    const v2, 0x7f08028f

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/d/cf;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 201
    :goto_1
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/cx;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v0, v0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->b()V

    goto :goto_0

    .line 193
    :cond_1
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/cx;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v0, v0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 195
    iget-object v0, p0, Lcom/aadhk/restpos/d/cx;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v0, v0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 196
    :cond_3
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 197
    iget-object v0, p0, Lcom/aadhk/restpos/d/cx;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v0, v0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 199
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/cx;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v0, v0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
