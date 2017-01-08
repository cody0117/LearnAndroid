.class final Lcom/aadhk/restpos/d/m;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/j;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/j;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/aadhk/restpos/d/m;->a:Lcom/aadhk/restpos/d/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/aadhk/restpos/d/m;->a:Lcom/aadhk/restpos/d/j;

    iget-object v1, p0, Lcom/aadhk/restpos/d/m;->a:Lcom/aadhk/restpos/d/j;

    invoke-static {v1}, Lcom/aadhk/restpos/d/j;->d(Lcom/aadhk/restpos/d/j;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/j;->a(Lcom/aadhk/restpos/d/j;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/aadhk/restpos/d/m;->a:Lcom/aadhk/restpos/d/j;

    iget-object v1, p0, Lcom/aadhk/restpos/d/m;->a:Lcom/aadhk/restpos/d/j;

    invoke-static {v1}, Lcom/aadhk/restpos/d/j;->e(Lcom/aadhk/restpos/d/j;)Ljava/lang/String;

    invoke-static {v0}, Lcom/aadhk/restpos/d/j;->f(Lcom/aadhk/restpos/d/j;)V

    .line 181
    return-void
.end method
