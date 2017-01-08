.class public final Lcom/aadhk/product/library/b/k;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/ListView;

.field private i:[Ljava/lang/String;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    sget v0, Lcom/aadhk/product/library/c;->b:I

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 26
    iput-object p2, p0, Lcom/aadhk/product/library/b/k;->i:[Ljava/lang/String;

    .line 27
    iput p3, p0, Lcom/aadhk/product/library/b/k;->j:I

    .line 29
    sget v0, Lcom/aadhk/product/library/b;->b:I

    invoke-virtual {p0, v0}, Lcom/aadhk/product/library/b/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/product/library/b/k;->f:Landroid/widget/Button;

    .line 30
    sget v0, Lcom/aadhk/product/library/b;->a:I

    invoke-virtual {p0, v0}, Lcom/aadhk/product/library/b/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/product/library/b/k;->g:Landroid/widget/Button;

    .line 31
    iget-object v0, p0, Lcom/aadhk/product/library/b/k;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/aadhk/product/library/b/k;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    sget v0, Lcom/aadhk/product/library/b;->f:I

    invoke-virtual {p0, v0}, Lcom/aadhk/product/library/b/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/product/library/b/k;->h:Landroid/widget/ListView;

    .line 35
    iget-object v0, p0, Lcom/aadhk/product/library/b/k;->h:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/product/library/b/l;

    invoke-direct {v1, p0, p1}, Lcom/aadhk/product/library/b/l;-><init>(Lcom/aadhk/product/library/b/k;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/aadhk/product/library/b/k;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput p1, p0, Lcom/aadhk/product/library/b/k;->j:I

    return p1
.end method

.method static synthetic a(Lcom/aadhk/product/library/b/k;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/aadhk/product/library/b/k;->i:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/product/library/b/k;)I
    .locals 1
    .parameter

    .prologue
    .line 16
    iget v0, p0, Lcom/aadhk/product/library/b/k;->j:I

    return v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aadhk/product/library/b/k;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/aadhk/product/library/b/k;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/aadhk/product/library/b/k;->a:Lcom/aadhk/product/library/b/f;

    iget v1, p0, Lcom/aadhk/product/library/b/k;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0}, Lcom/aadhk/product/library/b/k;->dismiss()V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/aadhk/product/library/b/k;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/aadhk/product/library/b/k;->dismiss()V

    goto :goto_0
.end method
