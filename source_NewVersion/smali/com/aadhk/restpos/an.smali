.class final Lcom/aadhk/restpos/an;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/i;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/am;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/am;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/aadhk/restpos/an;->a:Lcom/aadhk/restpos/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/aadhk/restpos/an;->a:Lcom/aadhk/restpos/am;

    iget-object v0, v0, Lcom/aadhk/restpos/am;->b:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrCategoryActivity;->a(Lcom/aadhk/restpos/MgrCategoryActivity;)Lcom/aadhk/restpos/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/an;->a:Lcom/aadhk/restpos/am;

    iget-object v1, v1, Lcom/aadhk/restpos/am;->a:Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/b;->a(J)V

    .line 228
    iget-object v0, p0, Lcom/aadhk/restpos/an;->a:Lcom/aadhk/restpos/am;

    iget-object v0, v0, Lcom/aadhk/restpos/am;->b:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrCategoryActivity;->a()V

    .line 229
    return-void
.end method
