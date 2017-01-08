.class public final Lcom/aadhk/restpos/c/de;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Order;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/widget/GridView;

.field private h:Landroid/content/Context;

.field private i:Z

.field private j:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Order;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 29
    const v0, 0x7f03006a

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 30
    iput-object p1, p0, Lcom/aadhk/restpos/c/de;->h:Landroid/content/Context;

    .line 31
    iput-boolean p3, p0, Lcom/aadhk/restpos/c/de;->i:Z

    .line 32
    iput-object p2, p0, Lcom/aadhk/restpos/c/de;->f:Ljava/util/List;

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/de;->j:Landroid/view/LayoutInflater;

    .line 34
    const v0, 0x7f090163

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/de;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/de;->g:Landroid/widget/GridView;

    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/c/de;->g:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/c/de;->g:Landroid/widget/GridView;

    new-instance v1, Lcom/aadhk/restpos/c/dg;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/c/dg;-><init>(Lcom/aadhk/restpos/c/de;B)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/de;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/aadhk/restpos/c/de;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/c/de;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/aadhk/restpos/c/de;->j:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
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
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/c/de;->f:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    .line 42
    new-instance v1, Lcom/aadhk/restpos/c/d;

    iget-object v2, p0, Lcom/aadhk/restpos/c/de;->h:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/c/d;-><init>(Landroid/content/Context;)V

    .line 43
    iget-boolean v2, p0, Lcom/aadhk/restpos/c/de;->i:Z

    if-eqz v2, :cond_0

    .line 44
    iget-object v2, p0, Lcom/aadhk/restpos/c/de;->h:Landroid/content/Context;

    const v3, 0x7f080263

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/d;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    :goto_0
    new-instance v2, Lcom/aadhk/restpos/c/df;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/c/df;-><init>(Lcom/aadhk/restpos/c/de;Lcom/aadhk/restpos/bean/Order;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/d;->a(Lcom/aadhk/restpos/c/f;)V

    .line 57
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/d;->show()V

    .line 58
    return-void

    .line 46
    :cond_0
    iget-object v2, p0, Lcom/aadhk/restpos/c/de;->h:Landroid/content/Context;

    const v3, 0x7f080267

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/d;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
