.class final Lcom/aadhk/restpos/d/g;
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
    .line 142
    iput-object p1, p0, Lcom/aadhk/restpos/d/g;->a:Lcom/aadhk/restpos/d/e;

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
    .line 145
    iget-object v0, p0, Lcom/aadhk/restpos/d/g;->a:Lcom/aadhk/restpos/d/e;

    invoke-static {v0, p3}, Lcom/aadhk/restpos/d/e;->a(Lcom/aadhk/restpos/d/e;I)I

    .line 146
    iget-object v0, p0, Lcom/aadhk/restpos/d/g;->a:Lcom/aadhk/restpos/d/e;

    invoke-static {v0}, Lcom/aadhk/restpos/d/e;->c(Lcom/aadhk/restpos/d/e;)Lcom/aadhk/restpos/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/i;->notifyDataSetChanged()V

    .line 147
    iget-object v0, p0, Lcom/aadhk/restpos/d/g;->a:Lcom/aadhk/restpos/d/e;

    invoke-static {v0}, Lcom/aadhk/restpos/d/e;->b(Lcom/aadhk/restpos/d/e;)Lcom/aadhk/restpos/CustomerActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/aadhk/restpos/d/g;->a:Lcom/aadhk/restpos/d/e;

    invoke-static {v0}, Lcom/aadhk/restpos/d/e;->a(Lcom/aadhk/restpos/d/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/CustomerActivity;->a(Lcom/aadhk/restpos/bean/Customer;)V

    .line 148
    return-void
.end method
