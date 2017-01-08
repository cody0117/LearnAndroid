.class final Lcom/aadhk/restpos/d/an;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/al;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/d/al;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/aadhk/restpos/d/an;->a:Lcom/aadhk/restpos/d/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/al;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/an;-><init>(Lcom/aadhk/restpos/d/al;)V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/aadhk/restpos/d/an;->a:Lcom/aadhk/restpos/d/al;

    invoke-static {v0}, Lcom/aadhk/restpos/d/al;->a(Lcom/aadhk/restpos/d/al;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 213
    iget-object v0, p0, Lcom/aadhk/restpos/d/an;->a:Lcom/aadhk/restpos/d/al;

    invoke-static {v0}, Lcom/aadhk/restpos/d/al;->b(Lcom/aadhk/restpos/d/al;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 215
    iget-object v0, p0, Lcom/aadhk/restpos/d/an;->a:Lcom/aadhk/restpos/d/al;

    invoke-static {v0}, Lcom/aadhk/restpos/d/al;->c(Lcom/aadhk/restpos/d/al;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Item;

    .line 216
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Item;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 217
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    iget-object v3, p0, Lcom/aadhk/restpos/d/an;->a:Lcom/aadhk/restpos/d/al;

    invoke-static {v3}, Lcom/aadhk/restpos/d/al;->a(Lcom/aadhk/restpos/d/al;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/an;->a:Lcom/aadhk/restpos/d/al;

    invoke-static {v0}, Lcom/aadhk/restpos/d/al;->a(Lcom/aadhk/restpos/d/al;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aadhk/restpos/util/d;

    invoke-direct {v1}, Lcom/aadhk/restpos/util/d;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 222
    iget-object v0, p0, Lcom/aadhk/restpos/d/an;->a:Lcom/aadhk/restpos/d/al;

    invoke-static {v0}, Lcom/aadhk/restpos/d/al;->d(Lcom/aadhk/restpos/d/al;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/aadhk/restpos/a/bl;

    invoke-static {}, Lcom/aadhk/restpos/d/al;->b()Lcom/aadhk/restpos/TakeOrderActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/an;->a:Lcom/aadhk/restpos/d/al;

    invoke-static {v3}, Lcom/aadhk/restpos/d/al;->a(Lcom/aadhk/restpos/d/al;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/a/bl;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 223
    return-void
.end method
