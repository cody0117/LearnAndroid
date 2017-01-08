.class final Lcom/aadhk/restpos/d/dl;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/dh;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/dh;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/aadhk/restpos/d/dl;->a:Lcom/aadhk/restpos/d/dh;

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
    .line 311
    iget-object v0, p0, Lcom/aadhk/restpos/d/dl;->a:Lcom/aadhk/restpos/d/dh;

    iget-object v0, v0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getConnType()I

    move-result v0

    if-eq v0, p3, :cond_1

    .line 312
    const/4 v0, 0x3

    if-ne v0, p3, :cond_2

    .line 313
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dl;->a:Lcom/aadhk/restpos/d/dh;

    iget-object v1, v1, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 314
    const v1, 0x7f09024d

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(I)V

    .line 315
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    .line 316
    iget-object v0, p0, Lcom/aadhk/restpos/d/dl;->a:Lcom/aadhk/restpos/d/dh;

    iget-object v0, v0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0, p3}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setConnType(I)V

    .line 342
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/dl;->a:Lcom/aadhk/restpos/d/dh;

    iget-object v0, v0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PrinterActivity;->a()V

    .line 345
    :cond_1
    return-void

    .line 317
    :cond_2
    const/4 v0, 0x1

    if-ne v0, p3, :cond_3

    .line 318
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dl;->a:Lcom/aadhk/restpos/d/dh;

    iget-object v1, v1, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 319
    const v1, 0x7f09024e

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(I)V

    .line 320
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    .line 321
    iget-object v0, p0, Lcom/aadhk/restpos/d/dl;->a:Lcom/aadhk/restpos/d/dh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/dh;->g(Lcom/aadhk/restpos/d/dh;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/dl;->a:Lcom/aadhk/restpos/d/dh;

    iget-object v1, v1, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getConnType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 322
    :cond_3
    const/4 v0, 0x2

    if-ne v0, p3, :cond_5

    .line 323
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 324
    const/16 v1, 0xb

    if-le v0, v1, :cond_4

    .line 325
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dl;->a:Lcom/aadhk/restpos/d/dh;

    iget-object v1, v1, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 326
    const v1, 0x7f090250

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(I)V

    .line 327
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    .line 328
    iget-object v0, p0, Lcom/aadhk/restpos/d/dl;->a:Lcom/aadhk/restpos/d/dh;

    iget-object v0, v0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0, p3}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setConnType(I)V

    goto :goto_0

    .line 330
    :cond_4
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dl;->a:Lcom/aadhk/restpos/d/dh;

    iget-object v1, v1, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 331
    const v1, 0x7f09024f

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(I)V

    .line 332
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    .line 333
    iget-object v0, p0, Lcom/aadhk/restpos/d/dl;->a:Lcom/aadhk/restpos/d/dh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/dh;->g(Lcom/aadhk/restpos/d/dh;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/dl;->a:Lcom/aadhk/restpos/d/dh;

    iget-object v1, v1, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getConnType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 336
    :cond_5
    if-nez p3, :cond_0

    .line 337
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dl;->a:Lcom/aadhk/restpos/d/dh;

    iget-object v1, v1, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 338
    const v1, 0x7f09024c

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(I)V

    .line 339
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    .line 340
    iget-object v0, p0, Lcom/aadhk/restpos/d/dl;->a:Lcom/aadhk/restpos/d/dh;

    iget-object v0, v0, Lcom/aadhk/restpos/d/dh;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

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
    .line 349
    return-void
.end method
