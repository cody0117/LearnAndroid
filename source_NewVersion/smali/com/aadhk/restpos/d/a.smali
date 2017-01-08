.class public final Lcom/aadhk/restpos/d/a;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/Button;

.field private j:Lcom/aadhk/restpos/bean/Company;

.field private k:Lcom/aadhk/restpos/b/c;

.field private l:Lcom/aadhk/restpos/CompanyActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/a;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/a;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->h:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->l:Lcom/aadhk/restpos/CompanyActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/CompanyActivity;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/aadhk/restpos/b/c;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/a;->k:Lcom/aadhk/restpos/b/c;

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->l:Lcom/aadhk/restpos/CompanyActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/CompanyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->b()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/a;->j:Lcom/aadhk/restpos/bean/Company;

    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax1()D

    move-result-wide v1

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax1()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax2()D

    move-result-wide v1

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax2()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->f:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/a;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTimeIn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTimeOut()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v1, -0x1

    .line 297
    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->l:Lcom/aadhk/restpos/CompanyActivity;

    if-ne p2, v1, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 298
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 299
    const-string v1, "currency"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/product/library/bean/Currency;

    .line 300
    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->e:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/product/library/bean/Currency;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/aadhk/product/library/bean/Currency;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    if-ne p2, v1, :cond_0

    if-ne p1, v7, :cond_0

    .line 302
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 303
    if-eqz v1, :cond_0

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->l:Lcom/aadhk/restpos/CompanyActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/CompanyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 307
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 308
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 310
    const-string v2, "display_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 312
    const-string v3, "_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 313
    iget-object v3, p0, Lcom/aadhk/restpos/d/a;->c:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 314
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 316
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "contact_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 318
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 320
    :cond_2
    const-string v2, "data2"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 321
    const-string v2, "data1"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 329
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 331
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 333
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "contact_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 334
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 336
    :cond_4
    const-string v1, "data1"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 337
    const-string v2, "data2"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 339
    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 340
    iget-object v2, p0, Lcom/aadhk/restpos/d/a;->d:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 346
    :cond_5
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 348
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 372
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 341
    :cond_7
    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 342
    :try_start_1
    iget-object v2, p0, Lcom/aadhk/restpos/d/a;->d:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 343
    :cond_8
    if-ne v2, v7, :cond_5

    .line 344
    iget-object v2, p0, Lcom/aadhk/restpos/d/a;->d:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/CompanyActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/a;->l:Lcom/aadhk/restpos/CompanyActivity;

    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 70
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f090055

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 130
    :sswitch_0
    new-instance v0, Lcom/aadhk/restpos/c/cg;

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->l:Lcom/aadhk/restpos/CompanyActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/a;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getTimeIn()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/c/cg;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    new-instance v1, Lcom/aadhk/restpos/d/b;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/b;-><init>(Lcom/aadhk/restpos/d/a;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/cg;->a(Lcom/aadhk/product/library/b/f;)V

    .line 137
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/cg;->show()V

    goto :goto_0

    .line 140
    :sswitch_1
    new-instance v0, Lcom/aadhk/restpos/c/cg;

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->l:Lcom/aadhk/restpos/CompanyActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/a;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getTimeOut()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/c/cg;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    new-instance v1, Lcom/aadhk/restpos/d/c;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/c;-><init>(Lcom/aadhk/restpos/d/a;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/cg;->a(Lcom/aadhk/product/library/b/f;)V

    .line 147
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/cg;->show()V

    goto :goto_0

    .line 150
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 151
    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->l:Lcom/aadhk/restpos/CompanyActivity;

    const-class v2, Lcom/aadhk/restpos/CurrencyActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 152
    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->l:Lcom/aadhk/restpos/CompanyActivity;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Lcom/aadhk/restpos/CompanyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 155
    :sswitch_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->l:Lcom/aadhk/restpos/CompanyActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/CompanyActivity;->b()V

    goto :goto_0

    .line 158
    :sswitch_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->f:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->a(Landroid/widget/EditText;)V

    goto :goto_0

    .line 161
    :sswitch_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->f:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/aadhk/restpos/f/n;->b(Landroid/widget/EditText;)V

    goto :goto_0

    .line 164
    :sswitch_6
    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/a;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/a;->h:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/a;->d:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/d/a;->e:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/aadhk/restpos/d/a;->f:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->c:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    :goto_1
    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getId()I

    move-result v0

    if-lez v0, :cond_9

    .line 166
    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->k:Lcom/aadhk/restpos/b/c;

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/c;->b(Lcom/aadhk/restpos/bean/Company;)V

    .line 170
    :goto_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->l:Lcom/aadhk/restpos/CompanyActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/CompanyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/POSApp;->a(Lcom/aadhk/restpos/bean/Company;)V

    .line 171
    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->l:Lcom/aadhk/restpos/CompanyActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/CompanyActivity;->finish()V

    goto/16 :goto_0

    .line 164
    :cond_1
    iget-object v7, p0, Lcom/aadhk/restpos/d/a;->c:Landroid/widget/EditText;

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->e:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/aadhk/restpos/d/a;->e:Landroid/widget/EditText;

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->f:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/aadhk/restpos/d/a;->f:Landroid/widget/EditText;

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->d:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    :cond_4
    invoke-static {v4}, Lcom/aadhk/product/library/c/h;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->d:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    :cond_5
    iget-object v7, p0, Lcom/aadhk/restpos/d/a;->d:Landroid/widget/EditText;

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->g:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    :cond_6
    iget-object v7, p0, Lcom/aadhk/restpos/d/a;->g:Landroid/widget/EditText;

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->g:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    :cond_7
    iget-object v7, p0, Lcom/aadhk/restpos/d/a;->g:Landroid/widget/EditText;

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->h:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Company;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0, v4}, Lcom/aadhk/restpos/bean/Company;->setEmail(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0, v5}, Lcom/aadhk/restpos/bean/Company;->setCurrency(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-static {v5}, Lcom/aadhk/product/library/c/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Company;->setCurrencySign(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Company;->setDecimalPlace(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/Company;->setTimeIn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0, v3}, Lcom/aadhk/restpos/bean/Company;->setTimeOut(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_1

    .line 168
    :cond_9
    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->k:Lcom/aadhk/restpos/b/c;

    iget-object v1, p0, Lcom/aadhk/restpos/d/a;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/c;->a(Lcom/aadhk/restpos/bean/Company;)V

    goto/16 :goto_2

    .line 128
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0056 -> :sswitch_6
        0x7f0b00d4 -> :sswitch_4
        0x7f0b00d5 -> :sswitch_5
        0x7f0b0131 -> :sswitch_2
        0x7f0b0133 -> :sswitch_0
        0x7f0b0134 -> :sswitch_1
        0x7f0b0204 -> :sswitch_3
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->l:Lcom/aadhk/restpos/CompanyActivity;

    const v1, 0x7f090246

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/CompanyActivity;->setTitle(I)V

    .line 51
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    const v0, 0x7f030061

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 75
    const v0, 0x7f0b012f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/a;->c:Landroid/widget/EditText;

    const v0, 0x7f0b0130

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/a;->d:Landroid/widget/EditText;

    const v0, 0x7f0b0131

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/a;->e:Landroid/widget/EditText;

    const v0, 0x7f0b0132

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/a;->f:Landroid/widget/EditText;

    const v0, 0x7f0b0133

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/a;->g:Landroid/widget/EditText;

    const v0, 0x7f0b0134

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/a;->h:Landroid/widget/EditText;

    const v0, 0x7f0b00d4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/a;->a:Landroid/widget/ImageView;

    const v0, 0x7f0b00d5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/a;->b:Landroid/widget/ImageView;

    const v0, 0x7f0b0056

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/a;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->h:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/a;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-object v1
.end method
