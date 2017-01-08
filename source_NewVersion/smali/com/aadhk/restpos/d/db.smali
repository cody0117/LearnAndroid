.class public final Lcom/aadhk/restpos/d/db;
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
            "Lcom/aadhk/restpos/bean/PriceSchedule;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/aadhk/restpos/PriceScheduleActivity;

.field private e:Lcom/aadhk/restpos/b/q;

.field private f:Lcom/aadhk/restpos/d/dc;

.field private g:Landroid/view/LayoutInflater;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/aadhk/restpos/d/db;->h:I

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/db;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/db;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->g:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/db;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/aadhk/restpos/d/db;->h:I

    return v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->d:Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PriceScheduleActivity;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/aadhk/restpos/b/q;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/q;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/db;->e:Lcom/aadhk/restpos/b/q;

    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->e:Lcom/aadhk/restpos/b/q;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/q;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/db;->a:Ljava/util/List;

    new-instance v0, Lcom/aadhk/restpos/d/dc;

    invoke-direct {v0, p0, v2}, Lcom/aadhk/restpos/d/dc;-><init>(Lcom/aadhk/restpos/d/db;B)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/db;->f:Lcom/aadhk/restpos/d/dc;

    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/db;->f:Lcom/aadhk/restpos/d/dc;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/PriceScheduleActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/db;->d:Lcom/aadhk/restpos/PriceScheduleActivity;

    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 55
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->d:Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/db;->g:Landroid/view/LayoutInflater;

    .line 41
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    const v0, 0x7f030096

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 60
    const v0, 0x7f0b0086

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/db;->b:Landroid/widget/ListView;

    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 62
    const v0, 0x7f0b012a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/db;->c:Landroid/widget/TextView;

    .line 63
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
    .line 77
    iget-object v0, p0, Lcom/aadhk/restpos/d/db;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/PriceSchedule;

    .line 78
    iget-object v1, p0, Lcom/aadhk/restpos/d/db;->d:Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/PriceScheduleActivity;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iput p3, p0, Lcom/aadhk/restpos/d/db;->h:I

    .line 80
    iget-object v1, p0, Lcom/aadhk/restpos/d/db;->f:Lcom/aadhk/restpos/d/dc;

    invoke-virtual {v1}, Lcom/aadhk/restpos/d/dc;->notifyDataSetChanged()V

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/db;->d:Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/PriceScheduleActivity;->a(Lcom/aadhk/restpos/bean/PriceSchedule;)V

    .line 83
    return-void
.end method
