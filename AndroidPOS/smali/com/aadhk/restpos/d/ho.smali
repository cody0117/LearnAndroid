.class final Lcom/aadhk/restpos/d/ho;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/hp;

.field final synthetic b:I

.field final synthetic c:Lcom/aadhk/restpos/d/hn;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/hn;Lcom/aadhk/restpos/d/hp;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/aadhk/restpos/d/ho;->c:Lcom/aadhk/restpos/d/hn;

    iput-object p2, p0, Lcom/aadhk/restpos/d/ho;->a:Lcom/aadhk/restpos/d/hp;

    iput p3, p0, Lcom/aadhk/restpos/d/ho;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/aadhk/restpos/d/ho;->a:Lcom/aadhk/restpos/d/hp;

    iget-object v0, v0, Lcom/aadhk/restpos/d/hp;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 187
    iget-object v1, p0, Lcom/aadhk/restpos/d/ho;->c:Lcom/aadhk/restpos/d/hn;

    iget-object v1, v1, Lcom/aadhk/restpos/d/hn;->h:Lcom/aadhk/restpos/d/hk;

    invoke-static {v1}, Lcom/aadhk/restpos/d/hk;->d(Lcom/aadhk/restpos/d/hk;)[Z

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/d/ho;->b:I

    aput-boolean v0, v1, v2

    .line 188
    iget-object v1, p0, Lcom/aadhk/restpos/d/ho;->c:Lcom/aadhk/restpos/d/hn;

    iget-object v1, v1, Lcom/aadhk/restpos/d/hn;->h:Lcom/aadhk/restpos/d/hk;

    invoke-static {v1}, Lcom/aadhk/restpos/d/hk;->c(Lcom/aadhk/restpos/d/hk;)Lcom/aadhk/restpos/util/r;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/ho;->c:Lcom/aadhk/restpos/d/hn;

    iget-object v2, v2, Lcom/aadhk/restpos/d/hn;->h:Lcom/aadhk/restpos/d/hk;

    invoke-static {v2}, Lcom/aadhk/restpos/d/hk;->b(Lcom/aadhk/restpos/d/hk;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/aadhk/restpos/d/ho;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;Z)V

    .line 189
    iget-object v0, p0, Lcom/aadhk/restpos/d/ho;->c:Lcom/aadhk/restpos/d/hn;

    iget-object v0, v0, Lcom/aadhk/restpos/d/hn;->h:Lcom/aadhk/restpos/d/hk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/hk;->e(Lcom/aadhk/restpos/d/hk;)Lcom/aadhk/restpos/ReportListActivity;

    move-result-object v0

    iget-boolean v0, v0, Lcom/aadhk/restpos/ReportListActivity;->a:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/aadhk/restpos/d/ho;->c:Lcom/aadhk/restpos/d/hn;

    iget-object v0, v0, Lcom/aadhk/restpos/d/hn;->h:Lcom/aadhk/restpos/d/hk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/hk;->f(Lcom/aadhk/restpos/d/hk;)V

    .line 192
    :cond_0
    return-void
.end method
