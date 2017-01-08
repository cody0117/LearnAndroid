.class public final Lcom/aadhk/restpos/c/bu;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Lcom/aadhk/restpos/c/bv;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aadhk/restpos/bean/POSPrinterSetting;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    const v0, 0x7f03005a

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 22
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bu;->setCancelable(Z)V

    .line 23
    const v0, 0x7f090136

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bu;->i:Landroid/widget/TextView;

    .line 24
    const v0, 0x7f090137

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bu;->j:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f090138

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bu;->k:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f0900db

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bu;->f:Landroid/widget/Button;

    .line 27
    const v0, 0x7f090139

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bu;->g:Landroid/widget/Button;

    .line 28
    iget-object v0, p0, Lcom/aadhk/restpos/c/bu;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v0, p0, Lcom/aadhk/restpos/c/bu;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/c/bu;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/c/bu;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/c/bu;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {p5}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/c/bu;->g:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/c/bv;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/aadhk/restpos/c/bu;->h:Lcom/aadhk/restpos/c/bv;

    .line 54
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/c/bu;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/c/bu;->h:Lcom/aadhk/restpos/c/bv;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/c/bu;->h:Lcom/aadhk/restpos/c/bv;

    invoke-interface {v0}, Lcom/aadhk/restpos/c/bv;->a()V

    .line 48
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/bu;->dismiss()V

    .line 50
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/bu;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/c/bu;->h:Lcom/aadhk/restpos/c/bv;

    invoke-interface {v0}, Lcom/aadhk/restpos/c/bv;->b()V

    goto :goto_0
.end method
