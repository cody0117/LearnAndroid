.class final Lcom/aadhk/restpos/d/gc;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/RolePermission;

.field final synthetic b:Lcom/aadhk/restpos/d/gb;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/gb;Lcom/aadhk/restpos/bean/RolePermission;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/aadhk/restpos/d/gc;->b:Lcom/aadhk/restpos/d/gb;

    iput-object p2, p0, Lcom/aadhk/restpos/d/gc;->a:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 112
    iget-object v1, p0, Lcom/aadhk/restpos/d/gc;->a:Lcom/aadhk/restpos/bean/RolePermission;

    iget-object v0, p0, Lcom/aadhk/restpos/d/gc;->a:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/RolePermission;->setShow(Z)V

    .line 113
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
