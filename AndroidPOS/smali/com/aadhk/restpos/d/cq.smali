.class final Lcom/aadhk/restpos/d/cq;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/cf;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/cf;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 744
    iput-object p1, p0, Lcom/aadhk/restpos/d/cq;->a:Lcom/aadhk/restpos/d/cf;

    .line 745
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 746
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/aadhk/restpos/d/cq;->a:Lcom/aadhk/restpos/d/cf;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cf;->f(Lcom/aadhk/restpos/d/cf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 765
    iget-object v0, p0, Lcom/aadhk/restpos/d/cq;->a:Lcom/aadhk/restpos/d/cf;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cf;->f(Lcom/aadhk/restpos/d/cf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cr;->a(Lcom/aadhk/restpos/bean/Category;)Lcom/aadhk/restpos/d/cr;

    move-result-object v0

    return-object v0
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 751
    const/4 v0, -0x2

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 755
    iget-object v0, p0, Lcom/aadhk/restpos/d/cq;->a:Lcom/aadhk/restpos/d/cf;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cf;->f(Lcom/aadhk/restpos/d/cf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
