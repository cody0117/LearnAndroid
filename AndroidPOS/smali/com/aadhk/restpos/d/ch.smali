.class final Lcom/aadhk/restpos/d/ch;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/cf;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/cf;)V
    .locals 0
    .parameter

    .prologue
    .line 729
    iput-object p1, p0, Lcom/aadhk/restpos/d/ch;->a:Lcom/aadhk/restpos/d/cf;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .locals 4
    .parameter

    .prologue
    .line 732
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 733
    iget-object v1, p0, Lcom/aadhk/restpos/d/ch;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v0, p0, Lcom/aadhk/restpos/d/ch;->a:Lcom/aadhk/restpos/d/cf;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cf;->f(Lcom/aadhk/restpos/d/cf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/aadhk/restpos/d/cf;->a(Lcom/aadhk/restpos/d/cf;J)J

    .line 734
    iget-object v0, p0, Lcom/aadhk/restpos/d/ch;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v0, v0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ch;->a:Lcom/aadhk/restpos/d/cf;

    invoke-static {v1}, Lcom/aadhk/restpos/d/cf;->b(Lcom/aadhk/restpos/d/cf;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/MgrItemActivity;->a(J)V

    .line 735
    iget-object v0, p0, Lcom/aadhk/restpos/d/ch;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v0, v0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/MgrItemActivity;->a(I)V

    .line 736
    iget-object v0, p0, Lcom/aadhk/restpos/d/ch;->a:Lcom/aadhk/restpos/d/cf;

    iget-object v1, v0, Lcom/aadhk/restpos/d/cf;->a:Lcom/aadhk/restpos/MgrItemActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/d/ch;->a:Lcom/aadhk/restpos/d/cf;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cf;->f(Lcom/aadhk/restpos/d/cf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getItemList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/MgrItemActivity;->a(Ljava/util/List;)V

    .line 738
    return-void
.end method
