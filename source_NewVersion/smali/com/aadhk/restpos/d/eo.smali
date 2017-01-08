.class final Lcom/aadhk/restpos/d/eo;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ep;

.field final synthetic b:I

.field final synthetic c:Lcom/aadhk/restpos/d/en;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/en;Lcom/aadhk/restpos/d/ep;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/aadhk/restpos/d/eo;->c:Lcom/aadhk/restpos/d/en;

    iput-object p2, p0, Lcom/aadhk/restpos/d/eo;->a:Lcom/aadhk/restpos/d/ep;

    iput p3, p0, Lcom/aadhk/restpos/d/eo;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/aadhk/restpos/d/eo;->a:Lcom/aadhk/restpos/d/ep;

    iget-object v0, v0, Lcom/aadhk/restpos/d/ep;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 198
    iget-object v1, p0, Lcom/aadhk/restpos/d/eo;->c:Lcom/aadhk/restpos/d/en;

    iget-object v1, v1, Lcom/aadhk/restpos/d/en;->h:Lcom/aadhk/restpos/d/ek;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ek;->d(Lcom/aadhk/restpos/d/ek;)[Z

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/d/eo;->b:I

    aput-boolean v0, v1, v2

    .line 199
    iget-object v1, p0, Lcom/aadhk/restpos/d/eo;->c:Lcom/aadhk/restpos/d/en;

    iget-object v1, v1, Lcom/aadhk/restpos/d/en;->h:Lcom/aadhk/restpos/d/ek;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ek;->c(Lcom/aadhk/restpos/d/ek;)Lcom/aadhk/restpos/f/l;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/eo;->c:Lcom/aadhk/restpos/d/en;

    iget-object v2, v2, Lcom/aadhk/restpos/d/en;->h:Lcom/aadhk/restpos/d/ek;

    invoke-static {v2}, Lcom/aadhk/restpos/d/ek;->b(Lcom/aadhk/restpos/d/ek;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/aadhk/restpos/d/eo;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/aadhk/restpos/f/l;->a(Ljava/lang/String;Z)V

    .line 200
    iget-object v0, p0, Lcom/aadhk/restpos/d/eo;->c:Lcom/aadhk/restpos/d/en;

    iget-object v0, v0, Lcom/aadhk/restpos/d/en;->h:Lcom/aadhk/restpos/d/ek;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ek;->e(Lcom/aadhk/restpos/d/ek;)Lcom/aadhk/restpos/ReportListActivity;

    move-result-object v0

    iget-boolean v0, v0, Lcom/aadhk/restpos/ReportListActivity;->a:Z

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/aadhk/restpos/d/eo;->c:Lcom/aadhk/restpos/d/en;

    iget-object v0, v0, Lcom/aadhk/restpos/d/en;->h:Lcom/aadhk/restpos/d/ek;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ek;->f(Lcom/aadhk/restpos/d/ek;)V

    .line 203
    :cond_0
    return-void
.end method
