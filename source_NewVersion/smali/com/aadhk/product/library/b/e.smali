.class public Lcom/aadhk/product/library/b/e;
.super Landroid/app/Dialog;
.source "ProGuard"


# instance fields
.field public a:Lcom/aadhk/product/library/b/f;

.field public b:Lcom/aadhk/product/library/b/g;

.field public c:Landroid/content/res/Resources;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 22
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/aadhk/product/library/b/e;->requestWindowFeature(I)Z

    .line 24
    invoke-virtual {p0, v0}, Lcom/aadhk/product/library/b/e;->setCancelable(Z)V

    .line 25
    invoke-virtual {p0, p2}, Lcom/aadhk/product/library/b/e;->setContentView(I)V

    .line 26
    iput-object p1, p0, Lcom/aadhk/product/library/b/e;->e:Landroid/content/Context;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/product/library/b/e;->c:Landroid/content/res/Resources;

    .line 28
    sget v0, Lcom/aadhk/product/library/b;->d:I

    invoke-virtual {p0, v0}, Lcom/aadhk/product/library/b/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/product/library/b/e;->d:Landroid/widget/TextView;

    .line 29
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/aadhk/product/library/b/e;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    return-void
.end method

.method public final a(Lcom/aadhk/product/library/b/f;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/aadhk/product/library/b/e;->a:Lcom/aadhk/product/library/b/f;

    .line 47
    return-void
.end method

.method public final a(Lcom/aadhk/product/library/b/g;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/aadhk/product/library/b/e;->b:Lcom/aadhk/product/library/b/g;

    .line 55
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/aadhk/product/library/b/e;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 39
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/product/library/b/e;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    return-void
.end method
