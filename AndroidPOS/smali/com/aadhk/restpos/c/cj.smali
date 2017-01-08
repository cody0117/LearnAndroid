.class final Lcom/aadhk/restpos/c/cj;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/ch;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/c/ch;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/aadhk/restpos/c/cj;->a:Lcom/aadhk/restpos/c/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 153
    if-nez p2, :cond_0

    .line 154
    iget-object v0, p0, Lcom/aadhk/restpos/c/cj;->a:Lcom/aadhk/restpos/c/ch;

    invoke-static {v0}, Lcom/aadhk/restpos/c/ch;->a(Lcom/aadhk/restpos/c/ch;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/aadhk/restpos/c/cj;->a:Lcom/aadhk/restpos/c/ch;

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/aadhk/restpos/c/ch;->a(Lcom/aadhk/restpos/c/ch;D)D

    .line 156
    iget-object v0, p0, Lcom/aadhk/restpos/c/cj;->a:Lcom/aadhk/restpos/c/ch;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cj;->a:Lcom/aadhk/restpos/c/ch;

    invoke-static {v1}, Lcom/aadhk/restpos/c/ch;->b(Lcom/aadhk/restpos/c/ch;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/aadhk/restpos/c/cj;->a:Lcom/aadhk/restpos/c/ch;

    invoke-static {v3}, Lcom/aadhk/restpos/c/ch;->c(Lcom/aadhk/restpos/c/ch;)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/m;->b(DD)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/aadhk/restpos/c/ch;->b(Lcom/aadhk/restpos/c/ch;D)D

    .line 157
    iget-object v0, p0, Lcom/aadhk/restpos/c/cj;->a:Lcom/aadhk/restpos/c/ch;

    iget-object v1, p0, Lcom/aadhk/restpos/c/cj;->a:Lcom/aadhk/restpos/c/ch;

    invoke-static {v1}, Lcom/aadhk/restpos/c/ch;->d(Lcom/aadhk/restpos/c/ch;)D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/h;->d(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/c/ch;->a(Lcom/aadhk/restpos/c/ch;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/aadhk/restpos/c/cj;->a:Lcom/aadhk/restpos/c/ch;

    invoke-static {v0}, Lcom/aadhk/restpos/c/ch;->f(Lcom/aadhk/restpos/c/ch;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/c/cj;->a:Lcom/aadhk/restpos/c/ch;

    invoke-static {v1}, Lcom/aadhk/restpos/c/ch;->e(Lcom/aadhk/restpos/c/ch;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :cond_0
    return-void
.end method
