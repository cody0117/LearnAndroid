.class final Lcom/aadhk/restpos/d/gg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/gf;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/gf;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/aadhk/restpos/d/gg;->a:Lcom/aadhk/restpos/d/gf;

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
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/gg;->a:Lcom/aadhk/restpos/d/gf;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gf;->a(Lcom/aadhk/restpos/d/gf;)Lcom/aadhk/restpos/UserPermissionActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/UserPermissionActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/d/gg;->a:Lcom/aadhk/restpos/d/gf;

    invoke-static {v0, p3}, Lcom/aadhk/restpos/d/gf;->a(Lcom/aadhk/restpos/d/gf;I)I

    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/d/gg;->a:Lcom/aadhk/restpos/d/gf;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gf;->b(Lcom/aadhk/restpos/d/gf;)Lcom/aadhk/restpos/d/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/gh;->notifyDataSetInvalidated()V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/gg;->a:Lcom/aadhk/restpos/d/gf;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gf;->a(Lcom/aadhk/restpos/d/gf;)Lcom/aadhk/restpos/UserPermissionActivity;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/UserPermissionActivity;->a(I)V

    .line 64
    return-void
.end method
