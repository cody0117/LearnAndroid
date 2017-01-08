.class public final Lcom/aadhk/restpos/d/bh;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Z

.field private g:Lcom/aadhk/restpos/d/bv;

.field private h:Lcom/aadhk/restpos/d/bk;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/bh;)Lcom/aadhk/restpos/d/bv;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/aadhk/restpos/d/bh;->g:Lcom/aadhk/restpos/d/bv;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/bh;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x7f080055

    const v4, 0x7f080054

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 20
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/bh;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/bh;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/bh;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/bh;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/bh;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/bh;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/bh;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/bh;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/bh;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/bh;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/bh;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/bh;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/bh;)Lcom/aadhk/restpos/d/bk;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/aadhk/restpos/d/bh;->h:Lcom/aadhk/restpos/d/bk;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/d/bh;->h:Lcom/aadhk/restpos/d/bk;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/d/bk;->a(I)V

    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/d/bh;->g:Lcom/aadhk/restpos/d/bv;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/d/bv;->a(I)V

    .line 44
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lcom/aadhk/restpos/d/bh;->a:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/aadhk/restpos/d/bj;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/bh;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/d/bj;-><init>(Lcom/aadhk/restpos/d/bh;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 76
    iget-object v0, p0, Lcom/aadhk/restpos/d/bh;->a:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/aadhk/restpos/d/bi;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/bi;-><init>(Lcom/aadhk/restpos/d/bh;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 86
    iget-boolean v0, p0, Lcom/aadhk/restpos/d/bh;->f:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/aadhk/restpos/d/bh;->a:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/bh;->a:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lcom/aadhk/restpos/d/bh;->b:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/aadhk/restpos/d/bh;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 116
    iput-boolean v1, p0, Lcom/aadhk/restpos/d/bh;->f:Z

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/bh;->c:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/aadhk/restpos/d/bh;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 119
    iput-boolean v2, p0, Lcom/aadhk/restpos/d/bh;->f:Z

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/bh;->setHasOptionsMenu(Z)V

    .line 36
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/bh;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/bh;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "bundleOrdered"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/d/bh;->f:Z

    .line 37
    new-instance v0, Lcom/aadhk/restpos/d/bv;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/bv;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/bh;->g:Lcom/aadhk/restpos/d/bv;

    .line 38
    new-instance v0, Lcom/aadhk/restpos/d/bk;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/bk;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/bh;->h:Lcom/aadhk/restpos/d/bk;

    .line 39
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    if-eqz p2, :cond_0

    .line 53
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 55
    :cond_0
    const v0, 0x7f03008b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bh;->i:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/bh;->i:Landroid/view/View;

    const v1, 0x7f0b021e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bh;->b:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/aadhk/restpos/d/bh;->i:Landroid/view/View;

    const v1, 0x7f0b021f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bh;->c:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/d/bh;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/bh;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/d/bh;->i:Landroid/view/View;

    const v1, 0x7f0b0141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bh;->a:Landroid/support/v4/view/ViewPager;

    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/d/bh;->i:Landroid/view/View;

    const v1, 0x7f0b0220

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bh;->d:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/d/bh;->i:Landroid/view/View;

    const v1, 0x7f0b0221

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bh;->e:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/d/bh;->i:Landroid/view/View;

    return-object v0
.end method
