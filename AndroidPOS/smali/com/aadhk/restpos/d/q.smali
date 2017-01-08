.class public final Lcom/aadhk/restpos/d/q;
.super Landroid/preference/PreferenceFragment;
.source "ProGuard"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field a:Lcom/aadhk/product/library/a/c;

.field b:Lcom/aadhk/product/library/a/c;

.field private c:Lcom/aadhk/restpos/DatabaseActivity;

.field private d:Lcom/dropbox/client2/DropboxAPI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/client2/DropboxAPI",
            "<",
            "Lcom/dropbox/client2/android/AndroidAuthSession;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/aadhk/product/library/c/e;

.field private f:Landroid/preference/Preference;

.field private g:Landroid/preference/Preference;

.field private h:Landroid/preference/Preference;

.field private i:Landroid/preference/Preference;

.field private j:Landroid/preference/Preference;

.field private k:Landroid/preference/Preference;

.field private l:Landroid/preference/Preference;

.field private m:Landroid/preference/CheckBoxPreference;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Landroid/content/res/Resources;

.field private s:[Ljava/lang/String;

.field private t:[Ljava/lang/String;

.field private u:[I

.field private v:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->u:[I

    .line 453
    new-instance v0, Lcom/aadhk/restpos/d/ac;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/ac;-><init>(Lcom/aadhk/restpos/d/q;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->a:Lcom/aadhk/product/library/a/c;

    .line 500
    new-instance v0, Lcom/aadhk/restpos/d/ad;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/ad;-><init>(Lcom/aadhk/restpos/d/q;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->b:Lcom/aadhk/product/library/a/c;

    return-void

    .line 60
    :array_0
    .array-data 0x4
        0x7t 0x0t 0x6t 0x7ft
        0x8t 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/q;)Lcom/aadhk/restpos/DatabaseActivity;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 551
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 552
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    sget-object v0, Lcom/aadhk/restpos/util/f;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/aadhk/product/library/c/f;->b(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/product/library/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget v0, p0, Lcom/aadhk/restpos/d/q;->v:I

    if-nez v0, :cond_0

    .line 557
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f080069

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/q;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/q;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f08006a

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/q;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/q;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 571
    :catch_0
    move-exception v0

    .line 572
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 573
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 567
    :cond_2
    :try_start_1
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 568
    const v1, 0x7f080071

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/q;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/q;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0802f3

    const/4 v5, 0x1

    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const-string v1, "restpos.db"

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/DatabaseActivity;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->r:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-virtual {v2, v6}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const v2, 0x7f08006b

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/aadhk/restpos/d/y;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/y;-><init>(Lcom/aadhk/restpos/d/q;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Lcom/aadhk/restpos/c/bp;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-virtual {v2, v6}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/q;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 46
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->n:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/aadhk/product/library/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const v2, 0x7f08006b

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/aadhk/restpos/d/v;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/v;-><init>(Lcom/aadhk/restpos/d/q;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Lcom/aadhk/restpos/c/bp;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f080081

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/q;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/q;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput p1, p0, Lcom/aadhk/restpos/d/q;->v:I

    return p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/q;)Lcom/dropbox/client2/DropboxAPI;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->d:Lcom/dropbox/client2/DropboxAPI;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/q;)[I
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->u:[I

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/q;)I
    .locals 1
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lcom/aadhk/restpos/d/q;->v:I

    return v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/q;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/aadhk/restpos/d/q;->a()V

    return-void
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/q;)V
    .locals 5
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->d:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v0}, Lcom/dropbox/client2/android/AndroidAuthSession;->isLinked()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const v2, 0x7f080077

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/aadhk/product/library/a/a;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->a:Lcom/aadhk/product/library/a/c;

    iget-object v2, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const v4, 0x7f080072

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/a;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/q;)V
    .locals 4
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/aadhk/restpos/d/q;->a()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.apps.docs"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "application/db"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lcom/aadhk/restpos/d/q;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/q;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/q;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic h(Lcom/aadhk/restpos/d/q;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/aadhk/restpos/d/q;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/aadhk/restpos/d/q;)V
    .locals 5
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->d:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v0}, Lcom/dropbox/client2/android/AndroidAuthSession;->isLinked()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const v2, 0x7f080076

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/aadhk/product/library/a/a;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->b:Lcom/aadhk/product/library/a/c;

    iget-object v2, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const v4, 0x7f080073

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/a;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic k(Lcom/aadhk/restpos/d/q;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "application/db"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/aadhk/restpos/d/q;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 394
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/DatabaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v3

    .line 400
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->n:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 402
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 404
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_2

    .line 405
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    goto :goto_0

    .line 417
    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 422
    if-eqz v2, :cond_0

    .line 424
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 429
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 431
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 438
    :cond_1
    :goto_3
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 439
    return-void

    .line 407
    :cond_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 409
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v2, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {v0, v2}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 410
    iget-object v2, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const v4, 0x7f08006b

    invoke-virtual {v2, v4}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    .line 411
    new-instance v2, Lcom/aadhk/restpos/d/ab;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/d/ab;-><init>(Lcom/aadhk/restpos/d/q;)V

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/c/bo;->a(Lcom/aadhk/restpos/c/bp;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    .line 422
    if-eqz v3, :cond_3

    .line 424
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 429
    :cond_3
    :goto_4
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 432
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 425
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 432
    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 419
    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_5
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 422
    if-eqz v3, :cond_4

    .line 424
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 429
    :cond_4
    :goto_6
    if-eqz v1, :cond_1

    .line 431
    :try_start_b
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_3

    .line 432
    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 425
    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 422
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_7
    if-eqz v3, :cond_5

    .line 424
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 429
    :cond_5
    :goto_8
    if-eqz v1, :cond_6

    .line 431
    :try_start_d
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 434
    :cond_6
    :goto_9
    throw v0

    .line 425
    :catch_8
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 432
    :catch_9
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 422
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_7

    .line 419
    :catch_a
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_b
    move-exception v0

    goto :goto_5

    .line 417
    :catch_c
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1

    :catch_d
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_1
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 125
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/DatabaseActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    .line 126
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 127
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f080095

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/q;->addPreferencesFromResource(I)V

    .line 68
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const v2, 0x7f08002f

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/DatabaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->r:Landroid/content/res/Resources;

    .line 71
    new-instance v0, Lcom/aadhk/product/library/c/e;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const-string v2, "a8lxybk98ib2i9x"

    const-string v3, "7kxlca8anbcr9uq"

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/c/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->e:Lcom/aadhk/product/library/c/e;

    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->e:Lcom/aadhk/product/library/c/e;

    invoke-virtual {v0}, Lcom/aadhk/product/library/c/e;->a()Lcom/dropbox/client2/DropboxAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->d:Lcom/dropbox/client2/DropboxAPI;

    .line 74
    const-string v0, "prefBackup"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/q;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->f:Landroid/preference/Preference;

    .line 75
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->f:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 76
    const-string v0, "prefRestore"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/q;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->g:Landroid/preference/Preference;

    .line 77
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->g:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 78
    const-string v0, "prefRestoreDemo"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/q;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->h:Landroid/preference/Preference;

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->h:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 80
    const-string v0, "prefLinkDropBox"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/q;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->i:Landroid/preference/Preference;

    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->i:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 82
    const-string v0, "prefAutoBackupDropBox"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/q;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->m:Landroid/preference/CheckBoxPreference;

    .line 83
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->m:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 84
    const-string v0, "prefEmailDb"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/q;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->l:Landroid/preference/Preference;

    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->l:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 86
    const-string v0, "prefNewRestaurant"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/q;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->j:Landroid/preference/Preference;

    .line 87
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->j:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 88
    const-string v0, "prefDeleteAllOrder"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/q;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->k:Landroid/preference/Preference;

    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->k:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 91
    const-string v0, "restpos.db"

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->p:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/aadhk/product/library/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_restpos.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->q:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/aadhk/restpos/util/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->o:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const-string v1, "restpos.db"

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/DatabaseActivity;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->n:Ljava/lang/String;

    .line 97
    new-array v0, v7, [Ljava/lang/String;

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->s:[Ljava/lang/String;

    .line 98
    new-array v0, v7, [Ljava/lang/String;

    iput-object v0, p0, Lcom/aadhk/restpos/d/q;->t:[Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->s:[Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const v2, 0x7f080093

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->s:[Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-virtual {v1, v8}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->s:[Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const v2, 0x7f080096

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 102
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->t:[Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const v2, 0x7f080094

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->t:[Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-virtual {v1, v8}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->t:[Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const v2, 0x7f080096

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 121
    return-void
.end method

.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->f:Landroid/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 188
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/aadhk/product/library/b/a;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/q;->s:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/aadhk/product/library/b/a;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const v2, 0x7f08007f

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/a;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/aadhk/restpos/d/aa;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/aa;-><init>(Lcom/aadhk/restpos/d/q;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/a;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v0}, Lcom/aadhk/product/library/b/a;->show()V

    .line 243
    :cond_0
    :goto_0
    return v7

    .line 188
    :cond_1
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const v2, 0x7f080071

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 241
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 189
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->g:Landroid/preference/Preference;

    if-ne p1, v0, :cond_3

    .line 190
    new-instance v0, Lcom/aadhk/product/library/b/a;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/q;->t:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/aadhk/product/library/b/a;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const v2, 0x7f080080

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/a;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/aadhk/restpos/d/s;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/s;-><init>(Lcom/aadhk/restpos/d/q;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/a;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v0}, Lcom/aadhk/product/library/b/a;->show()V

    goto :goto_0

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->h:Landroid/preference/Preference;

    if-ne p1, v0, :cond_4

    .line 192
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->r:Landroid/content/res/Resources;

    const v1, 0x7f0e001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/aadhk/product/library/b/k;

    iget-object v2, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/aadhk/product/library/b/k;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const v2, 0x7f0802f4

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aadhk/product/library/b/k;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/aadhk/restpos/d/z;

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/d/z;-><init>(Lcom/aadhk/restpos/d/q;Lcom/aadhk/product/library/b/k;)V

    invoke-virtual {v1, v0}, Lcom/aadhk/product/library/b/k;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v1}, Lcom/aadhk/product/library/b/k;->show()V

    goto :goto_0

    .line 193
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->l:Landroid/preference/Preference;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_6

    .line 194
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/product/library/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const-string v1, ""

    iget-object v2, p0, Lcom/aadhk/restpos/d/q;->o:Ljava/lang/String;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "application/octet-stream"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    sget v1, Lcom/aadhk/product/library/d;->f:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Lcom/aadhk/product/library/d;->b:I

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_5
    :try_start_4
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f08006a

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/q;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/q;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 195
    :cond_6
    :try_start_5
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->i:Landroid/preference/Preference;

    if-ne p1, v0, :cond_8

    .line 196
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->d:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v0}, Lcom/dropbox/client2/android/AndroidAuthSession;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->e:Lcom/aadhk/product/library/c/e;

    invoke-virtual {v0}, Lcom/aadhk/product/library/c/e;->b()V

    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->d:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v0}, Lcom/dropbox/client2/android/AndroidAuthSession;->unlink()V

    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->i:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const v2, 0x7f08004b

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->i:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const v2, 0x7f08004c

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->m:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const v2, 0x7f080079

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lcom/aadhk/restpos/c/d;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/d;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const v2, 0x7f08007a

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/d;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/aadhk/restpos/d/r;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/r;-><init>(Lcom/aadhk/restpos/d/q;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/d;->a(Lcom/aadhk/restpos/c/f;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/d;->show()V

    goto/16 :goto_0

    .line 197
    :cond_8
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->m:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_9

    .line 198
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->d:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v0}, Lcom/dropbox/client2/android/AndroidAuthSession;->isLinked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 200
    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const v2, 0x7f080078

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    .line 202
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->m:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 204
    :cond_9
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->j:Landroid/preference/Preference;

    if-ne p1, v0, :cond_a

    .line 205
    new-instance v0, Lcom/aadhk/restpos/c/d;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/d;-><init>(Landroid/content/Context;)V

    .line 206
    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const v2, 0x7f0802c5

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/d;->setTitle(Ljava/lang/CharSequence;)V

    .line 207
    new-instance v1, Lcom/aadhk/restpos/d/w;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/w;-><init>(Lcom/aadhk/restpos/d/q;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/d;->a(Lcom/aadhk/restpos/c/f;)V

    .line 220
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/d;->show()V

    goto/16 :goto_0

    .line 221
    :cond_a
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->k:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 222
    new-instance v0, Lcom/aadhk/restpos/c/d;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/d;-><init>(Landroid/content/Context;)V

    .line 223
    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const v2, 0x7f0802c7

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/d;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    new-instance v1, Lcom/aadhk/restpos/d/x;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/x;-><init>(Lcom/aadhk/restpos/d/q;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/d;->a(Lcom/aadhk/restpos/c/f;)V

    .line 237
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/d;->show()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method public final onResume()V
    .locals 3

    .prologue
    .line 131
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 132
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->d:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v0}, Lcom/dropbox/client2/android/AndroidAuthSession;->authenticationSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->d:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v0}, Lcom/dropbox/client2/android/AndroidAuthSession;->finishAuthentication()Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->d:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v0}, Lcom/dropbox/client2/android/AndroidAuthSession;->getOAuth2AccessToken()Ljava/lang/String;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->e:Lcom/aadhk/product/library/c/e;

    invoke-virtual {v1, v0}, Lcom/aadhk/product/library/c/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->d:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v0}, Lcom/dropbox/client2/android/AndroidAuthSession;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->i:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const v2, 0x7f08004d

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->i:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const v2, 0x7f08004e

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 154
    :goto_1
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 139
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 140
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 141
    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const v2, 0x7f08007e

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->i:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const v2, 0x7f08004b

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/aadhk/restpos/d/q;->i:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/aadhk/restpos/d/q;->c:Lcom/aadhk/restpos/DatabaseActivity;

    const v2, 0x7f08004c

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
