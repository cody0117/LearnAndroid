.class final Lcom/aadhk/restpos/d/ds;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/dr;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/dr;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/aadhk/restpos/d/ds;->a:Lcom/aadhk/restpos/d/dr;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .locals 2
    .parameter

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/d/ds;->a:Lcom/aadhk/restpos/d/dr;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/dr;->a(Lcom/aadhk/restpos/d/dr;Z)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ds;->a:Lcom/aadhk/restpos/d/dr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/dr;->a(Lcom/aadhk/restpos/d/dr;Z)V

    goto :goto_0
.end method
