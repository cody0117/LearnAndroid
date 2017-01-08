.class final Lcom/aadhk/restpos/d/dm;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/dh;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/dh;)V
    .locals 0
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/aadhk/restpos/d/dm;->a:Lcom/aadhk/restpos/d/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 512
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 508
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 503
    iget-object v0, p0, Lcom/aadhk/restpos/d/dm;->a:Lcom/aadhk/restpos/d/dh;

    iget-object v0, v0, Lcom/aadhk/restpos/d/dh;->h:Lcom/aadhk/restpos/PrinterActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dm;->a:Lcom/aadhk/restpos/d/dh;

    invoke-virtual {v1}, Lcom/aadhk/restpos/d/dh;->f()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/PrinterActivity;->a(Landroid/graphics/Bitmap;)V

    .line 504
    return-void
.end method
