.class final Lcom/aadhk/restpos/c/bj;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/bi;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/c/bi;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/aadhk/restpos/c/bj;->a:Lcom/aadhk/restpos/c/bi;

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
    .line 54
    iget-object v0, p0, Lcom/aadhk/restpos/c/bj;->a:Lcom/aadhk/restpos/c/bi;

    invoke-static {v0, p3}, Lcom/aadhk/restpos/c/bi;->a(Lcom/aadhk/restpos/c/bi;I)I

    .line 55
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
    .line 58
    return-void
.end method
