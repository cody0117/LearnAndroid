.class final Lcom/aadhk/restpos/c/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/d;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/c/d;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/aadhk/restpos/c/e;->a:Lcom/aadhk/restpos/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/c/e;->a:Lcom/aadhk/restpos/c/d;

    invoke-static {v0}, Lcom/aadhk/restpos/c/d;->a(Lcom/aadhk/restpos/c/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    .line 73
    iget-object v1, p0, Lcom/aadhk/restpos/c/e;->a:Lcom/aadhk/restpos/c/d;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aadhk/restpos/c/d;->a(Lcom/aadhk/restpos/c/d;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/aadhk/restpos/c/e;->a:Lcom/aadhk/restpos/c/d;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/aadhk/restpos/c/d;->a(Lcom/aadhk/restpos/c/d;J)J

    .line 75
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 80
    return-void
.end method
