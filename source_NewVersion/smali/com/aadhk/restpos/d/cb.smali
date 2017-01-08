.class public final Lcom/aadhk/restpos/d/cb;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"


# instance fields
.field private a:Lcom/aadhk/restpos/PayInOutActivity;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/aadhk/restpos/d/cc;

.field private g:Landroid/support/v4/view/ViewPager;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/cb;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/aadhk/restpos/d/cb;->b:I

    return v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/cb;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/aadhk/restpos/d/cb;->c:I

    return v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/cb;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/aadhk/restpos/d/cb;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/cb;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/aadhk/restpos/d/cb;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/d/cb;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PayInOutActivity;->d()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/cb;->b:I

    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/d/cb;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PayInOutActivity;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cb;->d:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/d/cb;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PayInOutActivity;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cb;->e:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/aadhk/restpos/d/cc;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/cb;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/d/cc;-><init>(Lcom/aadhk/restpos/d/cb;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/cb;->f:Lcom/aadhk/restpos/d/cc;

    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/d/cb;->h:Landroid/view/View;

    const v1, 0x7f0b0141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cb;->g:Landroid/support/v4/view/ViewPager;

    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/d/cb;->g:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cb;->f:Lcom/aadhk/restpos/d/cc;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/d/cb;->g:Landroid/support/v4/view/ViewPager;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 46
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 110
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/PayInOutActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cb;->a:Lcom/aadhk/restpos/PayInOutActivity;

    .line 111
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 112
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    new-instance v0, Lcom/aadhk/restpos/f/l;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cb;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/f/l;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->e()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/cb;->c:I

    .line 53
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    const v0, 0x7f0300a7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cb;->h:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/d/cb;->h:Landroid/view/View;

    return-object v0
.end method
