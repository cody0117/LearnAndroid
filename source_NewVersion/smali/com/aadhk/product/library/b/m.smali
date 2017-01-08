.class final Lcom/aadhk/product/library/b/m;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/aadhk/product/library/b/l;


# direct methods
.method constructor <init>(Lcom/aadhk/product/library/b/l;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/aadhk/product/library/b/m;->b:Lcom/aadhk/product/library/b/l;

    iput p2, p0, Lcom/aadhk/product/library/b/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/aadhk/product/library/b/m;->b:Lcom/aadhk/product/library/b/l;

    iget-object v0, v0, Lcom/aadhk/product/library/b/l;->a:Lcom/aadhk/product/library/b/k;

    iget v1, p0, Lcom/aadhk/product/library/b/m;->a:I

    invoke-static {v0, v1}, Lcom/aadhk/product/library/b/k;->a(Lcom/aadhk/product/library/b/k;I)I

    .line 82
    iget-object v0, p0, Lcom/aadhk/product/library/b/m;->b:Lcom/aadhk/product/library/b/l;

    invoke-virtual {v0}, Lcom/aadhk/product/library/b/l;->notifyDataSetChanged()V

    .line 83
    return-void
.end method
