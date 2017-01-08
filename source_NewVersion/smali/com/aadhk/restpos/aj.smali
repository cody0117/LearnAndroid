.class final Lcom/aadhk/restpos/aj;
.super Landroid/app/Dialog;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/LoginActivity;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/LoginActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/aadhk/restpos/aj;->a:Lcom/aadhk/restpos/LoginActivity;

    .line 301
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 302
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/aj;->requestWindowFeature(I)Z

    .line 303
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/aj;->setCancelable(Z)V

    .line 304
    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/aj;->setContentView(I)V

    .line 305
    const v0, 0x7f0b00e6

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/aj;->c:Landroid/widget/TextView;

    .line 307
    const v0, 0x7f0b00da

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/aj;->b:Landroid/widget/Button;

    .line 308
    iget-object v0, p0, Lcom/aadhk/restpos/aj;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 312
    iget-object v0, p0, Lcom/aadhk/restpos/aj;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lcom/aadhk/restpos/aj;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/aadhk/restpos/aj;->a:Lcom/aadhk/restpos/LoginActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/LoginActivity;->finish()V

    .line 319
    iget-object v0, p0, Lcom/aadhk/restpos/aj;->a:Lcom/aadhk/restpos/LoginActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/f/k;->a(Landroid/app/Activity;)V

    .line 320
    invoke-virtual {p0}, Lcom/aadhk/restpos/aj;->dismiss()V

    .line 322
    :cond_0
    return-void
.end method
