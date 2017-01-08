.class final Lcom/aadhk/restpos/d/ah;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/i;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ag;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/aadhk/restpos/d/ah;->a:Lcom/aadhk/restpos/d/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ah;->a:Lcom/aadhk/restpos/d/ag;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ag;->a(Lcom/aadhk/restpos/d/ag;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/aadhk/restpos/d/ah;->a:Lcom/aadhk/restpos/d/ag;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ag;->a(Lcom/aadhk/restpos/d/ag;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ModifierGroup;

    .line 135
    if-nez v1, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ModifierGroup;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 133
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 138
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ModifierGroup;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 141
    :cond_1
    invoke-static {}, Lcom/aadhk/restpos/d/ag;->a()Lcom/aadhk/restpos/b/i;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ah;->a:Lcom/aadhk/restpos/d/ag;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ag;->b(Lcom/aadhk/restpos/d/ag;)J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v5, v1}, Lcom/aadhk/restpos/b/i;->a(JLjava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/aadhk/restpos/d/ah;->a:Lcom/aadhk/restpos/d/ag;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ag;->c(Lcom/aadhk/restpos/d/ag;)Lcom/aadhk/restpos/d/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/ao;->notifyDataSetChanged()V

    .line 143
    iget-object v0, p0, Lcom/aadhk/restpos/d/ah;->a:Lcom/aadhk/restpos/d/ag;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ag;->d(Lcom/aadhk/restpos/d/ag;)Lcom/aadhk/restpos/MgrItemActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/aadhk/restpos/d/ah;->a:Lcom/aadhk/restpos/d/ag;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ag;->d(Lcom/aadhk/restpos/d/ag;)Lcom/aadhk/restpos/MgrItemActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/MgrItemActivity;->a(Lcom/aadhk/restpos/bean/Item;)V

    .line 148
    :goto_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/ah;->a:Lcom/aadhk/restpos/d/ag;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ag;->d(Lcom/aadhk/restpos/d/ag;)Lcom/aadhk/restpos/MgrItemActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ah;->a:Lcom/aadhk/restpos/d/ag;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ag;->d(Lcom/aadhk/restpos/d/ag;)Lcom/aadhk/restpos/MgrItemActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/MgrItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f09023e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 149
    return-void

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/ah;->a:Lcom/aadhk/restpos/d/ag;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ag;->d(Lcom/aadhk/restpos/d/ag;)Lcom/aadhk/restpos/MgrItemActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrItemActivity;->d()V

    goto :goto_2
.end method
