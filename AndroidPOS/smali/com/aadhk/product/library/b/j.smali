.class final Lcom/aadhk/product/library/b/j;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/aadhk/product/library/b/i;


# direct methods
.method constructor <init>(Lcom/aadhk/product/library/b/i;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/aadhk/product/library/b/j;->b:Lcom/aadhk/product/library/b/i;

    iput p2, p0, Lcom/aadhk/product/library/b/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/aadhk/product/library/b/j;->b:Lcom/aadhk/product/library/b/i;

    iget-object v0, v0, Lcom/aadhk/product/library/b/i;->a:Lcom/aadhk/product/library/b/h;

    invoke-static {v0}, Lcom/aadhk/product/library/b/h;->b(Lcom/aadhk/product/library/b/h;)[Z

    move-result-object v1

    iget v2, p0, Lcom/aadhk/product/library/b/j;->a:I

    iget-object v0, p0, Lcom/aadhk/product/library/b/j;->b:Lcom/aadhk/product/library/b/i;

    iget-object v0, v0, Lcom/aadhk/product/library/b/i;->a:Lcom/aadhk/product/library/b/h;

    invoke-static {v0}, Lcom/aadhk/product/library/b/h;->b(Lcom/aadhk/product/library/b/h;)[Z

    move-result-object v0

    iget v3, p0, Lcom/aadhk/product/library/b/j;->a:I

    aget-boolean v0, v0, v3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    aput-boolean v0, v1, v2

    .line 77
    iget-object v0, p0, Lcom/aadhk/product/library/b/j;->b:Lcom/aadhk/product/library/b/i;

    invoke-virtual {v0}, Lcom/aadhk/product/library/b/i;->notifyDataSetChanged()V

    .line 78
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
