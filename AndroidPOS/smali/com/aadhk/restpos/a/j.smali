.class final Lcom/aadhk/restpos/a/j;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/r;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/a/i;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/a/i;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/aadhk/restpos/a/j;->a:Lcom/aadhk/restpos/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 124
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 125
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 126
    iget-object v0, p0, Lcom/aadhk/restpos/a/j;->a:Lcom/aadhk/restpos/a/i;

    iget-object v0, v0, Lcom/aadhk/restpos/a/i;->c:Lcom/aadhk/restpos/a/h;

    iget-object v1, p0, Lcom/aadhk/restpos/a/j;->a:Lcom/aadhk/restpos/a/i;

    iget-object v1, v1, Lcom/aadhk/restpos/a/i;->b:Lcom/aadhk/restpos/a/m;

    iget-object v2, p0, Lcom/aadhk/restpos/a/j;->a:Lcom/aadhk/restpos/a/i;

    iget-object v2, v2, Lcom/aadhk/restpos/a/i;->a:Lcom/aadhk/restpos/bean/Item;

    invoke-static/range {v0 .. v5}, Lcom/aadhk/restpos/a/h;->a(Lcom/aadhk/restpos/a/h;Lcom/aadhk/restpos/a/m;Lcom/aadhk/restpos/bean/Item;ID)V

    .line 127
    return-void
.end method
