.class final Lcom/aadhk/restpos/d/k;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/j;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/j;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/aadhk/restpos/d/k;->a:Lcom/aadhk/restpos/d/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 159
    iget-object v0, p0, Lcom/aadhk/restpos/d/k;->a:Lcom/aadhk/restpos/d/j;

    invoke-static {v0}, Lcom/aadhk/restpos/d/j;->a(Lcom/aadhk/restpos/d/j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Customer;

    .line 160
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 161
    const-string v2, "bundleCustomer"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 162
    iget-object v0, p0, Lcom/aadhk/restpos/d/k;->a:Lcom/aadhk/restpos/d/j;

    invoke-static {v0}, Lcom/aadhk/restpos/d/j;->b(Lcom/aadhk/restpos/d/j;)Lcom/aadhk/restpos/CustomerActivity;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/aadhk/restpos/CustomerActivity;->setResult(ILandroid/content/Intent;)V

    .line 163
    iget-object v0, p0, Lcom/aadhk/restpos/d/k;->a:Lcom/aadhk/restpos/d/j;

    invoke-static {v0}, Lcom/aadhk/restpos/d/j;->b(Lcom/aadhk/restpos/d/j;)Lcom/aadhk/restpos/CustomerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/CustomerActivity;->finish()V

    .line 164
    return-void
.end method
