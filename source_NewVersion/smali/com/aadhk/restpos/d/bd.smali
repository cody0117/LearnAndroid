.class public final Lcom/aadhk/restpos/d/bd;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"


# instance fields
.field private a:Lcom/aadhk/restpos/MgrModifierActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ModifierGroup;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/widget/ListView;

.field private f:Lcom/aadhk/restpos/b/k;

.field private g:Landroid/view/LayoutInflater;

.field private h:Lcom/aadhk/restpos/d/bf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/bd;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/aadhk/restpos/d/bd;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/bd;)Lcom/aadhk/restpos/MgrModifierActivity;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/aadhk/restpos/d/bd;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/bd;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/aadhk/restpos/d/bd;->g:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/d/bd;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrModifierActivity;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/aadhk/restpos/b/k;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/k;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/bd;->f:Lcom/aadhk/restpos/b/k;

    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/d/bd;->f:Lcom/aadhk/restpos/b/k;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/k;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bd;->d:Ljava/util/List;

    new-instance v0, Lcom/aadhk/restpos/d/bf;

    invoke-direct {v0, p0, v2}, Lcom/aadhk/restpos/d/bf;-><init>(Lcom/aadhk/restpos/d/bd;B)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/bd;->h:Lcom/aadhk/restpos/d/bf;

    iget-object v0, p0, Lcom/aadhk/restpos/d/bd;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bd;->h:Lcom/aadhk/restpos/d/bf;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/bd;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/bd;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/bd;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/d/be;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/d/be;-><init>(Lcom/aadhk/restpos/d/bd;B)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 57
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/bd;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/MgrModifierActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bd;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    .line 47
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 48
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/d/bd;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bd;->g:Landroid/view/LayoutInflater;

    .line 42
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    const v0, 0x7f030096

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bd;->b:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/d/bd;->b:Landroid/view/View;

    const v1, 0x7f0b0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bd;->e:Landroid/widget/ListView;

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/d/bd;->b:Landroid/view/View;

    const v1, 0x7f0b012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bd;->c:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/d/bd;->b:Landroid/view/View;

    return-object v0
.end method
