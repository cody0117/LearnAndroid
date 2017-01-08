.class final Lcom/aadhk/restpos/d/iq;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ip;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/ip;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/aadhk/restpos/d/iq;->a:Lcom/aadhk/restpos/d/ip;

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
    iget-object v0, p0, Lcom/aadhk/restpos/d/iq;->a:Lcom/aadhk/restpos/d/ip;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ip;->a(Lcom/aadhk/restpos/d/ip;)Lcom/aadhk/restpos/RolePermissionActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/RolePermissionActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/d/iq;->a:Lcom/aadhk/restpos/d/ip;

    invoke-static {v0, p3}, Lcom/aadhk/restpos/d/ip;->a(Lcom/aadhk/restpos/d/ip;I)I

    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/d/iq;->a:Lcom/aadhk/restpos/d/ip;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ip;->b(Lcom/aadhk/restpos/d/ip;)Lcom/aadhk/restpos/d/ir;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/ir;->notifyDataSetInvalidated()V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/iq;->a:Lcom/aadhk/restpos/d/ip;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ip;->a(Lcom/aadhk/restpos/d/ip;)Lcom/aadhk/restpos/RolePermissionActivity;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/RolePermissionActivity;->a(I)V

    .line 64
    return-void
.end method
