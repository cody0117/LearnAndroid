.class final Lcom/aadhk/restpos/d/ik;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/RolePermission;

.field final synthetic b:Lcom/aadhk/restpos/d/ij;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/ij;Lcom/aadhk/restpos/bean/RolePermission;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/aadhk/restpos/d/ik;->b:Lcom/aadhk/restpos/d/ij;

    iput-object p2, p0, Lcom/aadhk/restpos/d/ik;->a:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v2, p0, Lcom/aadhk/restpos/d/ik;->a:Lcom/aadhk/restpos/bean/RolePermission;

    iget-object v0, p0, Lcom/aadhk/restpos/d/ik;->a:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isShow()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/RolePermission;->setShow(Z)V

    .line 118
    iget-object v0, p0, Lcom/aadhk/restpos/d/ik;->a:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/aadhk/restpos/d/ik;->a:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/RolePermission;->setManagerPermission(Z)V

    .line 120
    iget-object v0, p0, Lcom/aadhk/restpos/d/ik;->b:Lcom/aadhk/restpos/d/ij;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/ij;->notifyDataSetChanged()V

    .line 122
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 117
    goto :goto_0
.end method
