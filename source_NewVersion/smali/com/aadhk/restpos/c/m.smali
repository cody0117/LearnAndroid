.class public final Lcom/aadhk/restpos/c/m;
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
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 24
    const v0, 0x7f030034

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 25
    iput-wide p2, p0, Lcom/aadhk/restpos/c/m;->j:D

    .line 26
    iput-wide p4, p0, Lcom/aadhk/restpos/c/m;->k:D

    .line 28
    const v0, 0x7f0b00b3

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/m;->f:Landroid/widget/Button;

    .line 29
    const v0, 0x7f0b00c8

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/c/m;->i:Landroid/widget/EditText;

    .line 30
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/m;->g:Landroid/widget/Button;

    .line 31
    const v0, 0x7f0b00c9

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/m;->h:Landroid/widget/Button;

    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/c/m;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/c/m;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/c/m;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/c/m;->i:Landroid/widget/EditText;

    invoke-static {p2, p3}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/c/m;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/c/m;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/c/m;->i:Landroid/widget/EditText;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0xd

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    new-instance v2, Lcom/aadhk/restpos/f/e;

    invoke-direct {v2, p6}, Lcom/aadhk/restpos/f/e;-><init>(I)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 41
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/aadhk/restpos/c/m;->h:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 72
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/c/m;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/c/m;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aadhk/restpos/c/m;->j:D

    .line 48
    iget-wide v0, p0, Lcom/aadhk/restpos/c/m;->j:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/c/m;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/c/m;->c:Landroid/content/res/Resources;

    const v2, 0x7f090055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-wide v0, p0, Lcom/aadhk/restpos/c/m;->j:D

    iget-wide v2, p0, Lcom/aadhk/restpos/c/m;->k:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/c/m;->c:Landroid/content/res/Resources;

    const v1, 0x7f0901ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/aadhk/restpos/c/m;->k:D

    invoke-static {v3, v4}, Lcom/aadhk/product/library/c/h;->a(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/aadhk/restpos/c/m;->i:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/m;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/aadhk/restpos/c/m;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 55
    iget-object v2, p0, Lcom/aadhk/restpos/c/m;->a:Lcom/aadhk/product/library/b/f;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/m;->dismiss()V

    goto :goto_0

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/m;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 59
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/m;->dismiss()V

    goto :goto_0

    .line 60
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/c/m;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/c/m;->b:Lcom/aadhk/product/library/b/g;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/c/m;->b:Lcom/aadhk/product/library/b/g;

    invoke-interface {v0}, Lcom/aadhk/product/library/b/g;->a()V

    .line 63
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/m;->dismiss()V

    goto :goto_0

    .line 65
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/c/m;->i:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/aadhk/restpos/c/m;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0
.end method
