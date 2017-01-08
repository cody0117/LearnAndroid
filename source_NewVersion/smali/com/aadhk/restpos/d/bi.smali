.class final Lcom/aadhk/restpos/d/bi;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/bh;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/bh;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/aadhk/restpos/d/bi;->a:Lcom/aadhk/restpos/d/bh;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .locals 2
    .parameter

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/d/bi;->a:Lcom/aadhk/restpos/d/bh;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/bh;->a(Lcom/aadhk/restpos/d/bh;Z)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/bi;->a:Lcom/aadhk/restpos/d/bh;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/bh;->a(Lcom/aadhk/restpos/d/bh;Z)V

    goto :goto_0
.end method
