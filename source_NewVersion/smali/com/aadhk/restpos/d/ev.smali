.class final Lcom/aadhk/restpos/d/ev;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/eu;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/eu;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/aadhk/restpos/d/ev;->a:Lcom/aadhk/restpos/d/eu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 117
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 118
    if-lez v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/aadhk/restpos/d/ev;->a:Lcom/aadhk/restpos/d/eu;

    invoke-static {v1}, Lcom/aadhk/restpos/d/eu;->a(Lcom/aadhk/restpos/d/eu;)Ljava/util/List;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/User;

    .line 120
    iget-object v1, p0, Lcom/aadhk/restpos/d/ev;->a:Lcom/aadhk/restpos/d/eu;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/eu;->a(Lcom/aadhk/restpos/d/eu;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ev;->a:Lcom/aadhk/restpos/d/eu;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/eu;->c()V

    .line 125
    iget-object v0, p0, Lcom/aadhk/restpos/d/ev;->a:Lcom/aadhk/restpos/d/eu;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/eu;->b()V

    .line 126
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ev;->a:Lcom/aadhk/restpos/d/eu;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ev;->a:Lcom/aadhk/restpos/d/eu;

    invoke-static {v1}, Lcom/aadhk/restpos/d/eu;->b(Lcom/aadhk/restpos/d/eu;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/eu;->a(Lcom/aadhk/restpos/d/eu;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
