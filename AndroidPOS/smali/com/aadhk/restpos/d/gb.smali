.class public final Lcom/aadhk/restpos/d/gb;
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

.field private e:Lcom/aadhk/restpos/d/gc;

.field private f:Landroid/view/LayoutInflater;

.field private g:Lcom/aadhk/restpos/g/t;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/aadhk/restpos/d/gb;->h:I

    .line 117
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/gb;Lcom/aadhk/restpos/d/gc;)Lcom/aadhk/restpos/d/gc;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/aadhk/restpos/d/gb;->e:Lcom/aadhk/restpos/d/gc;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/gb;)Lcom/aadhk/restpos/g/t;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/d/gb;->g:Lcom/aadhk/restpos/g/t;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/gb;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/aadhk/restpos/d/gb;->a:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/gb;)Lcom/aadhk/restpos/d/gc;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/d/gb;->e:Lcom/aadhk/restpos/d/gc;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/gb;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/d/gb;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/gb;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/d/gb;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/gb;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/d/gb;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/gb;)Lcom/aadhk/restpos/PriceScheduleActivity;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/d/gb;->d:Lcom/aadhk/restpos/PriceScheduleActivity;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/gb;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/d/gb;->f:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic h(Lcom/aadhk/restpos/d/gb;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/aadhk/restpos/d/gb;->h:I

    return v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 52
    iget-object v0, p0, Lcom/aadhk/restpos/d/gb;->d:Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PriceScheduleActivity;->a()Lcom/aadhk/restpos/g/t;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/gb;->g:Lcom/aadhk/restpos/g/t;

    .line 53
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/ge;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/d/ge;-><init>(Lcom/aadhk/restpos/d/gb;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/gb;->d:Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 54
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/PriceScheduleActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gb;->d:Lcom/aadhk/restpos/PriceScheduleActivity;

    .line 59
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 60
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/d/gb;->d:Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/gb;->f:Landroid/view/LayoutInflater;

    .line 47
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    const v0, 0x7f0300b3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 65
    const v0, 0x7f0900a4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gb;->b:Landroid/widget/ListView;

    .line 66
    iget-object v0, p0, Lcom/aadhk/restpos/d/gb;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    const v0, 0x7f09016e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gb;->c:Landroid/widget/TextView;

    .line 68
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
    .line 109
    iget-object v0, p0, Lcom/aadhk/restpos/d/gb;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/PriceSchedule;

    .line 110
    iget-object v1, p0, Lcom/aadhk/restpos/d/gb;->d:Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/PriceScheduleActivity;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iput p3, p0, Lcom/aadhk/restpos/d/gb;->h:I

    .line 112
    iget-object v1, p0, Lcom/aadhk/restpos/d/gb;->e:Lcom/aadhk/restpos/d/gc;

    invoke-virtual {v1}, Lcom/aadhk/restpos/d/gc;->notifyDataSetChanged()V

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/gb;->d:Lcom/aadhk/restpos/PriceScheduleActivity;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/PriceScheduleActivity;->a(Lcom/aadhk/restpos/bean/PriceSchedule;)V

    .line 115
    return-void
.end method
