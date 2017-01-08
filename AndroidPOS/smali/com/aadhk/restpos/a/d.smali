.class final Lcom/aadhk/restpos/a/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/aadhk/restpos/a/e;

.field final synthetic c:Lcom/aadhk/restpos/a/c;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/a/c;ILcom/aadhk/restpos/a/e;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/aadhk/restpos/a/d;->c:Lcom/aadhk/restpos/a/c;

    iput p2, p0, Lcom/aadhk/restpos/a/d;->a:I

    iput-object p3, p0, Lcom/aadhk/restpos/a/d;->b:Lcom/aadhk/restpos/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/a/d;->c:Lcom/aadhk/restpos/a/c;

    invoke-static {v0}, Lcom/aadhk/restpos/a/c;->a(Lcom/aadhk/restpos/a/c;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/aadhk/restpos/a/d;->c:Lcom/aadhk/restpos/a/c;

    invoke-static {v0}, Lcom/aadhk/restpos/a/c;->c(Lcom/aadhk/restpos/a/c;)Lcom/aadhk/restpos/util/r;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/a/d;->c:Lcom/aadhk/restpos/a/c;

    invoke-static {v1}, Lcom/aadhk/restpos/a/c;->b(Lcom/aadhk/restpos/a/c;)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/a/d;->a:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/aadhk/restpos/a/d;->b:Lcom/aadhk/restpos/a/e;

    iget-object v2, v2, Lcom/aadhk/restpos/a/e;->b:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;Z)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/a/d;->c:Lcom/aadhk/restpos/a/c;

    invoke-static {v0}, Lcom/aadhk/restpos/a/c;->a(Lcom/aadhk/restpos/a/c;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/a/d;->c:Lcom/aadhk/restpos/a/c;

    invoke-static {v1}, Lcom/aadhk/restpos/a/c;->b(Lcom/aadhk/restpos/a/c;)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/a/d;->a:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/aadhk/restpos/a/d;->b:Lcom/aadhk/restpos/a/e;

    iget-object v2, v2, Lcom/aadhk/restpos/a/e;->b:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
