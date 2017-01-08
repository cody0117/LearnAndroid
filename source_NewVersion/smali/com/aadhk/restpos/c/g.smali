.class public final Lcom/aadhk/restpos/c/g;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Lcom/aadhk/restpos/c/h;

.field private i:Lcom/aadhk/restpos/c/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    const v0, 0x7f03002d

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 21
    const v0, 0x7f0b00b3

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/g;->f:Landroid/widget/Button;

    .line 22
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/g;->g:Landroid/widget/Button;

    .line 24
    iget-object v0, p0, Lcom/aadhk/restpos/c/g;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p0, Lcom/aadhk/restpos/c/g;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/c/i;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/aadhk/restpos/c/g;->i:Lcom/aadhk/restpos/c/i;

    .line 58
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/c/g;->f:Landroid/widget/Button;

    const v1, 0x7f0901d4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 46
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/c/g;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/c/g;->i:Lcom/aadhk/restpos/c/i;

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/c/g;->i:Lcom/aadhk/restpos/c/i;

    invoke-interface {v0}, Lcom/aadhk/restpos/c/i;->a()V

    .line 40
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/g;->dismiss()V

    .line 42
    :cond_1
    return-void

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/g;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/c/g;->h:Lcom/aadhk/restpos/c/h;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/c/g;->h:Lcom/aadhk/restpos/c/h;

    goto :goto_0
.end method
