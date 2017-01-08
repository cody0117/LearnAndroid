.class final Lcom/aadhk/restpos/d/cz;
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

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/cf;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/aadhk/restpos/d/cz;->a:Lcom/aadhk/restpos/d/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput p2, p0, Lcom/aadhk/restpos/d/cz;->c:I

    .line 339
    iput p3, p0, Lcom/aadhk/restpos/d/cz;->d:I

    .line 340
    iput p4, p0, Lcom/aadhk/restpos/d/cz;->e:I

    .line 341
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 345
    invoke-static {}, Lcom/aadhk/restpos/d/cf;->a()Lcom/aadhk/restpos/g/k;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/cz;->a:Lcom/aadhk/restpos/d/cf;

    invoke-static {v1}, Lcom/aadhk/restpos/d/cf;->b(Lcom/aadhk/restpos/d/cf;)J

    move-result-wide v1

    iget v3, p0, Lcom/aadhk/restpos/d/cz;->c:I

    iget v4, p0, Lcom/aadhk/restpos/d/cz;->d:I

    iget v5, p0, Lcom/aadhk/restpos/d/cz;->e:I

    invoke-virtual/range {v0 .. v5}, Lcom/aadhk/restpos/g/k;->a(JIII)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cz;->b:Ljava/util/Map;

    .line 346
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 350
    iget-object v0, p0, Lcom/aadhk/restpos/d/cz;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 351
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/aadhk/restpos/d/cz;->a:Lcom/aadhk/restpos/d/cf;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cf;->c(Lcom/aadhk/restpos/d/cf;)Lcom/aadhk/restpos/d/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/cq;->notifyDataSetChanged()V

    .line 353
    iget-object v0, p0, Lcom/aadhk/restpos/d/cz;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v0, v0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->a()V

    .line 354
    iget-object v0, p0, Lcom/aadhk/restpos/d/cz;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v0, v0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cz;->a:Lcom/aadhk/restpos/d/cf;

    const v2, 0x7f08028f

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/d/cf;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 363
    :goto_0
    return-void

    .line 355
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/cz;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v0, v0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 357
    iget-object v0, p0, Lcom/aadhk/restpos/d/cz;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v0, v0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 358
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 359
    iget-object v0, p0, Lcom/aadhk/restpos/d/cz;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v0, v0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 361
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/cz;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v0, v0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
