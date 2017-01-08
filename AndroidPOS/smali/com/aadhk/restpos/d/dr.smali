.class public final Lcom/aadhk/restpos/d/dr;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/aadhk/restpos/TakeOrderActivity;

.field private b:Landroid/support/v4/view/ViewPager;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Z

.field private h:Lcom/aadhk/restpos/d/en;

.field private i:Lcom/aadhk/restpos/d/du;

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 129
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/dr;)Lcom/aadhk/restpos/d/en;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->h:Lcom/aadhk/restpos/d/en;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/dr;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x7f07006c

    const v4, 0x7f07006b

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 20
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/dr;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/dr;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/dr;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/dr;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/dr;)Lcom/aadhk/restpos/d/du;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->i:Lcom/aadhk/restpos/d/du;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->i:Lcom/aadhk/restpos/d/du;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/d/du;->a(I)V

    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->h:Lcom/aadhk/restpos/d/en;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/d/en;->a(I)V

    .line 46
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->b:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/aadhk/restpos/d/dt;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/dr;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/d/dt;-><init>(Lcom/aadhk/restpos/d/dr;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->b:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/aadhk/restpos/d/ds;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/ds;-><init>(Lcom/aadhk/restpos/d/dr;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 91
    iget-boolean v0, p0, Lcom/aadhk/restpos/d/dr;->g:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->b:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->b:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 73
    check-cast p1, Lcom/aadhk/restpos/TakeOrderActivity;

    iput-object p1, p0, Lcom/aadhk/restpos/d/dr;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    .line 74
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 122
    iput-boolean v1, p0, Lcom/aadhk/restpos/d/dr;->g:Z

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->d:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 125
    iput-boolean v2, p0, Lcom/aadhk/restpos/d/dr;->g:Z

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

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/dr;->setHasOptionsMenu(Z)V

    .line 36
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/dr;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/dr;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "bundleOrdered"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/d/dr;->g:Z

    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    iget-boolean v1, p0, Lcom/aadhk/restpos/d/dr;->g:Z

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/TakeOrderActivity;->b(Z)V

    .line 38
    new-instance v0, Lcom/aadhk/restpos/d/en;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/en;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->h:Lcom/aadhk/restpos/d/en;

    .line 39
    new-instance v0, Lcom/aadhk/restpos/d/du;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/du;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->i:Lcom/aadhk/restpos/d/du;

    .line 40
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
    .line 50
    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 53
    :cond_0
    const v0, 0x7f0300a8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->j:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->j:Landroid/view/View;

    const v1, 0x7f090285

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->j:Landroid/view/View;

    const v1, 0x7f090286

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->d:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->j:Landroid/view/View;

    const v1, 0x7f090186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->b:Landroid/support/v4/view/ViewPager;

    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->j:Landroid/view/View;

    const v1, 0x7f090287

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->e:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->j:Landroid/view/View;

    const v1, 0x7f090288

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dr;->f:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/d/dr;->j:Landroid/view/View;

    return-object v0
.end method
