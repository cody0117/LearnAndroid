.class public Lcom/aadhk/restpos/PrinterActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"


# instance fields
.field a:Lcom/aadhk/a/j;

.field private l:Z

.field private m:Landroid/support/v4/app/FragmentManager;

.field private n:Landroid/database/sqlite/SQLiteDatabase;

.field private o:Lcom/aadhk/restpos/d/dh;

.field private p:Lcom/aadhk/restpos/d/do;

.field private q:Lcom/aadhk/restpos/b/r;

.field private r:Lcom/aadhk/restpos/bean/POSPrinterSetting;

.field private s:Lcom/aadhk/a/d;

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Lcom/aadhk/a/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    .line 200
    new-instance v0, Lcom/aadhk/restpos/bm;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/bm;-><init>(Lcom/aadhk/restpos/PrinterActivity;)V

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->v:Lcom/aadhk/a/h;

    .line 220
    new-instance v0, Lcom/aadhk/restpos/bn;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/bn;-><init>(Lcom/aadhk/restpos/PrinterActivity;)V

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->a:Lcom/aadhk/a/j;

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/PrinterActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aadhk/restpos/PrinterActivity;->t:Z

    return v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/PrinterActivity;)Lcom/aadhk/a/d;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->s:Lcom/aadhk/a/d;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/PrinterActivity;)Lcom/aadhk/restpos/d/dh;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->o:Lcom/aadhk/restpos/d/dh;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 113
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/aadhk/restpos/PrinterActivity;->r:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getConnType()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 114
    new-instance v0, Lcom/aadhk/restpos/d/de;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/de;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->o:Lcom/aadhk/restpos/d/dh;

    .line 130
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->m:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 131
    const v1, 0x7f0b0058

    iget-object v2, p0, Lcom/aadhk/restpos/PrinterActivity;->o:Lcom/aadhk/restpos/d/dh;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 132
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 133
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 134
    return-void

    .line 115
    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/aadhk/restpos/PrinterActivity;->r:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getConnType()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 117
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/aadhk/restpos/PrinterActivity;->r:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getConnType()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 119
    const/16 v1, 0xb

    if-le v0, v1, :cond_2

    .line 120
    new-instance v0, Lcom/aadhk/restpos/d/dp;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/dp;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->o:Lcom/aadhk/restpos/d/dh;

    goto :goto_0

    .line 122
    :cond_2
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 123
    const v1, 0x7f09024f

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(I)V

    .line 124
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    goto :goto_0

    .line 127
    :cond_3
    new-instance v0, Lcom/aadhk/restpos/d/dn;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/dn;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->o:Lcom/aadhk/restpos/d/dh;

    goto :goto_0
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->m:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/aadhk/restpos/d/do;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/do;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/PrinterActivity;->p:Lcom/aadhk/restpos/d/do;

    .line 139
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 140
    const-string v2, "bundleBitmap"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 141
    iget-object v2, p0, Lcom/aadhk/restpos/PrinterActivity;->p:Lcom/aadhk/restpos/d/do;

    invoke-virtual {v2, v1}, Lcom/aadhk/restpos/d/do;->setArguments(Landroid/os/Bundle;)V

    .line 143
    iget-boolean v1, p0, Lcom/aadhk/restpos/PrinterActivity;->l:Z

    if-eqz v1, :cond_0

    .line 144
    const v1, 0x7f0b005a

    iget-object v2, p0, Lcom/aadhk/restpos/PrinterActivity;->p:Lcom/aadhk/restpos/d/do;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 148
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 149
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 150
    return-void

    .line 146
    :cond_0
    const v1, 0x7f0b0058

    iget-object v2, p0, Lcom/aadhk/restpos/PrinterActivity;->p:Lcom/aadhk/restpos/d/do;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->m:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 154
    new-instance v1, Lcom/aadhk/restpos/d/y;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/y;-><init>()V

    .line 155
    iget-boolean v2, p0, Lcom/aadhk/restpos/PrinterActivity;->l:Z

    if-eqz v2, :cond_0

    .line 156
    const v2, 0x7f0b005a

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 160
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 161
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 162
    return-void

    .line 158
    :cond_0
    const v2, 0x7f0b0058

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 188
    :try_start_0
    iget-boolean v0, p0, Lcom/aadhk/restpos/PrinterActivity;->t:Z

    if-nez v0, :cond_0

    .line 189
    invoke-static {p0}, Lcom/aadhk/product/library/c/l;->a(Landroid/app/Activity;)V

    .line 197
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->s:Lcom/aadhk/a/d;

    iget-object v1, p0, Lcom/aadhk/restpos/PrinterActivity;->u:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/PrinterActivity;->v:Lcom/aadhk/a/h;

    const-string v3, ""

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/aadhk/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/aadhk/a/h;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/aadhk/restpos/PrinterActivity;->l:Z

    return v0
.end method

.method public final e()Lcom/aadhk/restpos/b/r;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->q:Lcom/aadhk/restpos/b/r;

    return-object v0
.end method

.method public final f()Lcom/aadhk/restpos/bean/POSPrinterSetting;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->r:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    const/16 v0, 0x23ca

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1a35

    if-ne p1, v0, :cond_3

    .line 169
    :cond_0
    iget-boolean v0, p0, Lcom/aadhk/restpos/PrinterActivity;->l:Z

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->m:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f0b005a

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 174
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 184
    :cond_1
    :goto_1
    return-void

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->m:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f0b0058

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->s:Lcom/aadhk/a/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/aadhk/a/d;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    invoke-super {p0, p1, p2, p3}, Lcom/aadhk/restpos/POSActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/aadhk/restpos/PrinterActivity;->finish()V

    .line 316
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 59
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PrinterActivity;->setContentView(I)V

    .line 61
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->n:Landroid/database/sqlite/SQLiteDatabase;

    .line 62
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PrinterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/PrinterActivity;->l:Z

    .line 65
    invoke-virtual {p0}, Lcom/aadhk/restpos/PrinterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    const-string v2, "printerId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 67
    new-instance v2, Lcom/aadhk/restpos/b/r;

    iget-object v3, p0, Lcom/aadhk/restpos/PrinterActivity;->n:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v2, v3}, Lcom/aadhk/restpos/b/r;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v2, p0, Lcom/aadhk/restpos/PrinterActivity;->q:Lcom/aadhk/restpos/b/r;

    .line 68
    iget-object v2, p0, Lcom/aadhk/restpos/PrinterActivity;->q:Lcom/aadhk/restpos/b/r;

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/b/r;->a(I)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->r:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    .line 69
    invoke-virtual {p0}, Lcom/aadhk/restpos/PrinterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->m:Landroid/support/v4/app/FragmentManager;

    .line 70
    new-instance v0, Lcom/aadhk/restpos/d/do;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/do;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->p:Lcom/aadhk/restpos/d/do;

    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->r:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getId()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    const-string v0, "com.aadhk.restpos.feature.kitchen"

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->u:Ljava/lang/String;

    .line 73
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/aadhk/restpos/PrinterActivity;->a()V

    .line 75
    new-instance v0, Lcom/aadhk/a/d;

    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAv9jo4joaEMQ/+0IT3HFkzTfgF/tAsr7eHOVd4QUku8VQWRTCLnOUmWSHM4wPOxoqMn4/p9qPm7p11cPmp4mWRGTMlQtvYlsORAWUcuIkI302K5Ha6XMGxtriskQ0pakEkep28paWjTIJ7IWrBWEgLtGsqV4TqxUazgarW1CyxVWrcRIH9C36aLdG41Qd19+ygKMwwgu1YrHtz8UDjWbJ+jvFDLNCTKICte4ByfSMecFvpiZkv25bvrYcSz0BiTWMapSKBUrQ+63+uRTno611p/2y6qqhaM3MoW2Me7Y81ECeaebc4s/N4zhRpC7W6lXenfg9LfsNoGa5sRI4qxdgiQIDAQAB"

    invoke-direct {v0, p0, v1}, Lcom/aadhk/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->s:Lcom/aadhk/a/d;

    .line 76
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->u:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.aadhk.restpos.full"

    invoke-static {p0, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->s:Lcom/aadhk/a/d;

    new-instance v1, Lcom/aadhk/restpos/bl;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/bl;-><init>(Lcom/aadhk/restpos/PrinterActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/a/d;->a(Lcom/aadhk/a/i;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_1
    :goto_2
    return-void

    .line 63
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->r:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getId()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    const-string v0, "com.aadhk.restpos.feature.kitchen2"

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->u:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->r:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getId()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    const-string v0, "com.aadhk.restpos.feature.bar"

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->u:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->r:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getId()I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "com.aadhk.restpos.feature.receipt"

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->u:Ljava/lang/String;

    goto :goto_1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 95
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/aadhk/restpos/PrinterActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 274
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 289
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 290
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->s:Lcom/aadhk/a/d;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->s:Lcom/aadhk/a/d;

    invoke-virtual {v0}, Lcom/aadhk/a/d;->a()V

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->s:Lcom/aadhk/a/d;

    .line 294
    :cond_0
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 295
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 279
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b028e

    if-ne v1, v2, :cond_1

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/aadhk/restpos/f/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/printer_setup_guide.pdf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "application/pdf"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const/high16 v3, 0x4000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "application/pdf"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 284
    :goto_0
    return v0

    .line 281
    :cond_0
    sget v1, Lcom/aadhk/product/library/d;->g:I

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 284
    :cond_1
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
