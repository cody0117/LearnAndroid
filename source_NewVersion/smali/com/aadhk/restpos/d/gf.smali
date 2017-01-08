.class public final Lcom/aadhk/restpos/d/gf;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"


# instance fields
.field private a:Lcom/aadhk/restpos/UserPermissionActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ListView;

.field private d:[Ljava/lang/String;

.field private e:I

.field private f:Lcom/aadhk/restpos/d/gh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 110
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/gf;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput p1, p0, Lcom/aadhk/restpos/d/gf;->e:I

    return p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/gf;)Lcom/aadhk/restpos/UserPermissionActivity;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/aadhk/restpos/d/gf;->a:Lcom/aadhk/restpos/UserPermissionActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/gf;)Lcom/aadhk/restpos/d/gh;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/aadhk/restpos/d/gf;->f:Lcom/aadhk/restpos/d/gh;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/gf;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/aadhk/restpos/d/gf;->d:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/gf;)I
    .locals 1
    .parameter

    .prologue
    .line 19
    iget v0, p0, Lcom/aadhk/restpos/d/gf;->e:I

    return v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/d/gf;->a:Lcom/aadhk/restpos/UserPermissionActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/UserPermissionActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iput v1, p0, Lcom/aadhk/restpos/d/gf;->e:I

    .line 42
    :goto_0
    new-instance v0, Lcom/aadhk/restpos/d/gh;

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/d/gh;-><init>(Lcom/aadhk/restpos/d/gf;B)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/gf;->f:Lcom/aadhk/restpos/d/gh;

    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/d/gf;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gf;->f:Lcom/aadhk/restpos/d/gh;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    return-void

    .line 40
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/aadhk/restpos/d/gf;->e:I

    goto :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/UserPermissionActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gf;->a:Lcom/aadhk/restpos/UserPermissionActivity;

    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 50
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/gf;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/gf;->d:[Ljava/lang/String;

    .line 32
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    const v0, 0x7f030090

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/gf;->b:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/d/gf;->b:Landroid/view/View;

    const v1, 0x7f0b022f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gf;->c:Landroid/widget/ListView;

    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/gf;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/d/gg;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/gg;-><init>(Lcom/aadhk/restpos/d/gf;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/aadhk/restpos/d/gf;->b:Landroid/view/View;

    return-object v0
.end method
