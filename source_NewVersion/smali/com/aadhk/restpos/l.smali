.class final Lcom/aadhk/restpos/l;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/product/library/b/k;

.field final synthetic b:Lcom/aadhk/restpos/DatabaseActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/DatabaseActivity;Lcom/aadhk/product/library/b/k;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/aadhk/restpos/l;->b:Lcom/aadhk/restpos/DatabaseActivity;

    iput-object p2, p0, Lcom/aadhk/restpos/l;->a:Lcom/aadhk/product/library/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Lcom/aadhk/restpos/l;->b:Lcom/aadhk/restpos/DatabaseActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/l;->b:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/DatabaseActivity;->b(Lcom/aadhk/restpos/DatabaseActivity;)[I

    move-result-object v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/aadhk/restpos/DatabaseActivity;->a(Lcom/aadhk/restpos/DatabaseActivity;I)V

    .line 355
    iget-object v0, p0, Lcom/aadhk/restpos/l;->a:Lcom/aadhk/product/library/b/k;

    invoke-virtual {v0}, Lcom/aadhk/product/library/b/k;->dismiss()V

    .line 356
    return-void
.end method
