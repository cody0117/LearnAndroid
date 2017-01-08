.class final Lcom/aadhk/restpos/d/dt;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/i;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/dr;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/dr;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/aadhk/restpos/d/dt;->a:Lcom/aadhk/restpos/d/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/aadhk/restpos/d/dt;->a:Lcom/aadhk/restpos/d/dr;

    invoke-static {v0}, Lcom/aadhk/restpos/d/dr;->c(Lcom/aadhk/restpos/d/dr;)Lcom/aadhk/restpos/b/m;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/dt;->a:Lcom/aadhk/restpos/d/dr;

    invoke-static {v1}, Lcom/aadhk/restpos/d/dr;->b(Lcom/aadhk/restpos/d/dr;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/m;->a(J)V

    .line 230
    iget-object v0, p0, Lcom/aadhk/restpos/d/dt;->a:Lcom/aadhk/restpos/d/dr;

    invoke-static {v0}, Lcom/aadhk/restpos/d/dr;->d(Lcom/aadhk/restpos/d/dr;)Lcom/aadhk/restpos/ReceiptListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->a()V

    .line 231
    return-void
.end method
