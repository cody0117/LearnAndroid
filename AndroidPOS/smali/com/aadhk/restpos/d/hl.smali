.class final Lcom/aadhk/restpos/d/hl;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:I

.field final synthetic c:Lcom/aadhk/restpos/d/hk;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/hk;Landroid/widget/EditText;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/aadhk/restpos/d/hl;->c:Lcom/aadhk/restpos/d/hk;

    iput-object p2, p0, Lcom/aadhk/restpos/d/hl;->a:Landroid/widget/EditText;

    iput p3, p0, Lcom/aadhk/restpos/d/hl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/aadhk/restpos/d/hl;->a:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/aadhk/restpos/d/hl;->c:Lcom/aadhk/restpos/d/hk;

    invoke-static {v2}, Lcom/aadhk/restpos/d/hk;->g(Lcom/aadhk/restpos/d/hk;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/aadhk/restpos/util/o;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v1, p0, Lcom/aadhk/restpos/d/hl;->c:Lcom/aadhk/restpos/d/hk;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/hk;->a(Lcom/aadhk/restpos/d/hk;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    iget v1, p0, Lcom/aadhk/restpos/d/hl;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 215
    iget-object v1, p0, Lcom/aadhk/restpos/d/hl;->c:Lcom/aadhk/restpos/d/hk;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/hk;->b(Lcom/aadhk/restpos/d/hk;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/hl;->c:Lcom/aadhk/restpos/d/hk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/hk;->e(Lcom/aadhk/restpos/d/hk;)Lcom/aadhk/restpos/ReportListActivity;

    move-result-object v0

    iget-boolean v0, v0, Lcom/aadhk/restpos/ReportListActivity;->a:Z

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/aadhk/restpos/d/hl;->c:Lcom/aadhk/restpos/d/hk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/hk;->f(Lcom/aadhk/restpos/d/hk;)V

    .line 222
    :cond_0
    return-void

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/d/hl;->c:Lcom/aadhk/restpos/d/hk;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/hk;->c(Lcom/aadhk/restpos/d/hk;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
