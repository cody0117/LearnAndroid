.class final Lcom/aadhk/restpos/dq;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/TableListActivity;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/TableListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/aadhk/restpos/dq;->a:Lcom/aadhk/restpos/TableListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/TableListActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/dq;-><init>(Lcom/aadhk/restpos/TableListActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/aadhk/restpos/dq;->a:Lcom/aadhk/restpos/TableListActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TableListActivity;->a(Lcom/aadhk/restpos/TableListActivity;)Lcom/aadhk/restpos/g/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/g/m;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/dq;->b:Ljava/util/Map;

    .line 153
    return-void
.end method

.method public final b()V
    .locals 6

    .prologue
    const v5, 0x7f09007c

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 156
    iget-object v0, p0, Lcom/aadhk/restpos/dq;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/aadhk/restpos/dq;->a:Lcom/aadhk/restpos/TableListActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/dq;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/TableListActivity;->a(Lcom/aadhk/restpos/TableListActivity;Ljava/util/List;)Ljava/util/List;

    .line 159
    iget-object v0, p0, Lcom/aadhk/restpos/dq;->a:Lcom/aadhk/restpos/TableListActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TableListActivity;->b(Lcom/aadhk/restpos/TableListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 160
    iget-object v0, p0, Lcom/aadhk/restpos/dq;->a:Lcom/aadhk/restpos/TableListActivity;

    invoke-virtual {v0, v5}, Lcom/aadhk/restpos/TableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/aadhk/restpos/dq;->a:Lcom/aadhk/restpos/TableListActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TableListActivity;->c(Lcom/aadhk/restpos/TableListActivity;)Landroid/widget/Spinner;

    move-result-object v0

    new-instance v1, Lcom/aadhk/restpos/a/at;

    iget-object v2, p0, Lcom/aadhk/restpos/dq;->a:Lcom/aadhk/restpos/TableListActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/dq;->a:Lcom/aadhk/restpos/TableListActivity;

    invoke-static {v3}, Lcom/aadhk/restpos/TableListActivity;->b(Lcom/aadhk/restpos/TableListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/a/at;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/dq;->a:Lcom/aadhk/restpos/TableListActivity;

    invoke-virtual {v0, v5}, Lcom/aadhk/restpos/TableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/aadhk/restpos/dq;->a:Lcom/aadhk/restpos/TableListActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TableListActivity;->b(Lcom/aadhk/restpos/TableListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 165
    iget-object v1, p0, Lcom/aadhk/restpos/dq;->a:Lcom/aadhk/restpos/TableListActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/dq;->a:Lcom/aadhk/restpos/TableListActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TableListActivity;->b(Lcom/aadhk/restpos/TableListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/TableGroup;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/TableGroup;->getTableGroupId()I

    move-result v0

    invoke-static {v1, v0}, Lcom/aadhk/restpos/TableListActivity;->a(Lcom/aadhk/restpos/TableListActivity;I)I

    .line 166
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/dp;

    iget-object v2, p0, Lcom/aadhk/restpos/dq;->a:Lcom/aadhk/restpos/TableListActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/dq;->a:Lcom/aadhk/restpos/TableListActivity;

    invoke-static {v3}, Lcom/aadhk/restpos/TableListActivity;->d(Lcom/aadhk/restpos/TableListActivity;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/dp;-><init>(Lcom/aadhk/restpos/TableListActivity;I)V

    iget-object v2, p0, Lcom/aadhk/restpos/dq;->a:Lcom/aadhk/restpos/TableListActivity;

    invoke-direct {v0, v1, v2, v4}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 167
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 170
    :cond_2
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/dq;->a:Lcom/aadhk/restpos/TableListActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 172
    iget-object v0, p0, Lcom/aadhk/restpos/dq;->a:Lcom/aadhk/restpos/TableListActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 173
    :cond_4
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 174
    iget-object v0, p0, Lcom/aadhk/restpos/dq;->a:Lcom/aadhk/restpos/TableListActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 176
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/dq;->a:Lcom/aadhk/restpos/TableListActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
