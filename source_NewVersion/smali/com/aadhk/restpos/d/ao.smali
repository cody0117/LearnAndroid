.class final Lcom/aadhk/restpos/d/ao;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ag;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/ag;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/aadhk/restpos/d/ao;->a:Lcom/aadhk/restpos/d/ag;

    .line 466
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 467
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/aadhk/restpos/d/ao;->a:Lcom/aadhk/restpos/d/ag;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ag;->e(Lcom/aadhk/restpos/d/ag;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .parameter

    .prologue
    .line 486
    iget-object v0, p0, Lcom/aadhk/restpos/d/ao;->a:Lcom/aadhk/restpos/d/ag;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ag;->e(Lcom/aadhk/restpos/d/ag;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v0

    .line 487
    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/ap;->a(J)Lcom/aadhk/restpos/d/ap;

    move-result-object v0

    return-object v0
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 472
    const/4 v0, -0x2

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 476
    iget-object v0, p0, Lcom/aadhk/restpos/d/ao;->a:Lcom/aadhk/restpos/d/ag;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ag;->e(Lcom/aadhk/restpos/d/ag;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
