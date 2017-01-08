.class public final Lcom/aadhk/restpos/d/fx;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Lcom/aadhk/restpos/UserActivity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/User;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/ListView;

.field private d:Lcom/aadhk/restpos/b/x;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/aadhk/restpos/d/fy;

.field private g:Landroid/view/LayoutInflater;

.field private h:I

.field private i:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/aadhk/restpos/d/fx;->h:I

    .line 109
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/fx;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/aadhk/restpos/d/fx;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/fx;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/aadhk/restpos/d/fx;->g:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/fx;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/aadhk/restpos/d/fx;->h:I

    return v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/fx;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/aadhk/restpos/d/fx;->i:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/d/fx;->a:Lcom/aadhk/restpos/UserActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/UserActivity;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/aadhk/restpos/b/x;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/x;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/fx;->d:Lcom/aadhk/restpos/b/x;

    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/d/fx;->d:Lcom/aadhk/restpos/b/x;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/x;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fx;->b:Ljava/util/List;

    new-instance v0, Lcom/aadhk/restpos/d/fy;

    invoke-direct {v0, p0, v2}, Lcom/aadhk/restpos/d/fy;-><init>(Lcom/aadhk/restpos/d/fx;B)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/fx;->f:Lcom/aadhk/restpos/d/fy;

    iget-object v0, p0, Lcom/aadhk/restpos/d/fx;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fx;->f:Lcom/aadhk/restpos/d/fy;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/fx;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/fx;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/fx;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/UserActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fx;->a:Lcom/aadhk/restpos/UserActivity;

    .line 76
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 77
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/fx;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fx;->i:[Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/d/fx;->a:Lcom/aadhk/restpos/UserActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fx;->g:Landroid/view/LayoutInflater;

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/fx;->setHasOptionsMenu(Z)V

    .line 46
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 58
    const v0, 0x7f0f0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 59
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 60
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    const v0, 0x7f030096

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 82
    const v0, 0x7f0b0086

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fx;->c:Landroid/widget/ListView;

    .line 83
    iget-object v0, p0, Lcom/aadhk/restpos/d/fx;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    const v0, 0x7f0b012a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fx;->e:Landroid/widget/TextView;

    .line 85
    return-object v1
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/d/fx;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/User;

    .line 102
    iget-object v1, p0, Lcom/aadhk/restpos/d/fx;->a:Lcom/aadhk/restpos/UserActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/UserActivity;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iput p3, p0, Lcom/aadhk/restpos/d/fx;->h:I

    .line 104
    iget-object v1, p0, Lcom/aadhk/restpos/d/fx;->f:Lcom/aadhk/restpos/d/fy;

    invoke-virtual {v1}, Lcom/aadhk/restpos/d/fy;->notifyDataSetChanged()V

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/fx;->a:Lcom/aadhk/restpos/UserActivity;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/UserActivity;->a(Lcom/aadhk/restpos/bean/User;)V

    .line 107
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 64
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b027f

    if-ne v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/d/fx;->a:Lcom/aadhk/restpos/UserActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/UserActivity;->a(Lcom/aadhk/restpos/bean/User;)V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/aadhk/restpos/d/fx;->h:I

    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/d/fx;->f:Lcom/aadhk/restpos/d/fy;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/fy;->notifyDataSetChanged()V

    .line 68
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
