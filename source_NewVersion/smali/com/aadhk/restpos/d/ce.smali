.class final Lcom/aadhk/restpos/d/ce;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Lcom/aadhk/restpos/bean/PaymentMethod;

.field final synthetic c:Lcom/aadhk/restpos/d/cd;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/cd;Landroid/widget/Button;Lcom/aadhk/restpos/bean/PaymentMethod;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/aadhk/restpos/d/ce;->c:Lcom/aadhk/restpos/d/cd;

    iput-object p2, p0, Lcom/aadhk/restpos/d/ce;->a:Landroid/widget/Button;

    iput-object p3, p0, Lcom/aadhk/restpos/d/ce;->b:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 338
    iget-object v0, p0, Lcom/aadhk/restpos/d/ce;->c:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->a(Lcom/aadhk/restpos/d/cd;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/aadhk/restpos/d/ce;->c:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->a(Lcom/aadhk/restpos/d/cd;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 340
    iget-object v0, p0, Lcom/aadhk/restpos/d/ce;->c:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->a(Lcom/aadhk/restpos/d/cd;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, 0x4180

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 341
    iget-object v0, p0, Lcom/aadhk/restpos/d/ce;->c:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->a(Lcom/aadhk/restpos/d/cd;)Landroid/widget/Button;

    move-result-object v0

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ce;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ce;->c:Lcom/aadhk/restpos/d/cd;

    invoke-virtual {v1}, Lcom/aadhk/restpos/d/cd;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 345
    iget-object v0, p0, Lcom/aadhk/restpos/d/ce;->a:Landroid/widget/Button;

    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 346
    iget-object v0, p0, Lcom/aadhk/restpos/d/ce;->a:Landroid/widget/Button;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 348
    iget-object v0, p0, Lcom/aadhk/restpos/d/ce;->c:Lcom/aadhk/restpos/d/cd;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ce;->a:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/cd;->a(Lcom/aadhk/restpos/d/cd;Landroid/widget/Button;)Landroid/widget/Button;

    .line 349
    iget-object v0, p0, Lcom/aadhk/restpos/d/ce;->c:Lcom/aadhk/restpos/d/cd;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ce;->b:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/cd;->a(Lcom/aadhk/restpos/d/cd;Lcom/aadhk/restpos/bean/PaymentMethod;)Lcom/aadhk/restpos/bean/PaymentMethod;

    .line 350
    iget-object v0, p0, Lcom/aadhk/restpos/d/ce;->c:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->b(Lcom/aadhk/restpos/d/cd;)V

    .line 351
    return-void
.end method
