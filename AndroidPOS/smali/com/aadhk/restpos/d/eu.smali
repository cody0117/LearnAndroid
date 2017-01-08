.class final Lcom/aadhk/restpos/d/eu;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/eq;

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
.method private constructor <init>(Lcom/aadhk/restpos/d/eq;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/aadhk/restpos/d/eu;->a:Lcom/aadhk/restpos/d/eq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/eq;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/eu;-><init>(Lcom/aadhk/restpos/d/eq;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/eq;->e(Lcom/aadhk/restpos/d/eq;)Lcom/aadhk/restpos/PayInOutActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/PayInOutActivity;->c()Lcom/aadhk/restpos/g/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/eu;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v2}, Lcom/aadhk/restpos/d/eq;->a(Lcom/aadhk/restpos/d/eq;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/eu;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v2}, Lcom/aadhk/restpos/d/eq;->b(Lcom/aadhk/restpos/d/eq;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aadhk/restpos/d/eu;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v3}, Lcom/aadhk/restpos/d/eq;->c(Lcom/aadhk/restpos/d/eq;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/eu;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v3}, Lcom/aadhk/restpos/d/eq;->d(Lcom/aadhk/restpos/d/eq;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/g/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eu;->b:Ljava/util/Map;

    .line 120
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 124
    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/aadhk/restpos/d/eu;->a:Lcom/aadhk/restpos/d/eq;

    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/eq;->a(Lcom/aadhk/restpos/d/eq;Ljava/util/List;)Ljava/util/List;

    .line 127
    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/eq;->g(Lcom/aadhk/restpos/d/eq;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/aadhk/restpos/a/a;

    iget-object v2, p0, Lcom/aadhk/restpos/d/eu;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v2}, Lcom/aadhk/restpos/d/eq;->e(Lcom/aadhk/restpos/d/eq;)Lcom/aadhk/restpos/PayInOutActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/eu;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v3}, Lcom/aadhk/restpos/d/eq;->f(Lcom/aadhk/restpos/d/eq;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/eu;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v4}, Lcom/aadhk/restpos/d/eq;->e(Lcom/aadhk/restpos/d/eq;)Lcom/aadhk/restpos/PayInOutActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aadhk/restpos/PayInOutActivity;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/aadhk/restpos/a/a;-><init>(Lcom/aadhk/restpos/PayInOutActivity;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/eq;->h(Lcom/aadhk/restpos/d/eq;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 129
    iget-object v1, p0, Lcom/aadhk/restpos/d/eu;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v1}, Lcom/aadhk/restpos/d/eq;->f(Lcom/aadhk/restpos/d/eq;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 130
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    :goto_0
    return-void

    .line 132
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 134
    :cond_1
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/eq;->e(Lcom/aadhk/restpos/d/eq;)Lcom/aadhk/restpos/PayInOutActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 136
    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/eq;->e(Lcom/aadhk/restpos/d/eq;)Lcom/aadhk/restpos/PayInOutActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 137
    :cond_3
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/eq;->e(Lcom/aadhk/restpos/d/eq;)Lcom/aadhk/restpos/PayInOutActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 140
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/eu;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/eq;->e(Lcom/aadhk/restpos/d/eq;)Lcom/aadhk/restpos/PayInOutActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
