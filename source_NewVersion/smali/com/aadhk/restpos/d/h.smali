.class final Lcom/aadhk/restpos/d/h;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/e;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/e;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/aadhk/restpos/d/h;->a:Lcom/aadhk/restpos/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/aadhk/restpos/d/h;->a:Lcom/aadhk/restpos/d/e;

    iget-object v1, p0, Lcom/aadhk/restpos/d/h;->a:Lcom/aadhk/restpos/d/e;

    invoke-static {v1}, Lcom/aadhk/restpos/d/e;->e(Lcom/aadhk/restpos/d/e;)Lcom/aadhk/restpos/b/e;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/h;->a:Lcom/aadhk/restpos/d/e;

    invoke-static {v2}, Lcom/aadhk/restpos/d/e;->d(Lcom/aadhk/restpos/d/e;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/b/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/e;->a(Lcom/aadhk/restpos/d/e;Ljava/util/List;)Ljava/util/List;

    .line 155
    return-void
.end method
