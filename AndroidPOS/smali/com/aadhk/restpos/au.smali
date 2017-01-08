.class final Lcom/aadhk/restpos/au;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field a:Landroid/view/View;

.field private b:J

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static a(J)Lcom/aadhk/restpos/au;
    .locals 1
    .parameter

    .prologue
    .line 120
    new-instance v0, Lcom/aadhk/restpos/au;

    invoke-direct {v0}, Lcom/aadhk/restpos/au;-><init>()V

    .line 121
    iput-wide p0, v0, Lcom/aadhk/restpos/au;->b:J

    .line 122
    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 152
    iget-object v0, p0, Lcom/aadhk/restpos/au;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/aadhk/restpos/au;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/a/bd;

    invoke-virtual {p0}, Lcom/aadhk/restpos/au;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/au;->e:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/a/bd;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    iget-object v0, p0, Lcom/aadhk/restpos/au;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/aadhk/restpos/au;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/au;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-static {}, Lcom/aadhk/restpos/MgrItemPickerActivity;->a()Lcom/aadhk/restpos/g/f;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/au;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/g/f;->a(J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/au;->e:Ljava/util/List;

    .line 130
    invoke-static {}, Lcom/aadhk/restpos/MgrItemPickerActivity;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/au;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 131
    invoke-static {}, Lcom/aadhk/restpos/MgrItemPickerActivity;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 132
    iget-object v0, p0, Lcom/aadhk/restpos/au;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    .line 133
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getId()J

    move-result-wide v5

    cmp-long v5, v2, v5

    if-nez v5, :cond_1

    .line 134
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/aadhk/restpos/bean/Item;->setPicked(Z)V

    .line 135
    invoke-static {}, Lcom/aadhk/restpos/MgrItemPickerActivity;->c()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_2
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    const v0, 0x7f0300b3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/au;->a:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/aadhk/restpos/au;->a:Landroid/view/View;

    const v1, 0x7f0900a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/au;->c:Landroid/widget/ListView;

    .line 146
    iget-object v0, p0, Lcom/aadhk/restpos/au;->a:Landroid/view/View;

    const v1, 0x7f09016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/au;->d:Landroid/widget/TextView;

    .line 147
    invoke-direct {p0}, Lcom/aadhk/restpos/au;->a()V

    .line 148
    iget-object v0, p0, Lcom/aadhk/restpos/au;->a:Landroid/view/View;

    return-object v0
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
    .line 163
    iget-object v0, p0, Lcom/aadhk/restpos/au;->e:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    .line 164
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->isPicked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Item;->setPicked(Z)V

    .line 165
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->isPicked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    invoke-static {}, Lcom/aadhk/restpos/MgrItemPickerActivity;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    :goto_1
    invoke-direct {p0}, Lcom/aadhk/restpos/au;->a()V

    .line 171
    return-void

    .line 164
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 168
    :cond_1
    invoke-static {}, Lcom/aadhk/restpos/MgrItemPickerActivity;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method
