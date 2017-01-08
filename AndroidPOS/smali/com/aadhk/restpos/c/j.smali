.class public final Lcom/aadhk/restpos/c/j;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/EditText;

.field private j:D

.field private k:D


# direct methods
.method public constructor <init>(Landroid/content/Context;DDI)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    const v0, 0x7f03003c

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 24
    iput-wide p2, p0, Lcom/aadhk/restpos/c/j;->j:D

    .line 25
    iput-wide p4, p0, Lcom/aadhk/restpos/c/j;->k:D

    .line 27
    const v0, 0x7f0900db

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/j;->f:Landroid/widget/Button;

    .line 28
    const v0, 0x7f0900da

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/j;->i:Landroid/widget/EditText;

    .line 29
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/j;->g:Landroid/widget/Button;

    .line 30
    const v0, 0x7f0900dc

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/j;->h:Landroid/widget/Button;

    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/c/j;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/c/j;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/c/j;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/c/j;->i:Landroid/widget/EditText;

    invoke-static {p2, p3}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/c/j;->i:Landroid/widget/EditText;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0xd

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/aadhk/restpos/util/g;

    invoke-direct {v3, p6}, Lcom/aadhk/restpos/util/g;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 38
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/c/j;->h:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 66
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/c/j;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/c/j;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 44
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_1

    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/c/j;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/j;->c:Landroid/content/res/Resources;

    const v2, 0x7f080085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-wide v2, p0, Lcom/aadhk/restpos/c/j;->k:D

    iget-wide v4, p0, Lcom/aadhk/restpos/c/j;->j:D

    add-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/c/j;->c:Landroid/content/res/Resources;

    const v1, 0x7f08022d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/aadhk/restpos/c/j;->k:D

    iget-wide v5, p0, Lcom/aadhk/restpos/c/j;->j:D

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Lcom/aadhk/product/library/c/h;->a(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/aadhk/restpos/c/j;->i:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/j;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/c/j;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 51
    iget-object v2, p0, Lcom/aadhk/restpos/c/j;->a:Lcom/aadhk/product/library/b/f;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/j;->dismiss()V

    goto :goto_0

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/j;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 55
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/j;->dismiss()V

    goto :goto_0

    .line 56
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/c/j;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/aadhk/restpos/c/j;->b:Lcom/aadhk/product/library/b/g;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/c/j;->b:Lcom/aadhk/product/library/b/g;

    invoke-interface {v0}, Lcom/aadhk/product/library/b/g;->a()V

    .line 59
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/j;->dismiss()V

    goto :goto_0
.end method
