.class public final Lcom/aadhk/product/library/b/h;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/ListView;

.field private i:[Ljava/lang/String;

.field private j:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;[Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    sget v0, Lcom/aadhk/product/library/c;->c:I

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 26
    iput-object p2, p0, Lcom/aadhk/product/library/b/h;->i:[Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/aadhk/product/library/b/h;->j:[Z

    .line 29
    sget v0, Lcom/aadhk/product/library/b;->b:I

    invoke-virtual {p0, v0}, Lcom/aadhk/product/library/b/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/product/library/b/h;->f:Landroid/widget/Button;

    .line 30
    sget v0, Lcom/aadhk/product/library/b;->a:I

    invoke-virtual {p0, v0}, Lcom/aadhk/product/library/b/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/product/library/b/h;->g:Landroid/widget/Button;

    .line 31
    iget-object v0, p0, Lcom/aadhk/product/library/b/h;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/aadhk/product/library/b/h;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    sget v0, Lcom/aadhk/product/library/b;->f:I

    invoke-virtual {p0, v0}, Lcom/aadhk/product/library/b/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/product/library/b/h;->h:Landroid/widget/ListView;

    .line 35
    iget-object v0, p0, Lcom/aadhk/product/library/b/h;->h:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/product/library/b/i;

    invoke-direct {v1, p0, p1}, Lcom/aadhk/product/library/b/i;-><init>(Lcom/aadhk/product/library/b/h;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/aadhk/product/library/b/h;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/aadhk/product/library/b/h;->i:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/product/library/b/h;)[Z
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/aadhk/product/library/b/h;->j:[Z

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aadhk/product/library/b/h;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/aadhk/product/library/b/h;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/aadhk/product/library/b/h;->a:Lcom/aadhk/product/library/b/f;

    iget-object v1, p0, Lcom/aadhk/product/library/b/h;->j:[Z

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p0}, Lcom/aadhk/product/library/b/h;->dismiss()V

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/aadhk/product/library/b/h;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/aadhk/product/library/b/h;->dismiss()V

    goto :goto_0
.end method
