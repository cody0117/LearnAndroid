.class final Lcom/aadhk/restpos/d/az;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/aadhk/restpos/d/au;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/au;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/aadhk/restpos/d/az;->b:Lcom/aadhk/restpos/d/au;

    iput-object p2, p0, Lcom/aadhk/restpos/d/az;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/aadhk/restpos/f/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/az;->a:[Ljava/lang/String;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/aadhk/restpos/d/az;->b:Lcom/aadhk/restpos/d/au;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/au;->a(Lcom/aadhk/restpos/d/au;Ljava/lang/String;)V

    .line 286
    return-void
.end method