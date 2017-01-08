.class final Lcom/aadhk/restpos/d/al;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/i;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ag;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/aadhk/restpos/d/al;->a:Lcom/aadhk/restpos/d/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 340
    invoke-static {}, Lcom/aadhk/restpos/d/ag;->a()Lcom/aadhk/restpos/b/i;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/al;->a:Lcom/aadhk/restpos/d/ag;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ag;->b(Lcom/aadhk/restpos/d/ag;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/i;->b(J)V

    .line 341
    iget-object v0, p0, Lcom/aadhk/restpos/d/al;->a:Lcom/aadhk/restpos/d/ag;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ag;->c(Lcom/aadhk/restpos/d/ag;)Lcom/aadhk/restpos/d/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/ao;->notifyDataSetChanged()V

    .line 342
    iget-object v0, p0, Lcom/aadhk/restpos/d/al;->a:Lcom/aadhk/restpos/d/ag;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ag;->d(Lcom/aadhk/restpos/d/ag;)Lcom/aadhk/restpos/MgrItemActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->c()V

    .line 343
    return-void
.end method
