.class final Lcom/aadhk/restpos/d/an;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ag;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/aadhk/restpos/d/an;->a:Lcom/aadhk/restpos/d/ag;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .locals 4
    .parameter

    .prologue
    .line 454
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 455
    iget-object v1, p0, Lcom/aadhk/restpos/d/an;->a:Lcom/aadhk/restpos/d/ag;

    iget-object v0, p0, Lcom/aadhk/restpos/d/an;->a:Lcom/aadhk/restpos/d/ag;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ag;->e(Lcom/aadhk/restpos/d/ag;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Category;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Category;->getId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/aadhk/restpos/d/ag;->a(Lcom/aadhk/restpos/d/ag;J)J

    .line 456
    iget-object v0, p0, Lcom/aadhk/restpos/d/an;->a:Lcom/aadhk/restpos/d/ag;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ag;->d(Lcom/aadhk/restpos/d/ag;)Lcom/aadhk/restpos/MgrItemActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/an;->a:Lcom/aadhk/restpos/d/ag;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ag;->b(Lcom/aadhk/restpos/d/ag;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/MgrItemActivity;->a(J)V

    .line 457
    iget-object v0, p0, Lcom/aadhk/restpos/d/an;->a:Lcom/aadhk/restpos/d/ag;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ag;->d(Lcom/aadhk/restpos/d/ag;)Lcom/aadhk/restpos/MgrItemActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/MgrItemActivity;->a(I)V

    .line 458
    return-void
.end method
