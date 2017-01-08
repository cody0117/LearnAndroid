.class public final Lcom/aadhk/restpos/d/ke;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/GridView;

.field private c:Lcom/aadhk/restpos/TableListActivity;

.field private d:Lcom/aadhk/restpos/util/r;

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

.field private f:Lcom/aadhk/restpos/a/aj;

.field private g:Lcom/aadhk/restpos/g/ac;

.field private h:Ljava/util/Timer;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/ke;->e:Ljava/util/List;

    .line 139
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ke;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/aadhk/restpos/d/ke;->i:I

    return v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ke;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/aadhk/restpos/d/ke;->e:Ljava/util/List;

    return-object p1
.end method

.method private a(Lcom/aadhk/restpos/bean/Table;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 208
    new-instance v0, Lcom/aadhk/restpos/bean/Order;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Order;-><init>()V

    .line 209
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Table;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTableId(J)V

    .line 210
    invoke-static {}, Lcom/aadhk/restpos/util/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setOrderTime(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, p2}, Lcom/aadhk/restpos/bean/Order;->setPersonNum(I)V

    .line 212
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Table;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setTableName(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/aadhk/restpos/d/ke;->c:Lcom/aadhk/restpos/TableListActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/TableListActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setWaiterName(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/aadhk/restpos/d/ke;->d:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/ke;->d:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v2}, Lcom/aadhk/restpos/util/r;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/ke;->d:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v2}, Lcom/aadhk/restpos/util/r;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/ke;->d:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v2}, Lcom/aadhk/restpos/util/r;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setOrderNum(Ljava/lang/String;)V

    .line 222
    :goto_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/ke;->c:Lcom/aadhk/restpos/TableListActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/aadhk/restpos/util/q;->a(Landroid/app/Activity;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;Z)V

    .line 223
    return-void

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/ke;->d:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aadhk/restpos/util/p;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setOrderNum(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ke;Lcom/aadhk/restpos/bean/Table;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/aadhk/restpos/d/ke;->a(Lcom/aadhk/restpos/bean/Table;I)V

    return-void
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/ke;)Lcom/aadhk/restpos/g/ac;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/d/ke;->g:Lcom/aadhk/restpos/g/ac;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/ke;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/d/ke;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/ke;)Lcom/aadhk/restpos/a/aj;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/d/ke;->f:Lcom/aadhk/restpos/a/aj;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/ke;)Lcom/aadhk/restpos/TableListActivity;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/d/ke;->c:Lcom/aadhk/restpos/TableListActivity;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Table;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 226
    iput-object p1, p0, Lcom/aadhk/restpos/d/ke;->e:Ljava/util/List;

    .line 227
    iput p2, p0, Lcom/aadhk/restpos/d/ke;->i:I

    .line 228
    iget-object v0, p0, Lcom/aadhk/restpos/d/ke;->f:Lcom/aadhk/restpos/a/aj;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/a/aj;->a(Ljava/util/List;)V

    .line 229
    iget-object v0, p0, Lcom/aadhk/restpos/d/ke;->f:Lcom/aadhk/restpos/a/aj;

    invoke-virtual {v0}, Lcom/aadhk/restpos/a/aj;->notifyDataSetChanged()V

    .line 230
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 171
    new-instance v0, Lcom/aadhk/restpos/util/r;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ke;->c:Lcom/aadhk/restpos/TableListActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/ke;->d:Lcom/aadhk/restpos/util/r;

    .line 172
    iget-object v0, p0, Lcom/aadhk/restpos/d/ke;->c:Lcom/aadhk/restpos/TableListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TableListActivity;->b()Lcom/aadhk/restpos/g/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ke;->g:Lcom/aadhk/restpos/g/ac;

    .line 173
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 178
    check-cast p1, Lcom/aadhk/restpos/TableListActivity;

    iput-object p1, p0, Lcom/aadhk/restpos/d/ke;->c:Lcom/aadhk/restpos/TableListActivity;

    .line 179
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    const v0, 0x7f030080

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ke;->a:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/d/ke;->a:Landroid/view/View;

    const v1, 0x7f09018d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ke;->b:Landroid/widget/GridView;

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/d/ke;->b:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 65
    new-instance v0, Lcom/aadhk/restpos/a/aj;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ke;->c:Lcom/aadhk/restpos/TableListActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ke;->e:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/a/aj;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/ke;->f:Lcom/aadhk/restpos/a/aj;

    .line 66
    iget-object v0, p0, Lcom/aadhk/restpos/d/ke;->b:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ke;->f:Lcom/aadhk/restpos/a/aj;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/d/ke;->a:Landroid/view/View;

    return-object v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 183
    iget-object v0, p0, Lcom/aadhk/restpos/d/ke;->e:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Table;

    .line 184
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Table;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    new-instance v1, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/d/kj;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Table;->getId()J

    move-result-wide v3

    invoke-direct {v2, p0, v3, v4}, Lcom/aadhk/restpos/d/kj;-><init>(Lcom/aadhk/restpos/d/ke;J)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/ke;->c:Lcom/aadhk/restpos/TableListActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 186
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 204
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/ke;->d:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->n()I

    move-result v1

    if-lez v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/aadhk/restpos/d/ke;->d:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->n()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/aadhk/restpos/d/ke;->a(Lcom/aadhk/restpos/bean/Table;I)V

    goto :goto_0

    .line 192
    :cond_1
    new-instance v1, Lcom/aadhk/restpos/c/dd;

    iget-object v2, p0, Lcom/aadhk/restpos/d/ke;->c:Lcom/aadhk/restpos/TableListActivity;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/c/dd;-><init>(Landroid/content/Context;)V

    .line 193
    const v2, 0x7f0801ba

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/dd;->setTitle(I)V

    .line 194
    new-instance v2, Lcom/aadhk/restpos/d/kf;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/d/kf;-><init>(Lcom/aadhk/restpos/d/ke;Lcom/aadhk/restpos/bean/Table;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/dd;->a(Lcom/aadhk/product/library/b/f;)V

    .line 201
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/dd;->show()V

    goto :goto_0
.end method

.method public final onPause()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/d/ke;->h:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/aadhk/restpos/d/ke;->h:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 104
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 105
    return-void
.end method

.method public final onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 75
    iget-object v0, p0, Lcom/aadhk/restpos/d/ke;->d:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/ke;->h:Ljava/util/Timer;

    .line 77
    iget-object v0, p0, Lcom/aadhk/restpos/d/ke;->h:Ljava/util/Timer;

    new-instance v1, Lcom/aadhk/restpos/d/kh;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/d/kh;-><init>(Lcom/aadhk/restpos/d/ke;B)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v0, Lcom/aadhk/product/library/a/e;

    new-instance v1, Lcom/aadhk/restpos/d/kg;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/d/kg;-><init>(Lcom/aadhk/restpos/d/ke;B)V

    invoke-direct {v0, v1}, Lcom/aadhk/product/library/a/e;-><init>(Lcom/aadhk/product/library/a/c;)V

    .line 80
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
