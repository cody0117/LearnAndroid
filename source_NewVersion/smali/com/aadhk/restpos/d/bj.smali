.class final Lcom/aadhk/restpos/d/bj;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/bh;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/bh;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/aadhk/restpos/d/bj;->a:Lcom/aadhk/restpos/d/bh;

    .line 126
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 127
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x2

    return v0
.end method

.method public final getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/aadhk/restpos/d/bj;->a:Lcom/aadhk/restpos/d/bh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bh;->a(Lcom/aadhk/restpos/d/bh;)Lcom/aadhk/restpos/d/bv;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/bj;->a:Lcom/aadhk/restpos/d/bh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bh;->b(Lcom/aadhk/restpos/d/bh;)Lcom/aadhk/restpos/d/bk;

    move-result-object v0

    goto :goto_0
.end method
