.class final Lcom/aadhk/restpos/d/em;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:I

.field final synthetic c:Lcom/aadhk/restpos/d/ek;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/ek;Landroid/widget/EditText;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/aadhk/restpos/d/em;->c:Lcom/aadhk/restpos/d/ek;

    iput-object p2, p0, Lcom/aadhk/restpos/d/em;->a:Landroid/widget/EditText;

    iput p3, p0, Lcom/aadhk/restpos/d/em;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 242
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/aadhk/restpos/d/em;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget v1, p0, Lcom/aadhk/restpos/d/em;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 245
    iget-object v1, p0, Lcom/aadhk/restpos/d/em;->c:Lcom/aadhk/restpos/d/ek;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/ek;->d(Lcom/aadhk/restpos/d/ek;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/em;->c:Lcom/aadhk/restpos/d/ek;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ek;->e(Lcom/aadhk/restpos/d/ek;)Lcom/aadhk/restpos/ReportListActivity;

    move-result-object v0

    iget-boolean v0, v0, Lcom/aadhk/restpos/ReportListActivity;->a:Z

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/aadhk/restpos/d/em;->c:Lcom/aadhk/restpos/d/ek;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ek;->f(Lcom/aadhk/restpos/d/ek;)V

    .line 252
    :cond_0
    return-void

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/d/em;->c:Lcom/aadhk/restpos/d/ek;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/ek;->e(Lcom/aadhk/restpos/d/ek;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
