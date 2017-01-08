.class final Lcom/aadhk/restpos/t;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/widget/LinearLayout;

.field final synthetic c:Lcom/aadhk/restpos/KitchenActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/KitchenActivity;ILandroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/aadhk/restpos/t;->c:Lcom/aadhk/restpos/KitchenActivity;

    iput p2, p0, Lcom/aadhk/restpos/t;->a:I

    iput-object p3, p0, Lcom/aadhk/restpos/t;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f020086

    const/4 v2, 0x0

    .line 229
    iget-object v0, p0, Lcom/aadhk/restpos/t;->c:Lcom/aadhk/restpos/KitchenActivity;

    iget v1, p0, Lcom/aadhk/restpos/t;->a:I

    invoke-static {v0, v1}, Lcom/aadhk/restpos/KitchenActivity;->a(Lcom/aadhk/restpos/KitchenActivity;I)I

    .line 230
    iget-object v0, p0, Lcom/aadhk/restpos/t;->c:Lcom/aadhk/restpos/KitchenActivity;

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/KitchenActivity;->a(I)V

    .line 231
    iget-object v0, p0, Lcom/aadhk/restpos/t;->c:Lcom/aadhk/restpos/KitchenActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/KitchenActivity;->a(Lcom/aadhk/restpos/KitchenActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/t;->b:Landroid/widget/LinearLayout;

    if-eq v0, v1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/aadhk/restpos/t;->c:Lcom/aadhk/restpos/KitchenActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/KitchenActivity;->a(Lcom/aadhk/restpos/KitchenActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 233
    iget-object v0, p0, Lcom/aadhk/restpos/t;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 237
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/t;->c:Lcom/aadhk/restpos/KitchenActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/t;->b:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/KitchenActivity;->a(Lcom/aadhk/restpos/KitchenActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 238
    iget-object v0, p0, Lcom/aadhk/restpos/t;->c:Lcom/aadhk/restpos/KitchenActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/KitchenActivity;->b(Lcom/aadhk/restpos/KitchenActivity;)V

    .line 239
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/t;->c:Lcom/aadhk/restpos/KitchenActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/KitchenActivity;->a(Lcom/aadhk/restpos/KitchenActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method
