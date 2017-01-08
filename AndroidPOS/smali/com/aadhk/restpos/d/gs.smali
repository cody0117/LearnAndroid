.class final Lcom/aadhk/restpos/d/gs;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/gn;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/gn;)V
    .locals 0
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Lcom/aadhk/restpos/d/gs;->a:Lcom/aadhk/restpos/d/gn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 524
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 520
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 515
    iget-object v0, p0, Lcom/aadhk/restpos/d/gs;->a:Lcom/aadhk/restpos/d/gn;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gn;->h:Lcom/aadhk/restpos/PrinterActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gs;->a:Lcom/aadhk/restpos/d/gn;

    invoke-virtual {v1}, Lcom/aadhk/restpos/d/gn;->f()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/PrinterActivity;->a(Landroid/graphics/Bitmap;)V

    .line 516
    return-void
.end method
