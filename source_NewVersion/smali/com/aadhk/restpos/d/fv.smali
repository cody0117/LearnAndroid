.class final Lcom/aadhk/restpos/d/fv;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/fu;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/fu;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/aadhk/restpos/d/fv;->a:Lcom/aadhk/restpos/d/fu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 193
    iget-object v0, p0, Lcom/aadhk/restpos/d/fv;->a:Lcom/aadhk/restpos/d/fu;

    iget-object v1, p0, Lcom/aadhk/restpos/d/fv;->a:Lcom/aadhk/restpos/d/fu;

    invoke-static {v1}, Lcom/aadhk/restpos/d/fu;->a(Lcom/aadhk/restpos/d/fu;)[I

    move-result-object v1

    aget v1, v1, p3

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/fu;->a(Lcom/aadhk/restpos/d/fu;I)I

    .line 194
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
    .line 198
    return-void
.end method
