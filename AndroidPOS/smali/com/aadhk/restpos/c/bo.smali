.class public final Lcom/aadhk/restpos/c/bo;
.super Landroid/app/Dialog;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/aadhk/restpos/c/bp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 23
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bo;->requestWindowFeature(I)Z

    .line 25
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bo;->setCancelable(Z)V

    .line 26
    const v0, 0x7f030056

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bo;->setContentView(I)V

    .line 27
    const v0, 0x7f09011b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bo;->b:Landroid/widget/TextView;

    .line 29
    const v0, 0x7f09010e

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bo;->a:Landroid/widget/Button;

    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/c/bo;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/c/bo;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 39
    return-void
.end method

.method public final a(Lcom/aadhk/restpos/c/bp;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/aadhk/restpos/c/bo;->c:Lcom/aadhk/restpos/c/bp;

    .line 55
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/c/bo;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/c/bo;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/c/bo;->c:Lcom/aadhk/restpos/c/bp;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/c/bo;->c:Lcom/aadhk/restpos/c/bp;

    invoke-interface {v0}, Lcom/aadhk/restpos/c/bp;->a()V

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/bo;->dismiss()V

    .line 51
    :cond_1
    return-void
.end method
