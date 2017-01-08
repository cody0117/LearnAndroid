.class public final Lcom/aadhk/restpos/d/ia;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"


# instance fields
.field private a:Lcom/aadhk/restpos/ReservationActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ExpandableListView;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Reservation;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aadhk/restpos/d/ia;->f:Z

    .line 217
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ia;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/d/ia;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ia;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/aadhk/restpos/d/ia;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ia;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/aadhk/restpos/d/ia;->d:Ljava/util/Map;

    return-object p1
.end method

.method private a()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/d/ia;->b:Landroid/view/View;

    const v1, 0x7f09016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    iget-object v1, p0, Lcom/aadhk/restpos/d/ia;->b:Landroid/view/View;

    const v3, 0x7f09016f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    iput-object v1, p0, Lcom/aadhk/restpos/d/ia;->c:Landroid/widget/ExpandableListView;

    .line 91
    iget-object v1, p0, Lcom/aadhk/restpos/d/ia;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 92
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/d/ia;->c:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/d/ia;->c:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/aadhk/restpos/a/bi;

    iget-object v3, p0, Lcom/aadhk/restpos/d/ia;->a:Lcom/aadhk/restpos/ReservationActivity;

    iget-object v4, p0, Lcom/aadhk/restpos/d/ia;->d:Ljava/util/Map;

    iget-object v5, p0, Lcom/aadhk/restpos/d/ia;->e:Ljava/util/List;

    invoke-direct {v1, v3, v4, v5}, Lcom/aadhk/restpos/a/bi;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ia;->c:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/d/ia;->c:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/aadhk/restpos/d/ib;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/ib;-><init>(Lcom/aadhk/restpos/d/ia;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    move v0, v2

    .line 106
    :goto_1
    iget-object v1, p0, Lcom/aadhk/restpos/d/ia;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/aadhk/restpos/d/ia;->c:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 96
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/aadhk/restpos/d/ia;->c:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v4}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ia;->c:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/aadhk/restpos/d/ic;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/ic;-><init>(Lcom/aadhk/restpos/d/ia;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/aadhk/restpos/d/ia;->c:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/aadhk/restpos/d/id;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/id;-><init>(Lcom/aadhk/restpos/d/ia;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 134
    return-void
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    .line 175
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/ih;

    invoke-direct {v1, p0, p1}, Lcom/aadhk/restpos/d/ih;-><init>(Lcom/aadhk/restpos/d/ia;I)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/ia;->a:Lcom/aadhk/restpos/ReservationActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 176
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 177
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/ia;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/ia;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/ia;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/d/ia;->d:Ljava/util/Map;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/aadhk/restpos/d/ia;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/aadhk/restpos/d/ia;->e:Ljava/util/List;

    new-instance v1, Lcom/aadhk/restpos/d/if;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/if;-><init>(Lcom/aadhk/restpos/d/ia;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 188
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/ia;)Lcom/aadhk/restpos/ReservationActivity;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/d/ia;->a:Lcom/aadhk/restpos/ReservationActivity;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/ia;)Z
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/aadhk/restpos/d/ia;->f:Z

    return v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/ia;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ia;->b()V

    return-void
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/ia;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ia;->a()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Reservation;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    iput-object p1, p0, Lcom/aadhk/restpos/d/ia;->d:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/ia;->e:Ljava/util/List;

    .line 77
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ia;->b()V

    .line 78
    invoke-direct {p0}, Lcom/aadhk/restpos/d/ia;->a()V

    .line 79
    return-void
.end method

.method public final a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 82
    iput-boolean p1, p0, Lcom/aadhk/restpos/d/ia;->f:Z

    .line 83
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/ig;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/d/ig;-><init>(Lcom/aadhk/restpos/d/ia;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/ia;->a:Lcom/aadhk/restpos/ReservationActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 84
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 59
    iget-boolean v0, p0, Lcom/aadhk/restpos/d/ia;->f:Z

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/ia;->a(Z)V

    .line 60
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 65
    check-cast p1, Lcom/aadhk/restpos/ReservationActivity;

    iput-object p1, p0, Lcom/aadhk/restpos/d/ia;->a:Lcom/aadhk/restpos/ReservationActivity;

    .line 66
    return-void
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 139
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 140
    iget-wide v2, v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    .line 141
    iget-wide v3, v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v3, v4}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v3

    .line 142
    iget-object v0, p0, Lcom/aadhk/restpos/d/ia;->d:Ljava/util/Map;

    iget-object v4, p0, Lcom/aadhk/restpos/d/ia;->e:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Reservation;

    .line 143
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 171
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 145
    :pswitch_0
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Reservation;->getTableName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    new-instance v2, Lcom/aadhk/restpos/c/di;

    iget-object v3, p0, Lcom/aadhk/restpos/d/ia;->a:Lcom/aadhk/restpos/ReservationActivity;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/d/ia;->a:Lcom/aadhk/restpos/ReservationActivity;

    invoke-virtual {v5}, Lcom/aadhk/restpos/ReservationActivity;->a()Lcom/aadhk/restpos/g/x;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/aadhk/restpos/c/di;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/aadhk/restpos/g/x;)V

    .line 147
    const v3, 0x7f0800e0

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/c/di;->setTitle(I)V

    .line 148
    new-instance v3, Lcom/aadhk/restpos/d/ie;

    invoke-direct {v3, p0, v0}, Lcom/aadhk/restpos/d/ie;-><init>(Lcom/aadhk/restpos/d/ia;Lcom/aadhk/restpos/bean/Reservation;)V

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/c/di;->a(Lcom/aadhk/product/library/b/f;)V

    .line 158
    invoke-virtual {v2}, Lcom/aadhk/restpos/c/di;->show()V

    :goto_1
    move v0, v1

    .line 163
    goto :goto_0

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/aadhk/restpos/d/ia;->a:Lcom/aadhk/restpos/ReservationActivity;

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/ReservationActivity;->b(Lcom/aadhk/restpos/bean/Reservation;)V

    .line 161
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Reservation;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/d/ia;->a(I)V

    goto :goto_1

    .line 165
    :pswitch_1
    const v2, 0x7f0800e3

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/ia;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Reservation;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Reservation;->getGuestNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Reservation;->getTableName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Reservation;->getReservedDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Reservation;->getReservedTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 166
    iget-object v3, p0, Lcom/aadhk/restpos/d/ia;->a:Lcom/aadhk/restpos/ReservationActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Reservation;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/aadhk/restpos/util/s;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 167
    goto/16 :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x7f09031d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    const v0, 0x7f030072

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ia;->b:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/aadhk/restpos/d/ia;->b:Landroid/view/View;

    return-object v0
.end method
