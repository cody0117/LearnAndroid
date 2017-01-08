.class final Lcom/aadhk/restpos/d/dn;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/dm;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/d/dm;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/aadhk/restpos/d/dn;->a:Lcom/aadhk/restpos/d/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/dm;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/dn;-><init>(Lcom/aadhk/restpos/d/dm;)V

    return-void
.end method


# virtual methods
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
    .line 123
    iget-object v0, p0, Lcom/aadhk/restpos/d/dn;->a:Lcom/aadhk/restpos/d/dm;

    invoke-static {v0}, Lcom/aadhk/restpos/d/dm;->c(Lcom/aadhk/restpos/d/dm;)Lcom/aadhk/restpos/MgrModifierActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/aadhk/restpos/d/dn;->a:Lcom/aadhk/restpos/d/dm;

    invoke-static {v0}, Lcom/aadhk/restpos/d/dm;->d(Lcom/aadhk/restpos/d/dm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ModifierGroup;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/MgrModifierActivity;->a(Lcom/aadhk/restpos/bean/ModifierGroup;)V

    .line 124
    return-void
.end method
