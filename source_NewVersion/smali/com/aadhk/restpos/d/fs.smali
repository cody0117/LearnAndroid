.class public final Lcom/aadhk/restpos/d/fs;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/GridView;

.field private c:Lcom/aadhk/restpos/ListTableActivity;

.field private d:Lcom/aadhk/restpos/f/l;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Table;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/aadhk/restpos/a/ag;

.field private g:Lcom/aadhk/restpos/b/m;

.field private h:Lcom/aadhk/restpos/b/v;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private a(Lcom/aadhk/restpos/bean/Table;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 117
    new-instance v0, Lcom/aadhk/restpos/bean/Order;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Order;-><init>()V

    .line 118
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Table;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTableId(J)V

    .line 119
    invoke-static {}, Lcom/aadhk/restpos/f/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setStartTime(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, p2}, Lcom/aadhk/restpos/bean/Order;->setPersonNum(I)V

    .line 121
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Table;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setTableName(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/aadhk/restpos/d/fs;->c:Lcom/aadhk/restpos/ListTableActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/ListTableActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setWaiterName(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/aadhk/restpos/d/fs;->d:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v1}, Lcom/aadhk/restpos/f/l;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/aadhk/restpos/d/fs;->d:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v1}, Lcom/aadhk/restpos/f/l;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setOrderNum(Ljava/lang/String;)V

    .line 130
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 131
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 132
    const-string v3, "bundleOrder"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 133
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 134
    iget-object v0, p0, Lcom/aadhk/restpos/d/fs;->c:Lcom/aadhk/restpos/ListTableActivity;

    const-class v2, Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/fs;->startActivity(Landroid/content/Intent;)V

    .line 136
    return-void

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/fs;->d:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v1}, Lcom/aadhk/restpos/f/l;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aadhk/restpos/f/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setOrderNum(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/fs;Lcom/aadhk/restpos/bean/Table;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/aadhk/restpos/d/fs;->a(Lcom/aadhk/restpos/bean/Table;I)V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    new-instance v0, Lcom/aadhk/restpos/f/l;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fs;->c:Lcom/aadhk/restpos/ListTableActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/f/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/fs;->d:Lcom/aadhk/restpos/f/l;

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/d/fs;->c:Lcom/aadhk/restpos/ListTableActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ListTableActivity;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/aadhk/restpos/b/v;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/v;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/fs;->h:Lcom/aadhk/restpos/b/v;

    .line 75
    new-instance v1, Lcom/aadhk/restpos/b/m;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/m;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/fs;->g:Lcom/aadhk/restpos/b/m;

    .line 76
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 81
    check-cast p1, Lcom/aadhk/restpos/ListTableActivity;

    iput-object p1, p0, Lcom/aadhk/restpos/d/fs;->c:Lcom/aadhk/restpos/ListTableActivity;

    .line 82
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    const v0, 0x7f03006a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fs;->a:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/d/fs;->a:Landroid/view/View;

    const v1, 0x7f0b0146

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/fs;->b:Landroid/widget/GridView;

    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/fs;->b:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/aadhk/restpos/d/fs;->a:Landroid/view/View;

    return-object v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 86
    iget-object v0, p0, Lcom/aadhk/restpos/d/fs;->e:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Table;

    .line 87
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Table;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/aadhk/restpos/d/fs;->g:Lcom/aadhk/restpos/b/m;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Table;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/aadhk/restpos/b/m;->b(J)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    .line 90
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 91
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 92
    const-string v3, "bundleOrder"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 93
    const-string v0, "bundleOrdered"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 95
    iget-object v0, p0, Lcom/aadhk/restpos/d/fs;->c:Lcom/aadhk/restpos/ListTableActivity;

    const-class v2, Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/fs;->startActivity(Landroid/content/Intent;)V

    .line 114
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/fs;->d:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v1}, Lcom/aadhk/restpos/f/l;->n()I

    move-result v1

    if-lez v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/aadhk/restpos/d/fs;->d:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v1}, Lcom/aadhk/restpos/f/l;->n()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/aadhk/restpos/d/fs;->a(Lcom/aadhk/restpos/bean/Table;I)V

    goto :goto_0

    .line 102
    :cond_1
    new-instance v1, Lcom/aadhk/restpos/c/by;

    iget-object v2, p0, Lcom/aadhk/restpos/d/fs;->c:Lcom/aadhk/restpos/ListTableActivity;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/c/by;-><init>(Landroid/content/Context;)V

    .line 103
    const v2, 0x7f090182

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/by;->setTitle(I)V

    .line 104
    new-instance v2, Lcom/aadhk/restpos/d/ft;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/d/ft;-><init>(Lcom/aadhk/restpos/d/fs;Lcom/aadhk/restpos/bean/Table;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/by;->a(Lcom/aadhk/product/library/b/f;)V

    .line 111
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/by;->show()V

    goto :goto_0
.end method

.method public final onResume()V
    .locals 3

    .prologue
    .line 62
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/d/fs;->h:Lcom/aadhk/restpos/b/v;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/v;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/fs;->e:Ljava/util/List;

    .line 64
    new-instance v0, Lcom/aadhk/restpos/a/ag;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fs;->c:Lcom/aadhk/restpos/ListTableActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/fs;->e:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/a/ag;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/fs;->f:Lcom/aadhk/restpos/a/ag;

    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/d/fs;->b:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fs;->f:Lcom/aadhk/restpos/a/ag;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    return-void
.end method
