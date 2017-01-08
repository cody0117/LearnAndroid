.class final Lcom/aadhk/restpos/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/i;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/g;

.field final synthetic b:Lcom/aadhk/restpos/e;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/e;Lcom/aadhk/restpos/c/g;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, Lcom/aadhk/restpos/g;->b:Lcom/aadhk/restpos/e;

    iput-object p2, p0, Lcom/aadhk/restpos/g;->a:Lcom/aadhk/restpos/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/aadhk/restpos/g;->b:Lcom/aadhk/restpos/e;

    iget-object v0, v0, Lcom/aadhk/restpos/e;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/DatabaseActivity;->c(Lcom/aadhk/restpos/DatabaseActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 648
    iget-object v0, p0, Lcom/aadhk/restpos/g;->b:Lcom/aadhk/restpos/e;

    iget-object v0, v0, Lcom/aadhk/restpos/e;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/DatabaseActivity;->i(Lcom/aadhk/restpos/DatabaseActivity;)V

    .line 652
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/g;->a:Lcom/aadhk/restpos/c/g;

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/g;->dismiss()V

    .line 653
    return-void

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/g;->b:Lcom/aadhk/restpos/e;

    iget-object v0, v0, Lcom/aadhk/restpos/e;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/DatabaseActivity;->c(Lcom/aadhk/restpos/DatabaseActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 650
    iget-object v0, p0, Lcom/aadhk/restpos/g;->b:Lcom/aadhk/restpos/e;

    iget-object v0, v0, Lcom/aadhk/restpos/e;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/DatabaseActivity;->j(Lcom/aadhk/restpos/DatabaseActivity;)V

    goto :goto_0
.end method
