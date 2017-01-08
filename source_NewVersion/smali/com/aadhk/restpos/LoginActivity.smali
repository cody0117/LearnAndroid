.class public Lcom/aadhk/restpos/LoginActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "ProGuard"


# static fields
.field private static final e:[B


# instance fields
.field private a:Lcom/google/android/a/a/m;

.field private b:Lcom/google/android/a/a/i;

.field private c:Lcom/aadhk/restpos/f/l;

.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/aadhk/restpos/LoginActivity;->e:[B

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
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 295
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/aadhk/restpos/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 330
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 331
    invoke-virtual {p0}, Lcom/aadhk/restpos/LoginActivity;->finish()V

    .line 332
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 333
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x9a2112

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 71
    const-string v0, "9fa2b19a"

    invoke-static {p0, v0}, Lcom/bugsense/trace/BugSenseHandler;->initAndStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 76
    new-instance v1, Landroid/support/v7/app/ActionBar$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/aadhk/restpos/LoginActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    if-nez p1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/aadhk/restpos/LoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 81
    new-instance v1, Lcom/aadhk/restpos/d/w;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/w;-><init>()V

    invoke-virtual {v0, v5, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 82
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 86
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/aadhk/restpos/f/d;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 87
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/aadhk/restpos/f/d;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 88
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/aadhk/restpos/f/d;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 89
    new-instance v0, Lcom/aadhk/restpos/f/l;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/f/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->c:Lcom/aadhk/restpos/f/l;

    .line 93
    new-instance v0, Lcom/aadhk/restpos/f/a;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/f/a;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-virtual {v0}, Lcom/aadhk/restpos/f/a;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/aadhk/restpos/f/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/printer_setup_guide.pdf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/aadhk/product/library/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    const v0, 0x7f050003

    invoke-static {p0, v0, v3}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    new-instance v0, Lcom/aadhk/restpos/f/l;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/f/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->c:Lcom/aadhk/restpos/f/l;

    iget-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->c:Lcom/aadhk/restpos/f/l;

    const-string v1, "pref_report_end_day"

    invoke-virtual {v0, v1, v4}, Lcom/aadhk/restpos/f/l;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->c:Lcom/aadhk/restpos/f/l;

    const-string v1, "pref_report_cb_pay"

    invoke-virtual {v0, v1, v4}, Lcom/aadhk/restpos/f/l;->a(Ljava/lang/String;Z)V

    .line 118
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/aadhk/restpos/LoginActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    new-instance v1, Lcom/aadhk/restpos/ai;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/ai;-><init>(Lcom/aadhk/restpos/LoginActivity;B)V

    iput-object v1, p0, Lcom/aadhk/restpos/LoginActivity;->a:Lcom/google/android/a/a/m;

    .line 120
    new-instance v1, Lcom/google/android/a/a/i;

    new-instance v2, Lcom/google/android/a/a/s;

    new-instance v3, Lcom/google/android/a/a/a;

    sget-object v4, Lcom/aadhk/restpos/LoginActivity;->e:[B

    invoke-virtual {p0}, Lcom/aadhk/restpos/LoginActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/google/android/a/a/a;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, p0, v3}, Lcom/google/android/a/a/s;-><init>(Landroid/content/Context;Lcom/google/android/a/a/o;)V

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAv9jo4joaEMQ/+0IT3HFkzTfgF/tAsr7eHOVd4QUku8VQWRTCLnOUmWSHM4wPOxoqMn4/p9qPm7p11cPmp4mWRGTMlQtvYlsORAWUcuIkI302K5Ha6XMGxtriskQ0pakEkep28paWjTIJ7IWrBWEgLtGsqV4TqxUazgarW1CyxVWrcRIH9C36aLdG41Qd19+ygKMwwgu1YrHtz8UDjWbJ+jvFDLNCTKICte4ByfSMecFvpiZkv25bvrYcSz0BiTWMapSKBUrQ+63+uRTno611p/2y6qqhaM3MoW2Me7Y81ECeaebc4s/N4zhRpC7W6lXenfg9LfsNoGa5sRI4qxdgiQIDAQAB"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/a/a/i;-><init>(Landroid/content/Context;Lcom/google/android/a/a/p;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/aadhk/restpos/LoginActivity;->b:Lcom/google/android/a/a/i;

    .line 130
    new-instance v0, Lcom/aadhk/restpos/ah;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/ah;-><init>(Lcom/aadhk/restpos/LoginActivity;)V

    iput-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->d:Landroid/content/BroadcastReceiver;

    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/aadhk/restpos/LoginActivity;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/aadhk/restpos/LoginActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    return-void

    .line 97
    :cond_2
    invoke-virtual {v0}, Lcom/aadhk/restpos/f/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    invoke-virtual {v0}, Lcom/aadhk/restpos/f/a;->e()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 101
    const-string v1, "1.6.5"

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 102
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 103
    const v1, 0x7f09017e

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->c:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->q()Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->c:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->r()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->c:Lcom/aadhk/restpos/f/l;

    const-string v1, "prefOrderNumInitial"

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/f/l;->a(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->c:Lcom/aadhk/restpos/f/l;

    const-string v1, "prefOrderNum"

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/f/l;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->b:Lcom/google/android/a/a/i;

    invoke-virtual {v0}, Lcom/google/android/a/a/i;->a()V

    .line 338
    iget-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/aadhk/restpos/LoginActivity;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/LoginActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 341
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onDestroy()V

    .line 342
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 194
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b028a

    if-ne v1, v2, :cond_0

    .line 195
    invoke-static {p0}, Lcom/aadhk/product/library/c/l;->b(Landroid/app/Activity;)V

    .line 204
    :goto_0
    return v0

    .line 197
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b028f

    if-ne v1, v2, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/aadhk/restpos/LoginActivity;->finish()V

    goto :goto_0

    .line 200
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b028e

    if-ne v1, v2, :cond_3

    .line 201
    invoke-virtual {p0}, Lcom/aadhk/restpos/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v2, Lcom/aadhk/restpos/c/al;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/c/al;-><init>(Landroid/content/Context;)V

    const v3, 0x7f09031b

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/c/al;->setTitle(I)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/aadhk/restpos/c/al;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/aadhk/restpos/c/al;->show()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 204
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
