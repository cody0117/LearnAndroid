.class public Lcom/aadhk/restpos/PrinterActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"


# instance fields
.field a:Lcom/aadhk/a/j;

.field private o:Z

.field private p:Landroid/support/v4/app/FragmentManager;

.field private q:Lcom/aadhk/restpos/d/gn;

.field private r:Lcom/aadhk/restpos/d/gv;

.field private s:Lcom/aadhk/restpos/bean/POSPrinterSetting;

.field private t:Lcom/aadhk/restpos/g/u;

.field private u:Lcom/aadhk/a/d;

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:I

.field private y:Lcom/aadhk/a/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    .line 207
    new-instance v0, Lcom/aadhk/restpos/cr;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/cr;-><init>(Lcom/aadhk/restpos/PrinterActivity;)V

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->y:Lcom/aadhk/a/h;

    .line 227
    new-instance v0, Lcom/aadhk/restpos/cs;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/cs;-><init>(Lcom/aadhk/restpos/PrinterActivity;)V

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->a:Lcom/aadhk/a/j;

    .line 326
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/PrinterActivity;Lcom/aadhk/restpos/bean/POSPrinterSetting;)Lcom/aadhk/restpos/bean/POSPrinterSetting;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/aadhk/restpos/PrinterActivity;->s:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/PrinterActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aadhk/restpos/PrinterActivity;->v:Z

    return v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/PrinterActivity;)Lcom/aadhk/a/d;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->u:Lcom/aadhk/a/d;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/PrinterActivity;)Lcom/aadhk/restpos/d/gn;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->q:Lcom/aadhk/restpos/d/gn;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/PrinterActivity;)Lcom/aadhk/restpos/g/u;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->t:Lcom/aadhk/restpos/g/u;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 120
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/aadhk/restpos/PrinterActivity;->s:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getConnType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 121
    new-instance v0, Lcom/aadhk/restpos/d/gf;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/gf;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->q:Lcom/aadhk/restpos/d/gn;

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->p:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 138
    const v1, 0x7f09005c

    iget-object v2, p0, Lcom/aadhk/restpos/PrinterActivity;->q:Lcom/aadhk/restpos/d/gn;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 139
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 140
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 141
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/aadhk/restpos/PrinterActivity;->s:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getConnType()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 123
    new-instance v0, Lcom/aadhk/restpos/d/gj;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/gj;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->q:Lcom/aadhk/restpos/d/gn;

    goto :goto_0

    .line 124
    :cond_1
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/aadhk/restpos/PrinterActivity;->s:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getConnType()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 126
    const/16 v1, 0xb

    if-le v0, v1, :cond_2

    .line 127
    new-instance v0, Lcom/aadhk/restpos/d/gw;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/gw;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->q:Lcom/aadhk/restpos/d/gn;

    goto :goto_0

    .line 129
    :cond_2
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 130
    const v1, 0x7f0802ab

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(I)V

    .line 131
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    goto :goto_0

    .line 134
    :cond_3
    new-instance v0, Lcom/aadhk/restpos/d/gt;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/gt;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->q:Lcom/aadhk/restpos/d/gn;

    goto :goto_0
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->p:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 145
    new-instance v1, Lcom/aadhk/restpos/d/gv;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/gv;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/PrinterActivity;->r:Lcom/aadhk/restpos/d/gv;

    .line 146
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 147
    const-string v2, "bundleBitmap"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 148
    iget-object v2, p0, Lcom/aadhk/restpos/PrinterActivity;->r:Lcom/aadhk/restpos/d/gv;

    invoke-virtual {v2, v1}, Lcom/aadhk/restpos/d/gv;->setArguments(Landroid/os/Bundle;)V

    .line 150
    iget-boolean v1, p0, Lcom/aadhk/restpos/PrinterActivity;->o:Z

    if-eqz v1, :cond_0

    .line 151
    const v1, 0x7f09005e

    iget-object v2, p0, Lcom/aadhk/restpos/PrinterActivity;->r:Lcom/aadhk/restpos/d/gv;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 155
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 156
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 157
    return-void

    .line 153
    :cond_0
    const v1, 0x7f09005c

    iget-object v2, p0, Lcom/aadhk/restpos/PrinterActivity;->r:Lcom/aadhk/restpos/d/gv;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->p:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 161
    new-instance v1, Lcom/aadhk/restpos/d/bq;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/bq;-><init>()V

    .line 162
    iget-boolean v2, p0, Lcom/aadhk/restpos/PrinterActivity;->o:Z

    if-eqz v2, :cond_0

    .line 163
    const v2, 0x7f09005e

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 167
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 168
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 169
    return-void

    .line 165
    :cond_0
    const v2, 0x7f09005c

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 195
    :try_start_0
    iget-boolean v0, p0, Lcom/aadhk/restpos/PrinterActivity;->v:Z

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "market://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/aadhk/product/library/d;->i:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 204
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->u:Lcom/aadhk/a/d;

    iget-object v1, p0, Lcom/aadhk/restpos/PrinterActivity;->w:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/PrinterActivity;->y:Lcom/aadhk/a/h;

    const-string v3, ""

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/aadhk/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/aadhk/a/h;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 202
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/aadhk/restpos/PrinterActivity;->o:Z

    return v0
.end method

.method public final e()Lcom/aadhk/restpos/g/u;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->t:Lcom/aadhk/restpos/g/u;

    return-object v0
.end method

.method public final f()Lcom/aadhk/restpos/bean/POSPrinterSetting;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->s:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    const/16 v0, 0x23ca

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1a35

    if-ne p1, v0, :cond_3

    .line 176
    :cond_0
    iget-boolean v0, p0, Lcom/aadhk/restpos/PrinterActivity;->o:Z

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->p:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f09005e

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 181
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 191
    :cond_1
    :goto_1
    return-void

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->p:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->u:Lcom/aadhk/a/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/aadhk/a/d;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    invoke-super {p0, p1, p2, p3}, Lcom/aadhk/restpos/POSActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/aadhk/restpos/PrinterActivity;->finish()V

    .line 324
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 62
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PrinterActivity;->setContentView(I)V

    .line 64
    const v0, 0x7f09005e

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PrinterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/PrinterActivity;->o:Z

    .line 67
    invoke-virtual {p0}, Lcom/aadhk/restpos/PrinterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    const-string v3, "printerId"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/PrinterActivity;->x:I

    .line 69
    new-instance v0, Lcom/aadhk/restpos/g/u;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->t:Lcom/aadhk/restpos/g/u;

    .line 70
    invoke-virtual {p0}, Lcom/aadhk/restpos/PrinterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->p:Landroid/support/v4/app/FragmentManager;

    .line 71
    new-instance v0, Lcom/aadhk/restpos/d/gv;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/gv;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->r:Lcom/aadhk/restpos/d/gv;

    .line 74
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v3, Lcom/aadhk/restpos/ct;

    iget v4, p0, Lcom/aadhk/restpos/PrinterActivity;->x:I

    invoke-direct {v3, p0, v4}, Lcom/aadhk/restpos/ct;-><init>(Lcom/aadhk/restpos/PrinterActivity;I)V

    invoke-direct {v0, v3, p0, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 75
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    iget v0, p0, Lcom/aadhk/restpos/PrinterActivity;->x:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    const-string v0, "com.aadhk.restpos.feature.kitchen"

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->w:Ljava/lang/String;

    .line 79
    :cond_0
    :goto_1
    new-instance v0, Lcom/aadhk/a/d;

    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAv9jo4joaEMQ/+0IT3HFkzTfgF/tAsr7eHOVd4QUku8VQWRTCLnOUmWSHM4wPOxoqMn4/p9qPm7p11cPmp4mWRGTMlQtvYlsORAWUcuIkI302K5Ha6XMGxtriskQ0pakEkep28paWjTIJ7IWrBWEgLtGsqV4TqxUazgarW1CyxVWrcRIH9C36aLdG41Qd19+ygKMwwgu1YrHtz8UDjWbJ+jvFDLNCTKICte4ByfSMecFvpiZkv25bvrYcSz0BiTWMapSKBUrQ+63+uRTno611p/2y6qqhaM3MoW2Me7Y81ECeaebc4s/N4zhRpC7W6lXenfg9LfsNoGa5sRI4qxdgiQIDAQAB"

    invoke-direct {v0, p0, v1}, Lcom/aadhk/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->u:Lcom/aadhk/a/d;

    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->w:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.aadhk.restpos.full"

    invoke-static {p0, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->u:Lcom/aadhk/a/d;

    new-instance v1, Lcom/aadhk/restpos/cq;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/cq;-><init>(Lcom/aadhk/restpos/PrinterActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/a/d;->a(Lcom/aadhk/a/i;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 65
    goto :goto_0

    .line 78
    :cond_3
    iget v0, p0, Lcom/aadhk/restpos/PrinterActivity;->x:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    const-string v0, "com.aadhk.restpos.feature.kitchen2"

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->w:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/aadhk/restpos/PrinterActivity;->x:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    const-string v0, "com.aadhk.restpos.feature.bar"

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->w:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/aadhk/restpos/PrinterActivity;->x:I

    if-ne v0, v1, :cond_0

    const-string v0, "com.aadhk.restpos.feature.receipt"

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->w:Ljava/lang/String;

    goto :goto_1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/aadhk/restpos/PrinterActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 282
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 297
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 298
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->t:Lcom/aadhk/restpos/g/u;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 299
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->u:Lcom/aadhk/a/d;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->u:Lcom/aadhk/a/d;

    invoke-virtual {v0}, Lcom/aadhk/a/d;->a()V

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aadhk/restpos/PrinterActivity;->u:Lcom/aadhk/a/d;

    .line 303
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 287
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f090311

    if-ne v1, v2, :cond_1

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/aadhk/restpos/util/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/printer_setup_guide.pdf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
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

    .line 292
    :goto_0
    return v0

    .line 289
    :cond_0
    sget v1, Lcom/aadhk/product/library/d;->g:I

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 292
    :cond_1
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
