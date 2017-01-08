.class final Lcom/aadhk/restpos/d/gk;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/gj;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/gj;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/aadhk/restpos/d/gk;->a:Lcom/aadhk/restpos/d/gj;

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
    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/d/gk;->a:Lcom/aadhk/restpos/d/gj;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gk;->a:Lcom/aadhk/restpos/d/gj;

    invoke-static {v1}, Lcom/aadhk/restpos/d/gj;->a(Lcom/aadhk/restpos/d/gj;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/gj;->a(Lcom/aadhk/restpos/d/gj;I)I

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/d/gk;->a:Lcom/aadhk/restpos/d/gj;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gj;->a(Lcom/aadhk/restpos/d/gj;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/d/gk;->a:Lcom/aadhk/restpos/d/gj;

    iget-object v1, v0, Lcom/aadhk/restpos/d/gj;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v0, p0, Lcom/aadhk/restpos/d/gk;->a:Lcom/aadhk/restpos/d/gj;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gj;->b(Lcom/aadhk/restpos/d/gj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setBtName(Ljava/lang/String;)V

    .line 83
    :cond_0
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
    .line 87
    return-void
.end method
