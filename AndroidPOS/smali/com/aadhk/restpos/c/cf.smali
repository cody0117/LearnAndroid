.class final Lcom/aadhk/restpos/c/cf;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/cd;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/c/cd;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/aadhk/restpos/c/cf;->a:Lcom/aadhk/restpos/c/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 155
    if-nez p2, :cond_0

    .line 156
    iget-object v0, p0, Lcom/aadhk/restpos/c/cf;->a:Lcom/aadhk/restpos/c/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/c/cd;->a(Lcom/aadhk/restpos/c/cd;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/aadhk/restpos/c/cf;->a:Lcom/aadhk/restpos/c/cd;

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/aadhk/restpos/c/cd;->a(Lcom/aadhk/restpos/c/cd;D)D

    .line 158
    iget-object v0, p0, Lcom/aadhk/restpos/c/cf;->a:Lcom/aadhk/restpos/c/cd;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cf;->a:Lcom/aadhk/restpos/c/cd;

    invoke-static {v1}, Lcom/aadhk/restpos/c/cd;->b(Lcom/aadhk/restpos/c/cd;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/aadhk/restpos/c/cf;->a:Lcom/aadhk/restpos/c/cd;

    invoke-static {v3}, Lcom/aadhk/restpos/c/cd;->c(Lcom/aadhk/restpos/c/cd;)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/m;->b(DD)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/aadhk/restpos/c/cd;->b(Lcom/aadhk/restpos/c/cd;D)D

    .line 159
    iget-object v0, p0, Lcom/aadhk/restpos/c/cf;->a:Lcom/aadhk/restpos/c/cd;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cf;->a:Lcom/aadhk/restpos/c/cd;

    invoke-static {v1}, Lcom/aadhk/restpos/c/cd;->d(Lcom/aadhk/restpos/c/cd;)D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/h;->d(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/c/cd;->a(Lcom/aadhk/restpos/c/cd;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/aadhk/restpos/c/cf;->a:Lcom/aadhk/restpos/c/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/c/cd;->f(Lcom/aadhk/restpos/c/cd;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/c/cf;->a:Lcom/aadhk/restpos/c/cd;

    invoke-static {v1}, Lcom/aadhk/restpos/c/cd;->e(Lcom/aadhk/restpos/c/cd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/aadhk/restpos/c/cf;->a:Lcom/aadhk/restpos/c/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/c/cd;->a(Lcom/aadhk/restpos/c/cd;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/c/cf;->a:Lcom/aadhk/restpos/c/cd;

    invoke-static {v1}, Lcom/aadhk/restpos/c/cd;->a(Lcom/aadhk/restpos/c/cd;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 163
    :cond_0
    return-void
.end method
