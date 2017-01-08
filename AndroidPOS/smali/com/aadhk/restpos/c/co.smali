.class final Lcom/aadhk/restpos/c/co;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/cn;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/c/cn;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/aadhk/restpos/c/co;->a:Lcom/aadhk/restpos/c/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/c/co;->a:Lcom/aadhk/restpos/c/cn;

    invoke-static {v0, p3}, Lcom/aadhk/restpos/c/cn;->a(Lcom/aadhk/restpos/c/cn;I)I

    .line 54
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 57
    return-void
.end method
