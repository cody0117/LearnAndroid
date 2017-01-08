.class final Lcom/aadhk/restpos/d/df;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/de;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/de;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/aadhk/restpos/d/df;->a:Lcom/aadhk/restpos/d/de;

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
    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/d/df;->a:Lcom/aadhk/restpos/d/de;

    iget-object v0, v0, Lcom/aadhk/restpos/d/de;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getConnType()I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 83
    iget-object v0, p0, Lcom/aadhk/restpos/d/df;->a:Lcom/aadhk/restpos/d/de;

    iget-object v0, v0, Lcom/aadhk/restpos/d/de;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v1, p0, Lcom/aadhk/restpos/d/df;->a:Lcom/aadhk/restpos/d/de;

    invoke-static {v1}, Lcom/aadhk/restpos/d/de;->a(Lcom/aadhk/restpos/d/de;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setServiceName(Ljava/lang/String;)V

    .line 85
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
    .line 89
    return-void
.end method
