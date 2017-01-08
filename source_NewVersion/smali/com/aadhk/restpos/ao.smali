.class final Lcom/aadhk/restpos/ao;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/r;

.field final synthetic b:Lcom/aadhk/restpos/MgrCategoryActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/MgrCategoryActivity;Lcom/aadhk/restpos/c/r;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/aadhk/restpos/ao;->b:Lcom/aadhk/restpos/MgrCategoryActivity;

    iput-object p2, p0, Lcom/aadhk/restpos/ao;->a:Lcom/aadhk/restpos/c/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 244
    new-instance v0, Lcom/aadhk/restpos/bean/Category;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Category;-><init>()V

    .line 245
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/bean/Category;->setName(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/aadhk/restpos/ao;->b:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/MgrCategoryActivity;->a(Lcom/aadhk/restpos/MgrCategoryActivity;)Lcom/aadhk/restpos/b/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/b/b;->a(Lcom/aadhk/restpos/bean/Category;)V

    .line 247
    iget-object v0, p0, Lcom/aadhk/restpos/ao;->b:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrCategoryActivity;->a()V

    .line 248
    iget-object v0, p0, Lcom/aadhk/restpos/ao;->a:Lcom/aadhk/restpos/c/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/r;->dismiss()V

    .line 249
    return-void
.end method
