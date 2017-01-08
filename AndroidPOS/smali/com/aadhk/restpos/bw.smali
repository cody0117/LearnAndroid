.class final Lcom/aadhk/restpos/bw;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/PayCloseOutActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/PayCloseOutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/aadhk/restpos/bw;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/aadhk/restpos/bw;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/PayCloseOutActivity;->a(Lcom/aadhk/restpos/PayCloseOutActivity;)Lcom/aadhk/restpos/bean/CloseOutCashRegister;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->setDate(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/aadhk/restpos/bw;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->w(Lcom/aadhk/restpos/PayCloseOutActivity;)V

    .line 204
    return-void
.end method
