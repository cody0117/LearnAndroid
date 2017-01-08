.class final Lcom/aadhk/restpos/d/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/e;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/e;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/aadhk/restpos/d/f;->a:Lcom/aadhk/restpos/d/e;

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
    .line 132
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->a:Lcom/aadhk/restpos/d/e;

    invoke-static {v0}, Lcom/aadhk/restpos/d/e;->a(Lcom/aadhk/restpos/d/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Customer;

    .line 133
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 134
    const-string v2, "bundleCustomer"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 135
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->a:Lcom/aadhk/restpos/d/e;

    invoke-static {v0}, Lcom/aadhk/restpos/d/e;->b(Lcom/aadhk/restpos/d/e;)Lcom/aadhk/restpos/CustomerActivity;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/aadhk/restpos/CustomerActivity;->setResult(ILandroid/content/Intent;)V

    .line 136
    iget-object v0, p0, Lcom/aadhk/restpos/d/f;->a:Lcom/aadhk/restpos/d/e;

    invoke-static {v0}, Lcom/aadhk/restpos/d/e;->b(Lcom/aadhk/restpos/d/e;)Lcom/aadhk/restpos/CustomerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/CustomerActivity;->finish()V

    .line 139
    return-void
.end method
