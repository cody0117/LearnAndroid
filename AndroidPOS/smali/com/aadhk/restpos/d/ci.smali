.class final Lcom/aadhk/restpos/d/ci;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/cf;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/cf;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/aadhk/restpos/d/ci;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v0, v0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/MgrItemActivity;->c(Ljava/util/List;)V

    .line 134
    return-void
.end method
