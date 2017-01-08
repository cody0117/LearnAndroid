.class final Lcom/aadhk/restpos/d/ez;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Lcom/aadhk/restpos/bean/PaymentMethod;

.field final synthetic c:Lcom/aadhk/restpos/d/ey;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/ey;Landroid/widget/Button;Lcom/aadhk/restpos/bean/PaymentMethod;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/aadhk/restpos/d/ez;->c:Lcom/aadhk/restpos/d/ey;

    iput-object p2, p0, Lcom/aadhk/restpos/d/ez;->a:Landroid/widget/Button;

    iput-object p3, p0, Lcom/aadhk/restpos/d/ez;->b:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/aadhk/restpos/d/ez;->c:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->a(Lcom/aadhk/restpos/d/ey;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/aadhk/restpos/d/ez;->c:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->a(Lcom/aadhk/restpos/d/ey;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 290
    iget-object v0, p0, Lcom/aadhk/restpos/d/ez;->c:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->a(Lcom/aadhk/restpos/d/ey;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, 0x4180

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 291
    iget-object v0, p0, Lcom/aadhk/restpos/d/ez;->c:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->a(Lcom/aadhk/restpos/d/ey;)Landroid/widget/Button;

    move-result-object v0

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ez;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ez;->c:Lcom/aadhk/restpos/d/ey;

    invoke-virtual {v1}, Lcom/aadhk/restpos/d/ey;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 295
    iget-object v0, p0, Lcom/aadhk/restpos/d/ez;->a:Landroid/widget/Button;

    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 296
    iget-object v0, p0, Lcom/aadhk/restpos/d/ez;->a:Landroid/widget/Button;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 298
    iget-object v0, p0, Lcom/aadhk/restpos/d/ez;->c:Lcom/aadhk/restpos/d/ey;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ez;->a:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/ey;->a(Lcom/aadhk/restpos/d/ey;Landroid/widget/Button;)Landroid/widget/Button;

    .line 299
    iget-object v0, p0, Lcom/aadhk/restpos/d/ez;->c:Lcom/aadhk/restpos/d/ey;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ez;->b:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/ey;->a(Lcom/aadhk/restpos/d/ey;Lcom/aadhk/restpos/bean/PaymentMethod;)Lcom/aadhk/restpos/bean/PaymentMethod;

    .line 300
    iget-object v0, p0, Lcom/aadhk/restpos/d/ez;->c:Lcom/aadhk/restpos/d/ey;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ey;->b(Lcom/aadhk/restpos/d/ey;)V

    .line 301
    return-void
.end method
