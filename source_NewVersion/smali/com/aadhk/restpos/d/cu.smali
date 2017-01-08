.class public final Lcom/aadhk/restpos/d/cu;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Order;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/aadhk/restpos/TakeOrderActivity;

.field private c:Lcom/aadhk/restpos/b/v;

.field private d:Lcom/aadhk/restpos/bean/Order;

.field private e:Landroid/view/View;

.field private f:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/cu;)Lcom/aadhk/restpos/TakeOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/aadhk/restpos/d/cu;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/d/cu;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/aadhk/restpos/b/v;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/v;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/cu;->c:Lcom/aadhk/restpos/b/v;

    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/d/cu;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->p()Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cu;->d:Lcom/aadhk/restpos/bean/Order;

    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/d/cu;->c:Lcom/aadhk/restpos/b/v;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cu;->d:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getTableId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/v;->b(J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cu;->a:Ljava/util/List;

    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/d/cu;->e:Landroid/view/View;

    const v1, 0x7f0b0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cu;->e:Landroid/view/View;

    const v2, 0x7f0b012a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/aadhk/restpos/d/cu;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    new-instance v1, Lcom/aadhk/restpos/a/ay;

    iget-object v2, p0, Lcom/aadhk/restpos/d/cu;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/d/cu;->a:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/a/ay;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 52
    return-void

    .line 51
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/TakeOrderActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cu;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 58
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/cu;->setHasOptionsMenu(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/cu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cu;->f:Landroid/content/res/Resources;

    .line 42
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    const v0, 0x7f0b02a8

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 69
    const v0, 0x7f0b02ac

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 70
    const v0, 0x7f0b02aa

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 71
    const v0, 0x7f0b02a9

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 72
    const v0, 0x7f0b02ab

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 73
    const v0, 0x7f0b02ad

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 74
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 75
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    const v0, 0x7f030096

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cu;->e:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/d/cu;->e:Landroid/view/View;

    return-object v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/d/cu;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    .line 95
    new-instance v1, Lcom/aadhk/restpos/c/g;

    iget-object v2, p0, Lcom/aadhk/restpos/d/cu;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/c/g;-><init>(Landroid/content/Context;)V

    .line 96
    iget-object v2, p0, Lcom/aadhk/restpos/d/cu;->f:Landroid/content/res/Resources;

    const v3, 0x7f090219

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/g;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    new-instance v2, Lcom/aadhk/restpos/d/cv;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/d/cv;-><init>(Lcom/aadhk/restpos/d/cu;Lcom/aadhk/restpos/bean/Order;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/g;->a(Lcom/aadhk/restpos/c/i;)V

    .line 103
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/g;->show()V

    .line 105
    return-void
.end method
