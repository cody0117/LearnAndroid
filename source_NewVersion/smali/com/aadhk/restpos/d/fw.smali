.class final Lcom/aadhk/restpos/d/fw;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/fu;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/fu;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/aadhk/restpos/d/fw;->a:Lcom/aadhk/restpos/d/fu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 204
    if-eqz p2, :cond_0

    .line 205
    iget-object v0, p0, Lcom/aadhk/restpos/d/fw;->a:Lcom/aadhk/restpos/d/fu;

    invoke-static {v0}, Lcom/aadhk/restpos/d/fu;->b(Lcom/aadhk/restpos/d/fu;)Lcom/aadhk/restpos/UserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/UserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 207
    :cond_0
    return-void
.end method
