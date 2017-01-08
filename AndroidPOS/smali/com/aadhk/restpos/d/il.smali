.class final Lcom/aadhk/restpos/d/il;
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
    .line 124
    iput-object p1, p0, Lcom/aadhk/restpos/d/il;->b:Lcom/aadhk/restpos/d/ij;

    iput-object p2, p0, Lcom/aadhk/restpos/d/il;->a:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 127
    iget-object v2, p0, Lcom/aadhk/restpos/d/il;->a:Lcom/aadhk/restpos/bean/RolePermission;

    iget-object v0, p0, Lcom/aadhk/restpos/d/il;->a:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isManagerPermission()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/RolePermission;->setManagerPermission(Z)V

    .line 128
    iget-object v0, p0, Lcom/aadhk/restpos/d/il;->a:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isManagerPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/aadhk/restpos/d/il;->a:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/RolePermission;->setShow(Z)V

    .line 130
    iget-object v0, p0, Lcom/aadhk/restpos/d/il;->b:Lcom/aadhk/restpos/d/ij;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/ij;->notifyDataSetChanged()V

    .line 132
    :cond_0
    return-void

    .line 127
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
