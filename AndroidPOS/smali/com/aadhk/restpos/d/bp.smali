.class final Lcom/aadhk/restpos/d/bp;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/bm;

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
.method private constructor <init>(Lcom/aadhk/restpos/d/bm;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/bm;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/bp;-><init>(Lcom/aadhk/restpos/d/bm;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bm;->e(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/g/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/g/i;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bp;->b:Ljava/util/Map;

    .line 341
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 345
    iget-object v0, p0, Lcom/aadhk/restpos/d/bp;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 346
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 348
    iget-object v0, p0, Lcom/aadhk/restpos/d/bp;->b:Ljava/util/Map;

    const-string v1, "serviceData"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/VersionData;

    .line 349
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/VersionData;->getVersioMap()Ljava/util/Map;

    move-result-object v2

    .line 351
    const-string v1, "rest_table"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bm;->e(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/g/i;

    move-result-object v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/VersionData;->getTableList()Ljava/util/List;

    move-result-object v4

    const-string v1, "rest_table"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lcom/aadhk/restpos/g/i;->a(Ljava/util/List;I)V

    .line 356
    :cond_0
    const-string v1, "rest_category"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 359
    iget-object v1, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bm;->e(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/g/i;

    move-result-object v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/VersionData;->getCategoryList()Ljava/util/List;

    move-result-object v4

    const-string v1, "rest_category"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lcom/aadhk/restpos/g/i;->b(Ljava/util/List;I)V

    .line 361
    :cond_1
    const-string v1, "rest_item"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 365
    iget-object v1, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bm;->e(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/g/i;

    move-result-object v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/VersionData;->getItemList()Ljava/util/List;

    move-result-object v4

    const-string v1, "rest_item"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lcom/aadhk/restpos/g/i;->c(Ljava/util/List;I)V

    .line 367
    :cond_2
    const-string v1, "rest_modifier_group"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 370
    iget-object v1, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bm;->e(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/g/i;

    move-result-object v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/VersionData;->getModifierGroupList()Ljava/util/List;

    move-result-object v4

    const-string v1, "rest_modifier_group"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lcom/aadhk/restpos/g/i;->d(Ljava/util/List;I)V

    .line 372
    :cond_3
    const-string v1, "rest_modifier"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 375
    iget-object v1, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bm;->e(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/g/i;

    move-result-object v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/VersionData;->getModifierList()Ljava/util/List;

    move-result-object v4

    const-string v1, "rest_modifier"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lcom/aadhk/restpos/g/i;->e(Ljava/util/List;I)V

    .line 377
    :cond_4
    const-string v1, "rest_company"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 379
    iget-object v1, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bm;->e(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/g/i;

    move-result-object v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/VersionData;->getCompany()Lcom/aadhk/restpos/bean/Company;

    move-result-object v4

    const-string v1, "rest_company"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lcom/aadhk/restpos/g/i;->a(Lcom/aadhk/restpos/bean/Company;I)V

    .line 380
    iget-object v1, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bm;->b(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/LoginActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v1}, Lcom/aadhk/restpos/POSApp;->c()V

    .line 382
    :cond_5
    const-string v1, "rest_user"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 386
    iget-object v1, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bm;->e(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/g/i;

    move-result-object v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/VersionData;->getUserList()Ljava/util/List;

    move-result-object v4

    const-string v1, "rest_user"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lcom/aadhk/restpos/g/i;->f(Ljava/util/List;I)V

    .line 388
    :cond_6
    const-string v1, "rest_customer"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 391
    iget-object v1, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bm;->e(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/g/i;

    move-result-object v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/VersionData;->getCustomerList()Ljava/util/List;

    move-result-object v4

    const-string v1, "rest_customer"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lcom/aadhk/restpos/g/i;->g(Ljava/util/List;I)V

    .line 393
    :cond_7
    const-string v1, "rest_currency"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 396
    iget-object v1, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bm;->e(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/g/i;

    move-result-object v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/VersionData;->getCurrencyList()Ljava/util/List;

    move-result-object v4

    const-string v1, "rest_currency"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lcom/aadhk/restpos/g/i;->h(Ljava/util/List;I)V

    .line 398
    :cond_8
    const-string v1, "rest_role_permission"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 401
    iget-object v1, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bm;->e(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/g/i;

    move-result-object v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/VersionData;->getRolePermissionList()Ljava/util/List;

    move-result-object v4

    const-string v1, "rest_role_permission"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lcom/aadhk/restpos/g/i;->i(Ljava/util/List;I)V

    .line 402
    iget-object v1, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bm;->b(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/LoginActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v1}, Lcom/aadhk/restpos/POSApp;->f()V

    .line 404
    :cond_9
    const-string v1, "rest_printer"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 408
    iget-object v1, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bm;->e(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/g/i;

    move-result-object v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/VersionData;->getPrinterList()Ljava/util/List;

    move-result-object v4

    const-string v1, "rest_printer"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lcom/aadhk/restpos/g/i;->j(Ljava/util/List;I)V

    .line 409
    iget-object v1, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bm;->b(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/LoginActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v1}, Lcom/aadhk/restpos/POSApp;->l()V

    .line 410
    iget-object v1, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bm;->b(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/LoginActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v1}, Lcom/aadhk/restpos/POSApp;->n()V

    .line 413
    :cond_a
    const-string v1, "rest_kitchen_note_group"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 416
    iget-object v1, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bm;->e(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/g/i;

    move-result-object v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/VersionData;->getKitchenNoteGroupList()Ljava/util/List;

    move-result-object v4

    const-string v1, "rest_kitchen_note_group"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lcom/aadhk/restpos/g/i;->k(Ljava/util/List;I)V

    .line 418
    :cond_b
    const-string v1, "rest_kitchen_note"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 421
    iget-object v1, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bm;->e(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/g/i;

    move-result-object v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/VersionData;->getKitchenNoteList()Ljava/util/List;

    move-result-object v4

    const-string v1, "rest_kitchen_note"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lcom/aadhk/restpos/g/i;->l(Ljava/util/List;I)V

    .line 423
    :cond_c
    const-string v1, "rest_price_sechedule"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 426
    iget-object v1, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bm;->e(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/g/i;

    move-result-object v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/VersionData;->getPriceScheduleList()Ljava/util/List;

    move-result-object v4

    const-string v1, "rest_price_sechedule"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lcom/aadhk/restpos/g/i;->m(Ljava/util/List;I)V

    .line 428
    :cond_d
    const-string v1, "rest_discount"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 431
    iget-object v1, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bm;->e(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/g/i;

    move-result-object v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/VersionData;->getDiscountList()Ljava/util/List;

    move-result-object v4

    const-string v1, "rest_discount"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lcom/aadhk/restpos/g/i;->n(Ljava/util/List;I)V

    .line 433
    :cond_e
    const-string v1, "rest_note"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 436
    iget-object v1, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bm;->e(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/g/i;

    move-result-object v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/VersionData;->getNoteList()Ljava/util/List;

    move-result-object v4

    const-string v1, "rest_note"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lcom/aadhk/restpos/g/i;->o(Ljava/util/List;I)V

    .line 438
    :cond_f
    const-string v1, "rest_payment_method"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 441
    iget-object v1, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bm;->e(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/g/i;

    move-result-object v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/VersionData;->getPaymentMethodList()Ljava/util/List;

    move-result-object v4

    const-string v1, "rest_payment_method"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lcom/aadhk/restpos/g/i;->q(Ljava/util/List;I)V

    .line 442
    iget-object v1, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bm;->b(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/LoginActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v1}, Lcom/aadhk/restpos/POSApp;->j()V

    .line 444
    :cond_10
    const-string v1, "rest_service_fee"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "TABLE_SERVICE_FEE:================"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/VersionData;->getServiceFeeList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 447
    iget-object v1, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bm;->e(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/g/i;

    move-result-object v1

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/VersionData;->getServiceFeeList()Ljava/util/List;

    move-result-object v3

    const-string v0, "rest_service_fee"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/aadhk/restpos/g/i;->p(Ljava/util/List;I)V

    .line 448
    iget-object v0, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bm;->b(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/LoginActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->h()V

    .line 450
    :cond_11
    iget-object v0, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bm;->c(Lcom/aadhk/restpos/d/bm;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f08025c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 458
    :cond_12
    :goto_0
    return-void

    .line 451
    :cond_13
    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 453
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 454
    iget-object v0, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bm;->b(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/LoginActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 456
    :cond_14
    iget-object v0, p0, Lcom/aadhk/restpos/d/bp;->a:Lcom/aadhk/restpos/d/bm;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bm;->b(Lcom/aadhk/restpos/d/bm;)Lcom/aadhk/restpos/LoginActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
