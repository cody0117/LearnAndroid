.class final Lcom/aadhk/restpos/d/aa;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/z;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/z;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/aadhk/restpos/d/aa;->a:Lcom/aadhk/restpos/d/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 194
    if-eqz p2, :cond_0

    .line 195
    iget-object v0, p0, Lcom/aadhk/restpos/d/aa;->a:Lcom/aadhk/restpos/d/z;

    invoke-static {v0}, Lcom/aadhk/restpos/d/z;->a(Lcom/aadhk/restpos/d/z;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/aa;->a:Lcom/aadhk/restpos/d/z;

    invoke-virtual {v1}, Lcom/aadhk/restpos/d/z;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    iget-object v0, p0, Lcom/aadhk/restpos/d/aa;->a:Lcom/aadhk/restpos/d/z;

    invoke-static {v0}, Lcom/aadhk/restpos/d/z;->b(Lcom/aadhk/restpos/d/z;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/aadhk/restpos/d/aa;->a:Lcom/aadhk/restpos/d/z;

    invoke-static {v0}, Lcom/aadhk/restpos/d/z;->c(Lcom/aadhk/restpos/d/z;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/aadhk/restpos/d/aa;->a:Lcom/aadhk/restpos/d/z;

    invoke-static {v0}, Lcom/aadhk/restpos/d/z;->d(Lcom/aadhk/restpos/d/z;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 205
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/aa;->a:Lcom/aadhk/restpos/d/z;

    invoke-static {v0}, Lcom/aadhk/restpos/d/z;->a(Lcom/aadhk/restpos/d/z;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/aa;->a:Lcom/aadhk/restpos/d/z;

    invoke-virtual {v1}, Lcom/aadhk/restpos/d/z;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    iget-object v0, p0, Lcom/aadhk/restpos/d/aa;->a:Lcom/aadhk/restpos/d/z;

    invoke-static {v0}, Lcom/aadhk/restpos/d/z;->b(Lcom/aadhk/restpos/d/z;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 202
    iget-object v0, p0, Lcom/aadhk/restpos/d/aa;->a:Lcom/aadhk/restpos/d/z;

    invoke-static {v0}, Lcom/aadhk/restpos/d/z;->c(Lcom/aadhk/restpos/d/z;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/aadhk/restpos/d/aa;->a:Lcom/aadhk/restpos/d/z;

    invoke-static {v0}, Lcom/aadhk/restpos/d/z;->d(Lcom/aadhk/restpos/d/z;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method
