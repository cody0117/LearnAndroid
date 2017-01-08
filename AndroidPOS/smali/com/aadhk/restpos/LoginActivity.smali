.class public Lcom/aadhk/restpos/LoginActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "ProGuard"


# static fields
.field private static final f:[B


# instance fields
.field a:Lcom/aadhk/product/library/a/c;

.field private b:Lcom/google/android/a/a/h;

.field private c:Lcom/aadhk/restpos/util/r;

.field private d:Lcom/aadhk/restpos/g/i;

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/aadhk/restpos/LoginActivity;->f:[B

    return-void

    :array_0
    .array-data 0x1
        0xd2t
        0x41t
        0x1et
        0x80t
        0x99t
        0xc7t
        0x4at
        0xc0t
        0x33t
        0x58t
        0xa1t
        0xd3t
        0x4dt
        0x8bt
        0xdct
        0x8ft
        0xf5t
        0x20t
        0xc0t
        0x59t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 273
    new-instance v0, Lcom/aadhk/restpos/ab;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/ab;-><init>(Lcom/aadhk/restpos/LoginActivity;)V

    iput-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->a:Lcom/aadhk/product/library/a/c;

    .line 378
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/LoginActivity;)Lcom/aadhk/restpos/util/r;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->c:Lcom/aadhk/restpos/util/r;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/LoginActivity;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 66
    const/4 v1, -0x1

    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->c:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/b/b;->a(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    int-to-long v1, v0

    const-wide/16 v3, 0x1f

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    :cond_0
    new-instance v0, Lcom/aadhk/b/a/b;

    invoke-direct {v0, p0}, Lcom/aadhk/b/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Lcom/aadhk/b/a/b;->setCancelable(Z)V

    new-instance v1, Lcom/aadhk/restpos/z;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/z;-><init>(Lcom/aadhk/restpos/LoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/b/a/b;->a(Lcom/aadhk/b/a/c;)V

    invoke-virtual {v0}, Lcom/aadhk/b/a/b;->show()V

    new-instance v1, Lcom/aadhk/restpos/aa;

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/aa;-><init>(Lcom/aadhk/restpos/LoginActivity;Lcom/aadhk/b/a/b;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/b/a/b;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_1
    const v1, 0x7f080010

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/aadhk/restpos/LoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x9a2112

    new-instance v2, Lcom/aadhk/restpos/d/bm;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/bm;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1
.end method

.method private d()V
    .locals 3

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/aadhk/restpos/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 315
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 316
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 320
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 321
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 331
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 333
    :goto_1
    return-void

    .line 324
    :cond_0
    :try_start_1
    new-instance v1, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 325
    const v2, 0x7f08037b

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/ax;->setTitle(I)V

    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/ax;->show()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->d:Lcom/aadhk/restpos/g/i;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->d:Lcom/aadhk/restpos/g/i;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 217
    :cond_0
    new-instance v0, Lcom/aadhk/restpos/g/i;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->d:Lcom/aadhk/restpos/g/i;

    .line 218
    return-void
.end method

.method public final b()Lcom/aadhk/restpos/g/i;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->d:Lcom/aadhk/restpos/g/i;

    return-object v0
.end method

.method public final c()Lcom/aadhk/restpos/g/i;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->d:Lcom/aadhk/restpos/g/i;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/aadhk/restpos/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 417
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 418
    invoke-virtual {p0}, Lcom/aadhk/restpos/LoginActivity;->finish()V

    .line 419
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 420
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x9a2112

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 81
    const-string v0, "9fa2b19a"

    invoke-static {p0, v0}, Lcom/bugsense/trace/BugSenseHandler;->initAndStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 85
    new-instance v1, Landroid/support/v7/app/ActionBar$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/aadhk/restpos/LoginActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/aadhk/restpos/util/f;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 89
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/aadhk/restpos/util/f;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 90
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/aadhk/restpos/util/f;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 91
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->c:Lcom/aadhk/restpos/util/r;

    .line 92
    new-instance v0, Lcom/aadhk/restpos/g/i;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->d:Lcom/aadhk/restpos/g/i;

    .line 93
    new-instance v0, Lcom/aadhk/restpos/util/a;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/util/a;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {v0}, Lcom/aadhk/restpos/util/a;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/aadhk/restpos/LoginActivity;->d()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/aadhk/restpos/util/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/printer_setup_guide.pdf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/aadhk/product/library/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    const v0, 0x7f050006

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->c:Lcom/aadhk/restpos/util/r;

    iget-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->c:Lcom/aadhk/restpos/util/r;

    const-string v1, "pref_report_end_day"

    invoke-virtual {v0, v1, v3}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->c:Lcom/aadhk/restpos/util/r;

    const-string v1, "pref_report_cb_pay"

    invoke-virtual {v0, v1, v3}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;Z)V

    :try_start_0
    new-instance v0, Lcom/aadhk/restpos/bean/License;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/License;-><init>()V

    const-string v1, "com.aadhk.restpos.full"

    invoke-static {p0, v1}, Lcom/aadhk/b/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/License;->setSerialNumber(Ljava/lang/String;)V

    const-string v1, "com.aadhk.restpos.full"

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/License;->setItem(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/License;->setDeviceModel(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/License;->setLocale(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aadhk/restpos/LoginActivity;->c:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/util/r;->a(Lcom/aadhk/restpos/bean/License;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/aadhk/restpos/LoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 161
    new-instance v1, Lcom/aadhk/restpos/d/bm;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/bm;-><init>()V

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 162
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 164
    return-void

    .line 95
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v0}, Lcom/aadhk/restpos/util/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const-string v1, "1.7.2"

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 101
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 102
    const v1, 0x7f0801ae

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(I)V

    .line 103
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    .line 109
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->c:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->u()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 111
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->c:Lcom/aadhk/restpos/util/r;

    const-string v1, "prefOrderNumInitial"

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->c:Lcom/aadhk/restpos/util/r;

    const-string v1, "prefOrderNum"

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->b:Lcom/google/android/a/a/h;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->b:Lcom/google/android/a/a/h;

    invoke-virtual {v0}, Lcom/google/android/a/a/h;->a()V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->e:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/LoginActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->d:Lcom/aadhk/restpos/g/i;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 431
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onDestroy()V

    .line 432
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 299
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0901a0

    if-ne v1, v2, :cond_0

    .line 300
    invoke-static {p0}, Lcom/aadhk/product/library/c/l;->a(Landroid/app/Activity;)V

    .line 309
    :goto_0
    return v0

    .line 302
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f090316

    if-ne v1, v2, :cond_1

    .line 303
    invoke-virtual {p0}, Lcom/aadhk/restpos/LoginActivity;->finish()V

    goto :goto_0

    .line 305
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f090311

    if-ne v1, v2, :cond_2

    .line 306
    invoke-direct {p0}, Lcom/aadhk/restpos/LoginActivity;->d()V

    goto :goto_0

    .line 309
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
