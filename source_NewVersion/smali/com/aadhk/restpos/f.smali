.class final Lcom/aadhk/restpos/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/aadhk/restpos/e;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/e;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 630
    iput-object p1, p0, Lcom/aadhk/restpos/f;->b:Lcom/aadhk/restpos/e;

    iput-object p2, p0, Lcom/aadhk/restpos/f;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/aadhk/restpos/f/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/f;->a:[Ljava/lang/String;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 634
    iget-object v1, p0, Lcom/aadhk/restpos/f;->b:Lcom/aadhk/restpos/e;

    iget-object v1, v1, Lcom/aadhk/restpos/e;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/DatabaseActivity;->a(Lcom/aadhk/restpos/DatabaseActivity;Ljava/lang/String;)V

    .line 635
    return-void
.end method
