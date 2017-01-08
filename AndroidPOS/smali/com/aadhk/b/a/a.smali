.class public Lcom/aadhk/b/a/a;
.super Landroid/app/Dialog;
.source "ProGuard"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 15
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/aadhk/b/a/a;->requestWindowFeature(I)Z

    .line 17
    invoke-virtual {p0, v0}, Lcom/aadhk/b/a/a;->setCancelable(Z)V

    .line 18
    invoke-virtual {p0, p2}, Lcom/aadhk/b/a/a;->setContentView(I)V

    .line 19
    iput-object p1, p0, Lcom/aadhk/b/a/a;->a:Landroid/content/Context;

    .line 20
    sget v0, Lcom/aadhk/b/f;->b:I

    invoke-virtual {p0, v0}, Lcom/aadhk/b/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/b/a/a;->b:Landroid/widget/TextView;

    .line 21
    return-void
.end method


# virtual methods
.method public setTitle(I)V
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/aadhk/b/a/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 31
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/aadhk/b/a/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    return-void
.end method
