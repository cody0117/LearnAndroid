.class final Lcom/aadhk/restpos/d/ea;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/bm;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/OrderItem;

.field final synthetic b:Lcom/aadhk/restpos/d/du;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/du;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/aadhk/restpos/d/ea;->b:Lcom/aadhk/restpos/d/du;

    iput-object p2, p0, Lcom/aadhk/restpos/d/ea;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/aadhk/restpos/d/ea;->b:Lcom/aadhk/restpos/d/du;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ea;->a:Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/d/du;->a(Lcom/aadhk/restpos/bean/OrderItem;)V

    .line 523
    return-void
.end method
