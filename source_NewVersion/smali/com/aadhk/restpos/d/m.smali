.class final Lcom/aadhk/restpos/d/m;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/l;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/l;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/aadhk/restpos/d/m;->a:Lcom/aadhk/restpos/d/l;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .locals 1
    .parameter

    .prologue
    .line 298
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 299
    invoke-static {}, Lcom/aadhk/restpos/d/l;->a()Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/POSApp;->a(I)V

    .line 300
    return-void
.end method
