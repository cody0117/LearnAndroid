.class final Lcom/aadhk/restpos/d/km;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/kk;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/kk;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/aadhk/restpos/d/km;->a:Lcom/aadhk/restpos/d/kk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 259
    if-eqz p2, :cond_0

    .line 260
    iget-object v0, p0, Lcom/aadhk/restpos/d/km;->a:Lcom/aadhk/restpos/d/kk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/kk;->b(Lcom/aadhk/restpos/d/kk;)Lcom/aadhk/restpos/UserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/UserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 262
    :cond_0
    return-void
.end method
