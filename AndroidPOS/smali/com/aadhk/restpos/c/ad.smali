.class final Lcom/aadhk/restpos/c/ad;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/ab;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/c/ab;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/aadhk/restpos/c/ad;->a:Lcom/aadhk/restpos/c/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 47
    if-eqz p2, :cond_0

    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/c/ad;->a:Lcom/aadhk/restpos/c/ab;

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ab;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 50
    :cond_0
    return-void
.end method
