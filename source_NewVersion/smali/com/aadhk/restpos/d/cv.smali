.class final Lcom/aadhk/restpos/d/cv;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/i;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/Order;

.field final synthetic b:Lcom/aadhk/restpos/d/cu;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/cu;Lcom/aadhk/restpos/bean/Order;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/aadhk/restpos/d/cv;->b:Lcom/aadhk/restpos/d/cu;

    iput-object p2, p0, Lcom/aadhk/restpos/d/cv;->a:Lcom/aadhk/restpos/bean/Order;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/d/cv;->b:Lcom/aadhk/restpos/d/cu;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cu;->a(Lcom/aadhk/restpos/d/cu;)Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/cv;->a:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Lcom/aadhk/restpos/bean/Order;)V

    .line 101
    return-void
.end method
