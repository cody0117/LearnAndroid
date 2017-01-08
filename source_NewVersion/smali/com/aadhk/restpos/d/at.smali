.class final Lcom/aadhk/restpos/d/at;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/aq;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/d/aq;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/aadhk/restpos/d/at;->a:Lcom/aadhk/restpos/d/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/aq;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/at;-><init>(Lcom/aadhk/restpos/d/aq;)V

    return-void
.end method


# virtual methods
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
    const/16 v3, 0x8

    .line 128
    iget-object v0, p0, Lcom/aadhk/restpos/d/at;->a:Lcom/aadhk/restpos/d/aq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/aq;->a(Lcom/aadhk/restpos/d/aq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ModifierGroup;

    .line 129
    const v1, 0x7f0b012d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 130
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 131
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v1, p0, Lcom/aadhk/restpos/d/at;->a:Lcom/aadhk/restpos/d/aq;

    invoke-static {v1}, Lcom/aadhk/restpos/d/aq;->b(Lcom/aadhk/restpos/d/aq;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/at;->a:Lcom/aadhk/restpos/d/aq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/aq;->c(Lcom/aadhk/restpos/d/aq;)Lcom/aadhk/restpos/bean/Item;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/aadhk/restpos/d/at;->a:Lcom/aadhk/restpos/d/aq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/aq;->d(Lcom/aadhk/restpos/d/aq;)Lcom/aadhk/restpos/MgrItemActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/at;->a:Lcom/aadhk/restpos/d/aq;

    invoke-static {v1}, Lcom/aadhk/restpos/d/aq;->b(Lcom/aadhk/restpos/d/aq;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/MgrItemActivity;->a(Ljava/util/List;)V

    .line 140
    :cond_0
    return-void

    .line 134
    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v1, p0, Lcom/aadhk/restpos/d/at;->a:Lcom/aadhk/restpos/d/aq;

    invoke-static {v1}, Lcom/aadhk/restpos/d/aq;->b(Lcom/aadhk/restpos/d/aq;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
