.class final Lcom/aadhk/restpos/c/bx;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/bw;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/c/bw;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/aadhk/restpos/c/bx;->a:Lcom/aadhk/restpos/c/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/aadhk/restpos/c/bx;->a:Lcom/aadhk/restpos/c/bw;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bw;->a(Lcom/aadhk/restpos/c/bw;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/aadhk/restpos/c/bx;->a:Lcom/aadhk/restpos/c/bw;

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/aadhk/restpos/c/bw;->a(Lcom/aadhk/restpos/c/bw;D)D

    .line 146
    iget-object v0, p0, Lcom/aadhk/restpos/c/bx;->a:Lcom/aadhk/restpos/c/bw;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bx;->a:Lcom/aadhk/restpos/c/bw;

    invoke-static {v1}, Lcom/aadhk/restpos/c/bw;->b(Lcom/aadhk/restpos/c/bw;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/aadhk/restpos/c/bx;->a:Lcom/aadhk/restpos/c/bw;

    invoke-static {v3}, Lcom/aadhk/restpos/c/bw;->c(Lcom/aadhk/restpos/c/bw;)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/m;->b(DD)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/aadhk/restpos/c/bw;->b(Lcom/aadhk/restpos/c/bw;D)D

    .line 147
    iget-object v0, p0, Lcom/aadhk/restpos/c/bx;->a:Lcom/aadhk/restpos/c/bw;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bx;->a:Lcom/aadhk/restpos/c/bw;

    invoke-static {v1}, Lcom/aadhk/restpos/c/bw;->d(Lcom/aadhk/restpos/c/bw;)D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/h;->d(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/c/bw;->a(Lcom/aadhk/restpos/c/bw;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/aadhk/restpos/c/bx;->a:Lcom/aadhk/restpos/c/bw;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bw;->f(Lcom/aadhk/restpos/c/bw;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/c/bx;->a:Lcom/aadhk/restpos/c/bw;

    invoke-static {v1}, Lcom/aadhk/restpos/c/bw;->e(Lcom/aadhk/restpos/c/bw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/aadhk/restpos/c/bx;->a:Lcom/aadhk/restpos/c/bw;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bw;->a(Lcom/aadhk/restpos/c/bw;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/c/bx;->a:Lcom/aadhk/restpos/c/bw;

    invoke-static {v1}, Lcom/aadhk/restpos/c/bw;->a(Lcom/aadhk/restpos/c/bw;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 150
    return-void
.end method
