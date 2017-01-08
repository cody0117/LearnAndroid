.class public final Lcom/aadhk/restpos/c/bd;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    const v0, 0x7f03004b

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bd;->setCancelable(Z)V

    .line 21
    const v0, 0x7f0b00f8

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bd;->g:Landroid/widget/TextView;

    .line 22
    const v0, 0x7f0b00f9

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bd;->h:Landroid/widget/TextView;

    .line 23
    const v0, 0x7f0b00fa

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bd;->i:Landroid/widget/TextView;

    .line 24
    const v0, 0x7f0b00b3

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bd;->f:Landroid/widget/Button;

    .line 25
    iget-object v0, p0, Lcom/aadhk/restpos/c/bd;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v0, p0, Lcom/aadhk/restpos/c/bd;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lcom/aadhk/restpos/c/bd;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/aadhk/restpos/c/bd;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/c/bd;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/c/bd;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/c/bd;->a:Lcom/aadhk/product/library/b/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/bd;->dismiss()V

    .line 42
    return-void
.end method
