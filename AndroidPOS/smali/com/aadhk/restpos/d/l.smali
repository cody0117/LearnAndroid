.class final Lcom/aadhk/restpos/d/l;
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
    .line 167
    iput-object p1, p0, Lcom/aadhk/restpos/d/l;->a:Lcom/aadhk/restpos/d/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 170
    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->a:Lcom/aadhk/restpos/d/j;

    invoke-static {v0, p3}, Lcom/aadhk/restpos/d/j;->a(Lcom/aadhk/restpos/d/j;I)I

    .line 171
    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->a:Lcom/aadhk/restpos/d/j;

    invoke-static {v0}, Lcom/aadhk/restpos/d/j;->c(Lcom/aadhk/restpos/d/j;)Lcom/aadhk/restpos/d/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/n;->notifyDataSetChanged()V

    .line 172
    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->a:Lcom/aadhk/restpos/d/j;

    invoke-static {v0}, Lcom/aadhk/restpos/d/j;->b(Lcom/aadhk/restpos/d/j;)Lcom/aadhk/restpos/CustomerActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/aadhk/restpos/d/l;->a:Lcom/aadhk/restpos/d/j;

    invoke-static {v0}, Lcom/aadhk/restpos/d/j;->a(Lcom/aadhk/restpos/d/j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/CustomerActivity;->a(Lcom/aadhk/restpos/bean/Customer;)V

    .line 173
    return-void
.end method
