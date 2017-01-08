.class final Lcom/aadhk/restpos/d/hq;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/hk;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/d/hk;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/aadhk/restpos/d/hq;->a:Lcom/aadhk/restpos/d/hk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/hk;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/hq;-><init>(Lcom/aadhk/restpos/d/hk;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    .line 280
    iget-object v0, p0, Lcom/aadhk/restpos/d/hq;->a:Lcom/aadhk/restpos/d/hk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/hk;->o(Lcom/aadhk/restpos/d/hk;)Lcom/aadhk/restpos/g/w;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/hq;->a:Lcom/aadhk/restpos/d/hk;

    invoke-static {v1}, Lcom/aadhk/restpos/d/hk;->e(Lcom/aadhk/restpos/d/hk;)Lcom/aadhk/restpos/ReportListActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/hq;->a:Lcom/aadhk/restpos/d/hk;

    invoke-static {v2}, Lcom/aadhk/restpos/d/hk;->d(Lcom/aadhk/restpos/d/hk;)[Z

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/hq;->a:Lcom/aadhk/restpos/d/hk;

    invoke-static {v3}, Lcom/aadhk/restpos/d/hk;->a(Lcom/aadhk/restpos/d/hk;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/hq;->a:Lcom/aadhk/restpos/d/hk;

    invoke-static {v4}, Lcom/aadhk/restpos/d/hk;->h(Lcom/aadhk/restpos/d/hk;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/d/hq;->a:Lcom/aadhk/restpos/d/hk;

    invoke-static {v5}, Lcom/aadhk/restpos/d/hk;->i(Lcom/aadhk/restpos/d/hk;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/aadhk/restpos/d/hq;->a:Lcom/aadhk/restpos/d/hk;

    invoke-static {v6}, Lcom/aadhk/restpos/d/hk;->j(Lcom/aadhk/restpos/d/hk;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/aadhk/restpos/d/hq;->a:Lcom/aadhk/restpos/d/hk;

    invoke-static {v8}, Lcom/aadhk/restpos/d/hk;->k(Lcom/aadhk/restpos/d/hk;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/aadhk/restpos/d/hq;->a:Lcom/aadhk/restpos/d/hk;

    invoke-static {v8}, Lcom/aadhk/restpos/d/hk;->l(Lcom/aadhk/restpos/d/hk;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/aadhk/restpos/d/hq;->a:Lcom/aadhk/restpos/d/hk;

    invoke-static {v9}, Lcom/aadhk/restpos/d/hk;->m(Lcom/aadhk/restpos/d/hk;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/aadhk/restpos/d/hq;->a:Lcom/aadhk/restpos/d/hk;

    invoke-static {v9}, Lcom/aadhk/restpos/d/hk;->n(Lcom/aadhk/restpos/d/hk;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/aadhk/restpos/g/w;->a(Landroid/content/Context;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/hq;->b:Ljava/util/Map;

    .line 281
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 285
    iget-object v0, p0, Lcom/aadhk/restpos/d/hq;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 286
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/aadhk/restpos/d/hq;->a:Lcom/aadhk/restpos/d/hk;

    iget-object v0, p0, Lcom/aadhk/restpos/d/hq;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/hk;->a(Lcom/aadhk/restpos/d/hk;Ljava/util/List;)Ljava/util/List;

    .line 288
    iget-object v0, p0, Lcom/aadhk/restpos/d/hq;->a:Lcom/aadhk/restpos/d/hk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/hk;->e(Lcom/aadhk/restpos/d/hk;)Lcom/aadhk/restpos/ReportListActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/hq;->a:Lcom/aadhk/restpos/d/hk;

    invoke-static {v1}, Lcom/aadhk/restpos/d/hk;->p(Lcom/aadhk/restpos/d/hk;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aadhk/restpos/d/hq;->a:Lcom/aadhk/restpos/d/hk;

    invoke-static {v3}, Lcom/aadhk/restpos/d/hk;->k(Lcom/aadhk/restpos/d/hk;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/hq;->a:Lcom/aadhk/restpos/d/hk;

    invoke-static {v3}, Lcom/aadhk/restpos/d/hk;->l(Lcom/aadhk/restpos/d/hk;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aadhk/restpos/d/hq;->a:Lcom/aadhk/restpos/d/hk;

    invoke-static {v4}, Lcom/aadhk/restpos/d/hk;->m(Lcom/aadhk/restpos/d/hk;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/hq;->a:Lcom/aadhk/restpos/d/hk;

    invoke-static {v4}, Lcom/aadhk/restpos/d/hk;->n(Lcom/aadhk/restpos/d/hk;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/aadhk/restpos/ReportListActivity;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :goto_0
    return-void

    .line 289
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/hq;->a:Lcom/aadhk/restpos/d/hk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/hk;->e(Lcom/aadhk/restpos/d/hk;)Lcom/aadhk/restpos/ReportListActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 291
    iget-object v0, p0, Lcom/aadhk/restpos/d/hq;->a:Lcom/aadhk/restpos/d/hk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/hk;->e(Lcom/aadhk/restpos/d/hk;)Lcom/aadhk/restpos/ReportListActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 292
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 293
    iget-object v0, p0, Lcom/aadhk/restpos/d/hq;->a:Lcom/aadhk/restpos/d/hk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/hk;->e(Lcom/aadhk/restpos/d/hk;)Lcom/aadhk/restpos/ReportListActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 295
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/hq;->a:Lcom/aadhk/restpos/d/hk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/hk;->e(Lcom/aadhk/restpos/d/hk;)Lcom/aadhk/restpos/ReportListActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
