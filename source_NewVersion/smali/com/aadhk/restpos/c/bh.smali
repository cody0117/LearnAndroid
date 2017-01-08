.class final Lcom/aadhk/restpos/c/bh;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/be;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/c/be;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/aadhk/restpos/c/bh;->a:Lcom/aadhk/restpos/c/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 182
    if-nez p2, :cond_0

    .line 183
    iget-object v0, p0, Lcom/aadhk/restpos/c/bh;->a:Lcom/aadhk/restpos/c/be;

    invoke-static {v0}, Lcom/aadhk/restpos/c/be;->d(Lcom/aadhk/restpos/c/be;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/aadhk/restpos/c/bh;->a:Lcom/aadhk/restpos/c/be;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/aadhk/restpos/c/be;->a(Lcom/aadhk/restpos/c/be;I)I

    .line 186
    iget-object v0, p0, Lcom/aadhk/restpos/c/bh;->a:Lcom/aadhk/restpos/c/be;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bh;->a:Lcom/aadhk/restpos/c/be;

    invoke-static {v1}, Lcom/aadhk/restpos/c/be;->c(Lcom/aadhk/restpos/c/be;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/aadhk/restpos/c/bh;->a:Lcom/aadhk/restpos/c/be;

    invoke-static {v3}, Lcom/aadhk/restpos/c/be;->e(Lcom/aadhk/restpos/c/be;)I

    move-result v3

    iget-object v4, p0, Lcom/aadhk/restpos/c/bh;->a:Lcom/aadhk/restpos/c/be;

    invoke-static {v4}, Lcom/aadhk/restpos/c/be;->f(Lcom/aadhk/restpos/c/be;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/f/h;->a(DII)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/aadhk/restpos/c/be;->a(Lcom/aadhk/restpos/c/be;D)D

    .line 187
    iget-object v0, p0, Lcom/aadhk/restpos/c/bh;->a:Lcom/aadhk/restpos/c/be;

    invoke-static {v0}, Lcom/aadhk/restpos/c/be;->a(Lcom/aadhk/restpos/c/be;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/c/bh;->a:Lcom/aadhk/restpos/c/be;

    invoke-static {v1}, Lcom/aadhk/restpos/c/be;->b(Lcom/aadhk/restpos/c/be;)D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/h;->c(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :cond_0
    return-void
.end method
