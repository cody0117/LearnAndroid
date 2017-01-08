.class final Lcom/aadhk/restpos/al;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/Category;

.field final synthetic b:Lcom/aadhk/restpos/c/r;

.field final synthetic c:Lcom/aadhk/restpos/MgrCategoryActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/MgrCategoryActivity;Lcom/aadhk/restpos/bean/Category;Lcom/aadhk/restpos/c/r;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/aadhk/restpos/al;->c:Lcom/aadhk/restpos/MgrCategoryActivity;

    iput-object p2, p0, Lcom/aadhk/restpos/al;->a:Lcom/aadhk/restpos/bean/Category;

    iput-object p3, p0, Lcom/aadhk/restpos/al;->b:Lcom/aadhk/restpos/c/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/aadhk/restpos/al;->a:Lcom/aadhk/restpos/bean/Category;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/bean/Category;->setName(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/aadhk/restpos/al;->c:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrCategoryActivity;->a(Lcom/aadhk/restpos/MgrCategoryActivity;)Lcom/aadhk/restpos/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/al;->a:Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/b;->b(Lcom/aadhk/restpos/bean/Category;)V

    .line 207
    iget-object v0, p0, Lcom/aadhk/restpos/al;->c:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrCategoryActivity;->a()V

    .line 208
    iget-object v0, p0, Lcom/aadhk/restpos/al;->b:Lcom/aadhk/restpos/c/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/r;->dismiss()V

    .line 209
    return-void
.end method
