.class final Lcom/aadhk/restpos/am;
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
    .line 211
    iput-object p1, p0, Lcom/aadhk/restpos/am;->b:Lcom/aadhk/restpos/MgrCategoryActivity;

    iput-object p2, p0, Lcom/aadhk/restpos/am;->a:Lcom/aadhk/restpos/bean/Category;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " c.rowid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aadhk/restpos/am;->a:Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/aadhk/restpos/am;->b:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/MgrCategoryActivity;->a(Lcom/aadhk/restpos/MgrCategoryActivity;)Lcom/aadhk/restpos/b/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/am;->b:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 218
    iget-object v1, p0, Lcom/aadhk/restpos/am;->b:Lcom/aadhk/restpos/MgrCategoryActivity;

    iget-object v1, v1, Lcom/aadhk/restpos/MgrCategoryActivity;->b:Landroid/content/res/Resources;

    const v2, 0x7f0900c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    .line 233
    :goto_0
    return-void

    .line 221
    :cond_0
    new-instance v0, Lcom/aadhk/restpos/c/g;

    iget-object v1, p0, Lcom/aadhk/restpos/am;->b:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/g;-><init>(Landroid/content/Context;)V

    .line 222
    iget-object v1, p0, Lcom/aadhk/restpos/am;->b:Lcom/aadhk/restpos/MgrCategoryActivity;

    iget-object v1, v1, Lcom/aadhk/restpos/MgrCategoryActivity;->b:Landroid/content/res/Resources;

    const v2, 0x7f090297

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/aadhk/restpos/am;->a:Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Category;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/g;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    new-instance v1, Lcom/aadhk/restpos/an;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/an;-><init>(Lcom/aadhk/restpos/am;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/g;->a(Lcom/aadhk/restpos/c/i;)V

    .line 231
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/g;->show()V

    goto :goto_0
.end method
