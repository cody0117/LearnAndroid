.class final Lcom/aadhk/restpos/u;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/KitchenActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/KitchenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/aadhk/restpos/u;->a:Lcom/aadhk/restpos/KitchenActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 424
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 425
    iget-object v0, p0, Lcom/aadhk/restpos/u;->a:Lcom/aadhk/restpos/KitchenActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/KitchenActivity;->c()V

    .line 427
    :cond_0
    return-void
.end method
