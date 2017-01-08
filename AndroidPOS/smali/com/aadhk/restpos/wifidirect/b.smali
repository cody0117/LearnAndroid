.class final Lcom/aadhk/restpos/wifidirect/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/aadhk/restpos/wifidirect/b;->a:Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/b;->a:Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;

    invoke-virtual {v0}, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/wifidirect/g;

    invoke-interface {v0}, Lcom/aadhk/restpos/wifidirect/g;->a()V

    .line 127
    return-void
.end method
