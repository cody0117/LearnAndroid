.class final Lcom/aadhk/restpos/d/x;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/User;

.field final synthetic b:Landroid/widget/Button;

.field final synthetic c:Lcom/aadhk/restpos/d/w;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/w;Lcom/aadhk/restpos/bean/User;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/aadhk/restpos/d/x;->c:Lcom/aadhk/restpos/d/w;

    iput-object p2, p0, Lcom/aadhk/restpos/d/x;->a:Lcom/aadhk/restpos/bean/User;

    iput-object p3, p0, Lcom/aadhk/restpos/d/x;->b:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/aadhk/restpos/d/x;->c:Lcom/aadhk/restpos/d/w;

    iget-object v1, p0, Lcom/aadhk/restpos/d/x;->a:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/w;->a(Lcom/aadhk/restpos/d/w;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/aadhk/restpos/d/x;->c:Lcom/aadhk/restpos/d/w;

    iget-object v1, p0, Lcom/aadhk/restpos/d/x;->a:Lcom/aadhk/restpos/bean/User;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/w;->a(Lcom/aadhk/restpos/d/w;Lcom/aadhk/restpos/bean/User;)Lcom/aadhk/restpos/bean/User;

    .line 119
    iget-object v0, p0, Lcom/aadhk/restpos/d/x;->c:Lcom/aadhk/restpos/d/w;

    invoke-static {v0}, Lcom/aadhk/restpos/d/w;->a(Lcom/aadhk/restpos/d/w;)Landroid/widget/Button;

    move-result-object v0

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 120
    iget-object v0, p0, Lcom/aadhk/restpos/d/x;->c:Lcom/aadhk/restpos/d/w;

    invoke-static {v0}, Lcom/aadhk/restpos/d/w;->a(Lcom/aadhk/restpos/d/w;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 121
    iget-object v0, p0, Lcom/aadhk/restpos/d/x;->c:Lcom/aadhk/restpos/d/w;

    invoke-static {v0}, Lcom/aadhk/restpos/d/w;->a(Lcom/aadhk/restpos/d/w;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 123
    iget-object v0, p0, Lcom/aadhk/restpos/d/x;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/aadhk/restpos/d/x;->c:Lcom/aadhk/restpos/d/w;

    invoke-virtual {v1}, Lcom/aadhk/restpos/d/w;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 124
    iget-object v0, p0, Lcom/aadhk/restpos/d/x;->b:Landroid/widget/Button;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 125
    iget-object v0, p0, Lcom/aadhk/restpos/d/x;->b:Landroid/widget/Button;

    const/high16 v1, 0x41b0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 126
    iget-object v0, p0, Lcom/aadhk/restpos/d/x;->c:Lcom/aadhk/restpos/d/w;

    iget-object v1, p0, Lcom/aadhk/restpos/d/x;->b:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/w;->a(Lcom/aadhk/restpos/d/w;Landroid/widget/Button;)Landroid/widget/Button;

    .line 127
    return-void
.end method
