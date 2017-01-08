.class public final Lcom/aadhk/restpos/d/d;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/aadhk/restpos/CustomerActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Lcom/aadhk/restpos/bean/Customer;

.field private l:Lcom/aadhk/restpos/b/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 307
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->a:Lcom/aadhk/restpos/CustomerActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/CustomerActivity;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 60
    new-instance v1, Lcom/aadhk/restpos/b/e;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/e;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/d/d;->l:Lcom/aadhk/restpos/b/e;

    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->k:Lcom/aadhk/restpos/bean/Customer;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/aadhk/restpos/bean/Customer;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Customer;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/d;->k:Lcom/aadhk/restpos/bean/Customer;

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->j:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/d;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/d;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/d;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getAddress2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/d;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getAddress3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/d;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getTel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/d;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->j:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 103
    const/4 v0, -0x1

    if-ne p2, v0, :cond_f

    if-ne p1, v7, :cond_f

    .line 104
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_a

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->a:Lcom/aadhk/restpos/CustomerActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/CustomerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 109
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 110
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 112
    const-string v2, "display_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 114
    const-string v3, "_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 115
    iget-object v3, p0, Lcom/aadhk/restpos/d/d;->c:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 118
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

    .line 120
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 122
    :cond_0
    const-string v2, "data2"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 123
    const-string v3, "data1"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 126
    const/16 v4, 0xc

    if-eq v2, v4, :cond_1

    if-ne v2, v7, :cond_b

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/aadhk/restpos/d/d;->g:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_2
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 135
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

    move-result-object v1

    .line 136
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 138
    :cond_4
    const-string v2, "data1"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 139
    const-string v3, "data2"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 141
    if-ne v3, v8, :cond_c

    .line 142
    iget-object v3, p0, Lcom/aadhk/restpos/d/d;->h:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_5
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 150
    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 152
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->CONTENT_URI:Landroid/net/Uri;

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

    .line 153
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 155
    :cond_7
    const-string v1, "data4"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    const-string v2, "data7"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 157
    const-string v3, "data8"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 158
    const-string v3, "data9"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 159
    const-string v4, "data2"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 160
    if-ne v4, v8, :cond_e

    .line 161
    iget-object v4, p0, Lcom/aadhk/restpos/d/d;->d:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/aadhk/product/library/c/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v1, p0, Lcom/aadhk/restpos/d/d;->e:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/aadhk/product/library/c/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Lcom/aadhk/product/library/c/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :cond_8
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_7

    .line 169
    :cond_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 178
    :cond_a
    :goto_3
    return-void

    .line 128
    :cond_b
    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    .line 129
    iget-object v2, p0, Lcom/aadhk/restpos/d/d;->g:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_3

    .line 143
    :cond_c
    const/4 v4, 0x4

    if-ne v3, v4, :cond_d

    .line 144
    :try_start_1
    iget-object v3, p0, Lcom/aadhk/restpos/d/d;->h:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 145
    :cond_d
    if-ne v3, v7, :cond_5

    .line 146
    iget-object v3, p0, Lcom/aadhk/restpos/d/d;->h:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 163
    :cond_e
    if-ne v4, v7, :cond_8

    .line 164
    iget-object v4, p0, Lcom/aadhk/restpos/d/d;->d:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/aadhk/product/library/c/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, p0, Lcom/aadhk/restpos/d/d;->e:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/aadhk/product/library/c/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Lcom/aadhk/product/library/c/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 176
    :cond_f
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_3
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/CustomerActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/d;->a:Lcom/aadhk/restpos/CustomerActivity;

    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 75
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 10
    .parameter

    .prologue
    const v7, 0x7f090055

    const/4 v9, 0x0

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 193
    :sswitch_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/d;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/aadhk/restpos/d/d;->c:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/d;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    :goto_1
    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getId()I

    move-result v0

    if-lez v0, :cond_8

    .line 195
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->l:Lcom/aadhk/restpos/b/e;

    iget-object v1, p0, Lcom/aadhk/restpos/d/d;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/e;->b(Lcom/aadhk/restpos/bean/Customer;)V

    .line 199
    :goto_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->a:Lcom/aadhk/restpos/CustomerActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/CustomerActivity;->b()V

    goto :goto_0

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/aadhk/restpos/d/d;->c:Landroid/widget/EditText;

    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/d;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/aadhk/restpos/d/d;->d:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/d;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/aadhk/restpos/d/d;->d:Landroid/widget/EditText;

    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/d;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v1, p0, Lcom/aadhk/restpos/d/d;->e:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/d;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/aadhk/restpos/d/d;->e:Landroid/widget/EditText;

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/aadhk/restpos/d/d;->f:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v1, p0, Lcom/aadhk/restpos/d/d;->f:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/d;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    :cond_4
    iget-object v5, p0, Lcom/aadhk/restpos/d/d;->f:Landroid/widget/EditText;

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/aadhk/restpos/d/d;->g:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v1, p0, Lcom/aadhk/restpos/d/d;->g:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/d;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    :cond_5
    iget-object v6, p0, Lcom/aadhk/restpos/d/d;->g:Landroid/widget/EditText;

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/aadhk/restpos/d/d;->l:Lcom/aadhk/restpos/b/e;

    iget-object v7, p0, Lcom/aadhk/restpos/d/d;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/Customer;->getId()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8, v5}, Lcom/aadhk/restpos/b/e;->a(JLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v1, p0, Lcom/aadhk/restpos/d/d;->g:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/d;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    :cond_6
    iget-object v6, p0, Lcom/aadhk/restpos/d/d;->g:Landroid/widget/EditText;

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/aadhk/restpos/d/d;->h:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v6}, Lcom/aadhk/product/library/c/h;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v1, p0, Lcom/aadhk/restpos/d/d;->h:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/d;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Customer;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/Customer;->setAddress1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v0, v3}, Lcom/aadhk/restpos/bean/Customer;->setAddress2(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v0, v4}, Lcom/aadhk/restpos/bean/Customer;->setAddress3(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v0, v5}, Lcom/aadhk/restpos/bean/Customer;->setTel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v0, v6}, Lcom/aadhk/restpos/bean/Customer;->setEmail(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_1

    .line 197
    :cond_8
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->l:Lcom/aadhk/restpos/b/e;

    iget-object v1, p0, Lcom/aadhk/restpos/d/d;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/e;->a(Lcom/aadhk/restpos/bean/Customer;)V

    goto/16 :goto_2

    .line 203
    :sswitch_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->l:Lcom/aadhk/restpos/b/e;

    iget-object v1, p0, Lcom/aadhk/restpos/d/d;->k:Lcom/aadhk/restpos/bean/Customer;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Customer;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/e;->a(I)V

    .line 204
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->a:Lcom/aadhk/restpos/CustomerActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/CustomerActivity;->b()V

    goto/16 :goto_0

    .line 208
    :sswitch_2
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->a:Lcom/aadhk/restpos/CustomerActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/CustomerActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 211
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 191
    :sswitch_data_0
    .sparse-switch
        0x7f0b004e -> :sswitch_2
        0x7f0b0056 -> :sswitch_0
        0x7f0b00c9 -> :sswitch_1
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/d;->setHasOptionsMenu(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    const-string v1, "bundleCustomer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Customer;

    iput-object v0, p0, Lcom/aadhk/restpos/d/d;->k:Lcom/aadhk/restpos/bean/Customer;

    .line 54
    :cond_0
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 302
    const v0, 0x7f0b027f

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 304
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 305
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 79
    const v0, 0x7f030063

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/d;->b:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->b:Landroid/view/View;

    const v1, 0x7f0b004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/d;->c:Landroid/widget/EditText;

    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->b:Landroid/view/View;

    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/d;->d:Landroid/widget/EditText;

    .line 83
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->b:Landroid/view/View;

    const v1, 0x7f0b0051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/d;->e:Landroid/widget/EditText;

    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->b:Landroid/view/View;

    const v1, 0x7f0b0052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/d;->f:Landroid/widget/EditText;

    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->b:Landroid/view/View;

    const v1, 0x7f0b004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/d;->g:Landroid/widget/EditText;

    .line 86
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->b:Landroid/view/View;

    const v1, 0x7f0b0053

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/d;->h:Landroid/widget/EditText;

    .line 88
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->c:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lcom/aadhk/product/library/c/j;

    invoke-direct {v2}, Lcom/aadhk/product/library/c/j;-><init>()V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->b:Landroid/view/View;

    const v1, 0x7f0b0056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/d;->i:Landroid/widget/Button;

    .line 95
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->b:Landroid/view/View;

    const v1, 0x7f0b00c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/d;->j:Landroid/widget/Button;

    .line 96
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->b:Landroid/view/View;

    return-object v0
.end method
