.class public final Lcom/aadhk/restpos/d/ew;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"


# instance fields
.field private a:Lcom/aadhk/restpos/PayInOutActivity;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/aadhk/restpos/d/ex;

.field private g:Landroid/support/v4/view/ViewPager;

.field private h:Landroid/view/View;

.field private i:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ew;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/aadhk/restpos/d/ew;->b:I

    return v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ew;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/aadhk/restpos/d/ew;->i:Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/ew;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/aadhk/restpos/d/ew;->c:I

    return v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/ew;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/aadhk/restpos/d/ew;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/ew;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/aadhk/restpos/d/ew;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/ew;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/aadhk/restpos/d/ew;->i:Landroid/support/v4/app/Fragment;

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/d/ew;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PayInOutActivity;->d()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/ew;->b:I

    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/d/ew;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PayInOutActivity;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ew;->d:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/d/ew;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PayInOutActivity;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ew;->e:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/aadhk/restpos/d/ex;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/ew;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/d/ex;-><init>(Lcom/aadhk/restpos/d/ew;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/ew;->f:Lcom/aadhk/restpos/d/ex;

    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/d/ew;->h:Landroid/view/View;

    const v1, 0x7f090186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ew;->g:Landroid/support/v4/view/ViewPager;

    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/d/ew;->g:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ew;->f:Lcom/aadhk/restpos/d/ex;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/d/ew;->g:Landroid/support/v4/view/ViewPager;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 48
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 113
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/PayInOutActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ew;->a:Lcom/aadhk/restpos/PayInOutActivity;

    .line 114
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 115
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v0, Lcom/aadhk/restpos/util/r;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ew;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->f()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/ew;->c:I

    .line 55
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    const v0, 0x7f0300c5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ew;->h:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/d/ew;->h:Landroid/view/View;

    return-object v0
.end method
