.class final Lcom/aadhk/restpos/d/ft;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/Table;

.field final synthetic b:Lcom/aadhk/restpos/d/fs;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/fs;Lcom/aadhk/restpos/bean/Table;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/aadhk/restpos/d/ft;->b:Lcom/aadhk/restpos/d/fs;

    iput-object p2, p0, Lcom/aadhk/restpos/d/ft;->a:Lcom/aadhk/restpos/bean/Table;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/d/ft;->b:Lcom/aadhk/restpos/d/fs;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ft;->a:Lcom/aadhk/restpos/bean/Table;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/aadhk/restpos/f/m;->a(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/aadhk/restpos/d/fs;->a(Lcom/aadhk/restpos/d/fs;Lcom/aadhk/restpos/bean/Table;I)V

    .line 109
    return-void
.end method
