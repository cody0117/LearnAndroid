.class final Lcom/aadhk/restpos/d/kd;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/jx;

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
.method private constructor <init>(Lcom/aadhk/restpos/d/jx;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/aadhk/restpos/d/kd;->a:Lcom/aadhk/restpos/d/jx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/jx;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/kd;-><init>(Lcom/aadhk/restpos/d/jx;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 115
    iget-object v0, p0, Lcom/aadhk/restpos/d/kd;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->e(Lcom/aadhk/restpos/d/jx;)Lcom/aadhk/restpos/g/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/kd;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v1}, Lcom/aadhk/restpos/d/jx;->c(Lcom/aadhk/restpos/d/jx;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/aadhk/restpos/d/kd;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v3}, Lcom/aadhk/restpos/d/jx;->d(Lcom/aadhk/restpos/d/jx;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/g/ab;->a(JJ)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/kd;->b:Ljava/util/Map;

    .line 116
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/aadhk/restpos/d/kd;->b:Ljava/util/Map;

    const-string v2, "serviceStatus"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 122
    iget-object v2, p0, Lcom/aadhk/restpos/d/kd;->a:Lcom/aadhk/restpos/d/jx;

    iget-object v0, p0, Lcom/aadhk/restpos/d/kd;->b:Ljava/util/Map;

    const-string v3, "serviceData"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v2, v0}, Lcom/aadhk/restpos/d/jx;->a(Lcom/aadhk/restpos/d/jx;Ljava/util/List;)Ljava/util/List;

    .line 123
    iget-object v0, p0, Lcom/aadhk/restpos/d/kd;->a:Lcom/aadhk/restpos/d/jx;

    new-instance v2, Lcom/aadhk/restpos/d/jz;

    iget-object v3, p0, Lcom/aadhk/restpos/d/kd;->a:Lcom/aadhk/restpos/d/jx;

    invoke-direct {v2, v3}, Lcom/aadhk/restpos/d/jz;-><init>(Lcom/aadhk/restpos/d/jx;)V

    invoke-static {v0, v2}, Lcom/aadhk/restpos/d/jx;->a(Lcom/aadhk/restpos/d/jx;Lcom/aadhk/restpos/d/jz;)Lcom/aadhk/restpos/d/jz;

    .line 124
    iget-object v0, p0, Lcom/aadhk/restpos/d/kd;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->f(Lcom/aadhk/restpos/d/jx;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget-object v2, p0, Lcom/aadhk/restpos/d/kd;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v2}, Lcom/aadhk/restpos/d/jx;->b(Lcom/aadhk/restpos/d/jx;)Lcom/aadhk/restpos/d/jz;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    move v0, v1

    .line 125
    :goto_0
    iget-object v2, p0, Lcom/aadhk/restpos/d/kd;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v2}, Lcom/aadhk/restpos/d/jx;->a(Lcom/aadhk/restpos/d/jx;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/aadhk/restpos/d/kd;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v2}, Lcom/aadhk/restpos/d/jx;->f(Lcom/aadhk/restpos/d/jx;)Landroid/widget/ExpandableListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/kd;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->a(Lcom/aadhk/restpos/d/jx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/aadhk/restpos/d/kd;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->f(Lcom/aadhk/restpos/d/jx;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/aadhk/restpos/d/kd;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->g(Lcom/aadhk/restpos/d/jx;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/aadhk/restpos/d/kd;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->b(Lcom/aadhk/restpos/d/jx;)Lcom/aadhk/restpos/d/jz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/jz;->notifyDataSetChanged()V

    .line 138
    :goto_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/kd;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->h(Lcom/aadhk/restpos/d/jx;)S

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/aadhk/restpos/d/kd;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->a(Lcom/aadhk/restpos/d/jx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/aadhk/restpos/d/kd;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->i(Lcom/aadhk/restpos/d/jx;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 151
    :goto_2
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/kd;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->f(Lcom/aadhk/restpos/d/jx;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/aadhk/restpos/d/kd;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->g(Lcom/aadhk/restpos/d/jx;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/kd;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->i(Lcom/aadhk/restpos/d/jx;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 143
    :cond_3
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 144
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/kd;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->j(Lcom/aadhk/restpos/d/jx;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 145
    iget-object v0, p0, Lcom/aadhk/restpos/d/kd;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->j(Lcom/aadhk/restpos/d/jx;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 146
    :cond_5
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 147
    iget-object v0, p0, Lcom/aadhk/restpos/d/kd;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->j(Lcom/aadhk/restpos/d/jx;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 149
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/d/kd;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->j(Lcom/aadhk/restpos/d/jx;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method
