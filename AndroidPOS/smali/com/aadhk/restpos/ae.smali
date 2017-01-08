.class final Lcom/aadhk/restpos/ae;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/g;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/Category;

.field final synthetic b:Lcom/aadhk/restpos/MgrCategoryActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/MgrCategoryActivity;Lcom/aadhk/restpos/bean/Category;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/aadhk/restpos/ae;->b:Lcom/aadhk/restpos/MgrCategoryActivity;

    iput-object p2, p0, Lcom/aadhk/restpos/ae;->a:Lcom/aadhk/restpos/bean/Category;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 211
    new-instance v0, Lcom/aadhk/restpos/c/d;

    iget-object v1, p0, Lcom/aadhk/restpos/ae;->b:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/d;-><init>(Landroid/content/Context;)V

    .line 212
    iget-object v1, p0, Lcom/aadhk/restpos/ae;->b:Lcom/aadhk/restpos/MgrCategoryActivity;

    const v2, 0x7f0802f6

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/MgrCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/aadhk/restpos/ae;->a:Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Category;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/d;->setTitle(Ljava/lang/CharSequence;)V

    .line 214
    new-instance v1, Lcom/aadhk/restpos/af;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/af;-><init>(Lcom/aadhk/restpos/ae;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/d;->a(Lcom/aadhk/restpos/c/f;)V

    .line 221
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/d;->show()V

    .line 222
    return-void
.end method
