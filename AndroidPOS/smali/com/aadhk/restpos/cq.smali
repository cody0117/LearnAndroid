.class final Lcom/aadhk/restpos/cq;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/a/i;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/PrinterActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/PrinterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/aadhk/restpos/cq;->a:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/aadhk/a/k;)V
    .locals 3
    .parameter

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/aadhk/a/k;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/cq;->a:Lcom/aadhk/restpos/PrinterActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PrinterActivity;->a(Lcom/aadhk/restpos/PrinterActivity;)Z

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    const-string v1, "com.aadhk.restpos.feature.receipt"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    const-string v1, "com.aadhk.restpos.feature.kitchen"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    const-string v1, "com.aadhk.restpos.feature.kitchen2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    const-string v1, "com.aadhk.restpos.feature.bar"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v1, p0, Lcom/aadhk/restpos/cq;->a:Lcom/aadhk/restpos/PrinterActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/PrinterActivity;->b(Lcom/aadhk/restpos/PrinterActivity;)Lcom/aadhk/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/cq;->a:Lcom/aadhk/restpos/PrinterActivity;

    iget-object v2, v2, Lcom/aadhk/restpos/PrinterActivity;->a:Lcom/aadhk/a/j;

    invoke-virtual {v1, v0, v2}, Lcom/aadhk/a/d;->a(Ljava/util/List;Lcom/aadhk/a/j;)V

    goto :goto_0
.end method
