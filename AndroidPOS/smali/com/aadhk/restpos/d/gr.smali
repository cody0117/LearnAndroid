.class final Lcom/aadhk/restpos/d/gr;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/gn;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/gn;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/aadhk/restpos/d/gr;->a:Lcom/aadhk/restpos/d/gn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    const v2, 0x7f0802a9

    .line 310
    iget-object v0, p0, Lcom/aadhk/restpos/d/gr;->a:Lcom/aadhk/restpos/d/gn;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getConnType()I

    move-result v0

    if-eq v0, p3, :cond_1

    .line 311
    const/4 v0, 0x3

    if-ne v0, p3, :cond_2

    .line 312
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gr;->a:Lcom/aadhk/restpos/d/gn;

    iget-object v1, v1, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 313
    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/c/bo;->a(I)V

    .line 314
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    .line 315
    iget-object v0, p0, Lcom/aadhk/restpos/d/gr;->a:Lcom/aadhk/restpos/d/gn;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0, p3}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setConnType(I)V

    .line 347
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/gr;->a:Lcom/aadhk/restpos/d/gn;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PrinterActivity;->a()V

    .line 350
    :cond_1
    return-void

    .line 316
    :cond_2
    const/4 v0, 0x1

    if-ne v0, p3, :cond_4

    .line 318
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 319
    if-nez v0, :cond_3

    .line 320
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gr;->a:Lcom/aadhk/restpos/d/gn;

    iget-object v1, v1, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 321
    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/c/bo;->a(I)V

    .line 322
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    .line 323
    iget-object v0, p0, Lcom/aadhk/restpos/d/gr;->a:Lcom/aadhk/restpos/d/gn;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gn;->g(Lcom/aadhk/restpos/d/gn;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/gr;->a:Lcom/aadhk/restpos/d/gn;

    iget-object v1, v1, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getConnType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 325
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/gr;->a:Lcom/aadhk/restpos/d/gn;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0, p3}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setConnType(I)V

    goto :goto_0

    .line 327
    :cond_4
    const/4 v0, 0x2

    if-ne v0, p3, :cond_6

    .line 328
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 329
    const/16 v1, 0xb

    if-le v0, v1, :cond_5

    .line 330
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gr;->a:Lcom/aadhk/restpos/d/gn;

    iget-object v1, v1, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 331
    const v1, 0x7f0802ac

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(I)V

    .line 332
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    .line 333
    iget-object v0, p0, Lcom/aadhk/restpos/d/gr;->a:Lcom/aadhk/restpos/d/gn;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0, p3}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setConnType(I)V

    goto :goto_0

    .line 335
    :cond_5
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gr;->a:Lcom/aadhk/restpos/d/gn;

    iget-object v1, v1, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 336
    const v1, 0x7f0802ab

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(I)V

    .line 337
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    .line 338
    iget-object v0, p0, Lcom/aadhk/restpos/d/gr;->a:Lcom/aadhk/restpos/d/gn;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gn;->g(Lcom/aadhk/restpos/d/gn;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/gr;->a:Lcom/aadhk/restpos/d/gn;

    iget-object v1, v1, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getConnType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 340
    :cond_6
    if-nez p3, :cond_0

    .line 341
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gr;->a:Lcom/aadhk/restpos/d/gn;

    iget-object v1, v1, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 342
    const v1, 0x7f0802a8

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(I)V

    .line 343
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    .line 344
    iget-object v0, p0, Lcom/aadhk/restpos/d/gr;->a:Lcom/aadhk/restpos/d/gn;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gn;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0, p3}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setConnType(I)V

    goto/16 :goto_0
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
    .line 354
    return-void
.end method
