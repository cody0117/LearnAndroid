.class final Lcom/aadhk/restpos/d/hj;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/hi;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/hi;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/aadhk/restpos/d/hj;->a:Lcom/aadhk/restpos/d/hi;

    .line 62
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 63
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x7d0

    return v0
.end method

.method public final getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .parameter

    .prologue
    .line 83
    add-int/lit16 v0, p1, -0x3e8

    .line 84
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/aadhk/restpos/d/hj;->a:Lcom/aadhk/restpos/d/hi;

    invoke-static {v2}, Lcom/aadhk/restpos/d/hi;->a(Lcom/aadhk/restpos/d/hi;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 88
    iget-object v1, p0, Lcom/aadhk/restpos/d/hj;->a:Lcom/aadhk/restpos/d/hi;

    invoke-static {v1}, Lcom/aadhk/restpos/d/hi;->b(Lcom/aadhk/restpos/d/hi;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/o;->b(II)[Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 95
    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 97
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 98
    const-string v3, "fromDate"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "toDate"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/d/hj;->a:Lcom/aadhk/restpos/d/hi;

    new-instance v1, Lcom/aadhk/restpos/d/he;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/he;-><init>()V

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/hi;->a(Lcom/aadhk/restpos/d/hi;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/d/hj;->a:Lcom/aadhk/restpos/d/hi;

    invoke-static {v0}, Lcom/aadhk/restpos/d/hi;->e(Lcom/aadhk/restpos/d/hi;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 102
    iget-object v0, p0, Lcom/aadhk/restpos/d/hj;->a:Lcom/aadhk/restpos/d/hi;

    invoke-static {v0}, Lcom/aadhk/restpos/d/hi;->e(Lcom/aadhk/restpos/d/hi;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/aadhk/restpos/d/hj;->a:Lcom/aadhk/restpos/d/hi;

    invoke-static {v2}, Lcom/aadhk/restpos/d/hi;->a(Lcom/aadhk/restpos/d/hi;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 90
    iget-object v1, p0, Lcom/aadhk/restpos/d/hj;->a:Lcom/aadhk/restpos/d/hi;

    invoke-static {v1}, Lcom/aadhk/restpos/d/hi;->c(Lcom/aadhk/restpos/d/hi;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/hj;->a:Lcom/aadhk/restpos/d/hi;

    invoke-static {v2}, Lcom/aadhk/restpos/d/hi;->d(Lcom/aadhk/restpos/d/hi;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/aadhk/restpos/util/o;->a(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/d/hj;->a:Lcom/aadhk/restpos/d/hi;

    invoke-static {v1}, Lcom/aadhk/restpos/d/hi;->a(Lcom/aadhk/restpos/d/hi;)I

    move-result v1

    invoke-static {v1, v0}, Lcom/aadhk/restpos/util/o;->a(II)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 72
    const/4 v0, -0x2

    return v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
