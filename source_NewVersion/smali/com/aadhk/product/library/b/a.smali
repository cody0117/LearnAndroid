.class public final Lcom/aadhk/product/library/b/a;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private f:Lcom/aadhk/product/library/b/d;

.field private g:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 24
    sget v0, Lcom/aadhk/product/library/c;->a:I

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 25
    iput-object p2, p0, Lcom/aadhk/product/library/b/a;->g:[Ljava/lang/String;

    .line 26
    sget v0, Lcom/aadhk/product/library/b;->f:I

    invoke-virtual {p0, v0}, Lcom/aadhk/product/library/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/product/library/b/b;

    iget-object v2, p0, Lcom/aadhk/product/library/b/a;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/aadhk/product/library/b/a;->g:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/aadhk/product/library/b/b;-><init>(Lcom/aadhk/product/library/b/a;Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 27
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/product/library/b/a;->f:Lcom/aadhk/product/library/b/d;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/aadhk/product/library/b/a;->f:Lcom/aadhk/product/library/b/d;

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/aadhk/product/library/b/a;->dismiss()V

    .line 41
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aadhk/product/library/b/a;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/aadhk/product/library/b/a;->a:Lcom/aadhk/product/library/b/f;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/aadhk/product/library/b/a;->dismiss()V

    .line 50
    return-void
.end method
