.class public Lcom/aadhk/restpos/DatabaseActivity;
.super Landroid/preference/PreferenceActivity;
.source "ProGuard"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field a:Lcom/aadhk/product/library/a/b;

.field b:Lcom/aadhk/product/library/a/b;

.field private c:Lcom/dropbox/client2/DropboxAPI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/client2/DropboxAPI",
            "<",
            "Lcom/dropbox/client2/android/AndroidAuthSession;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/aadhk/product/library/c/e;

.field private e:Landroid/preference/Preference;

.field private f:Landroid/preference/Preference;

.field private g:Landroid/preference/Preference;

.field private h:Landroid/preference/Preference;

.field private i:Landroid/preference/Preference;

.field private j:Landroid/preference/Preference;

.field private k:Landroid/preference/Preference;

.field private l:Landroid/preference/CheckBoxPreference;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Landroid/content/res/Resources;

.field private r:[Ljava/lang/String;

.field private s:[Ljava/lang/String;

.field private t:[I

.field private u:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->t:[I

    .line 491
    new-instance v0, Lcom/aadhk/restpos/o;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/o;-><init>(Lcom/aadhk/restpos/DatabaseActivity;)V

    iput-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->a:Lcom/aadhk/product/library/a/b;

    .line 539
    new-instance v0, Lcom/aadhk/restpos/p;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/p;-><init>(Lcom/aadhk/restpos/DatabaseActivity;)V

    iput-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->b:Lcom/aadhk/product/library/a/b;

    return-void

    .line 60
    :array_0
    .array-data 0x4
        0x7t 0x0t 0x6t 0x7ft
        0x8t 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method static synthetic a(Lcom/aadhk/restpos/DatabaseActivity;)Lcom/dropbox/client2/DropboxAPI;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->c:Lcom/dropbox/client2/DropboxAPI;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 592
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/aadhk/restpos/DatabaseActivity;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 593
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 594
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    sget-object v0, Lcom/aadhk/restpos/f/d;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/aadhk/product/library/c/f;->a(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/DatabaseActivity;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/product/library/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->u:I

    if-nez v0, :cond_0

    .line 598
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/DatabaseActivity;->q:Landroid/content/res/Resources;

    const v3, 0x7f090039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/DatabaseActivity;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 600
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 603
    :cond_1
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/DatabaseActivity;->q:Landroid/content/res/Resources;

    const v3, 0x7f09003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/DatabaseActivity;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 605
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 612
    :catch_0
    move-exception v0

    .line 613
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 614
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 608
    :cond_2
    :try_start_1
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 609
    iget-object v1, p0, Lcom/aadhk/restpos/DatabaseActivity;->q:Landroid/content/res/Resources;

    const v2, 0x7f090041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 610
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/aadhk/restpos/DatabaseActivity;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x7f090294

    const/4 v5, 0x1

    .line 47
    const-string v0, "restpos.db"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DatabaseActivity;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/aadhk/restpos/DatabaseActivity;->q:Landroid/content/res/Resources;

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

    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

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

    new-instance v0, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(I)V

    new-instance v1, Lcom/aadhk/restpos/k;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/k;-><init>(Lcom/aadhk/restpos/DatabaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Lcom/aadhk/restpos/c/ay;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/aadhk/restpos/DatabaseActivity;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 47
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->m:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/aadhk/product/library/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(I)V

    new-instance v1, Lcom/aadhk/restpos/h;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/h;-><init>(Lcom/aadhk/restpos/DatabaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Lcom/aadhk/restpos/c/ay;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090051

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

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

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/aadhk/restpos/DatabaseActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput p1, p0, Lcom/aadhk/restpos/DatabaseActivity;->u:I

    return p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/DatabaseActivity;)[I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->t:[I

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/DatabaseActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->u:I

    return v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/DatabaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/aadhk/restpos/DatabaseActivity;->a()V

    return-void
.end method

.method static synthetic e(Lcom/aadhk/restpos/DatabaseActivity;)V
    .locals 4
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->c:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v0}, Lcom/dropbox/client2/android/AndroidAuthSession;->isLinked()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090047

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(I)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/aadhk/product/library/a/a;

    iget-object v1, p0, Lcom/aadhk/restpos/DatabaseActivity;->a:Lcom/aadhk/product/library/a/b;

    iget-object v2, p0, Lcom/aadhk/restpos/DatabaseActivity;->q:Landroid/content/res/Resources;

    const v3, 0x7f090042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/aadhk/product/library/a/a;-><init>(Landroid/content/Context;Lcom/aadhk/product/library/a/b;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic f(Lcom/aadhk/restpos/DatabaseActivity;)V
    .locals 4
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/aadhk/restpos/DatabaseActivity;->a()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.apps.docs"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "application/db"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lcom/aadhk/restpos/DatabaseActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aadhk/restpos/DatabaseActivity;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DatabaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic g(Lcom/aadhk/restpos/DatabaseActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/aadhk/restpos/DatabaseActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/aadhk/restpos/DatabaseActivity;)V
    .locals 4
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->c:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v0}, Lcom/dropbox/client2/android/AndroidAuthSession;->isLinked()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(I)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/aadhk/product/library/a/a;

    iget-object v1, p0, Lcom/aadhk/restpos/DatabaseActivity;->b:Lcom/aadhk/product/library/a/b;

    iget-object v2, p0, Lcom/aadhk/restpos/DatabaseActivity;->q:Landroid/content/res/Resources;

    const v3, 0x7f090043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/aadhk/product/library/a/a;-><init>(Landroid/content/Context;Lcom/aadhk/product/library/a/b;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic j(Lcom/aadhk/restpos/DatabaseActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "application/db"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/aadhk/restpos/DatabaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 431
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 435
    :try_start_0
    invoke-virtual {p0}, Lcom/aadhk/restpos/DatabaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v3

    .line 438
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->m:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 441
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 443
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_2

    .line 444
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 461
    if-eqz v2, :cond_0

    .line 463
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 468
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 470
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 477
    :cond_1
    :goto_3
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 478
    return-void

    .line 446
    :cond_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 448
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 449
    const v2, 0x7f09003b

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/c/ax;->a(I)V

    .line 450
    new-instance v2, Lcom/aadhk/restpos/n;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/n;-><init>(Lcom/aadhk/restpos/DatabaseActivity;)V

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/c/ax;->a(Lcom/aadhk/restpos/c/ay;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    .line 461
    if-eqz v3, :cond_3

    .line 463
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 468
    :cond_3
    :goto_4
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 471
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 464
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 471
    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 458
    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_5
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 461
    if-eqz v3, :cond_4

    .line 463
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 468
    :cond_4
    :goto_6
    if-eqz v1, :cond_1

    .line 470
    :try_start_b
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_3

    .line 471
    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 464
    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 461
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_7
    if-eqz v3, :cond_5

    .line 463
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 468
    :cond_5
    :goto_8
    if-eqz v1, :cond_6

    .line 470
    :try_start_d
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 473
    :cond_6
    :goto_9
    throw v0

    .line 464
    :catch_8
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 471
    :catch_9
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 461
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

    .line 458
    :catch_a
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_b
    move-exception v0

    goto :goto_5

    .line 456
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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f090063

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 66
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/aadhk/restpos/DatabaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 70
    :cond_0
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DatabaseActivity;->addPreferencesFromResource(I)V

    .line 71
    const/high16 v0, 0x7f09

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DatabaseActivity;->setTitle(I)V

    .line 72
    const-string v0, "9fa2b19a"

    invoke-static {p0, v0}, Lcom/bugsense/trace/BugSenseHandler;->initAndStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/aadhk/restpos/DatabaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->q:Landroid/content/res/Resources;

    .line 75
    new-instance v0, Lcom/aadhk/product/library/c/e;

    const-string v1, "a8lxybk98ib2i9x"

    const-string v2, "7kxlca8anbcr9uq"

    invoke-direct {v0, p0, v1, v2}, Lcom/aadhk/product/library/c/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->d:Lcom/aadhk/product/library/c/e;

    .line 76
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->d:Lcom/aadhk/product/library/c/e;

    invoke-virtual {v0}, Lcom/aadhk/product/library/c/e;->a()Lcom/dropbox/client2/DropboxAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->c:Lcom/dropbox/client2/DropboxAPI;

    .line 78
    const-string v0, "prefBackup"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DatabaseActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->e:Landroid/preference/Preference;

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->e:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 80
    const-string v0, "prefRestore"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DatabaseActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->f:Landroid/preference/Preference;

    .line 81
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->f:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 82
    const-string v0, "prefRestoreDemo"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DatabaseActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->g:Landroid/preference/Preference;

    .line 83
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->g:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 84
    const-string v0, "prefLinkDropBox"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DatabaseActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->h:Landroid/preference/Preference;

    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->h:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 86
    const-string v0, "prefAutoBackupDropBox"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DatabaseActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->l:Landroid/preference/CheckBoxPreference;

    .line 87
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->l:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 88
    const-string v0, "prefEmailDb"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DatabaseActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->k:Landroid/preference/Preference;

    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->k:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 90
    const-string v0, "prefNewRestaurant"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DatabaseActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->i:Landroid/preference/Preference;

    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->i:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 92
    const-string v0, "prefDeleteAllOrder"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DatabaseActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->j:Landroid/preference/Preference;

    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->j:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 95
    const-string v0, "restpos.db"

    iput-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->o:Ljava/lang/String;

    .line 96
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

    iput-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->p:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/aadhk/restpos/f/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/DatabaseActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->n:Ljava/lang/String;

    .line 99
    const-string v0, "restpos.db"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/DatabaseActivity;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->m:Ljava/lang/String;

    .line 101
    new-array v0, v6, [Ljava/lang/String;

    iput-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->r:[Ljava/lang/String;

    .line 102
    new-array v0, v6, [Ljava/lang/String;

    iput-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->s:[Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->r:[Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/DatabaseActivity;->q:Landroid/content/res/Resources;

    const v2, 0x7f090061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->r:[Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/DatabaseActivity;->q:Landroid/content/res/Resources;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->r:[Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/DatabaseActivity;->q:Landroid/content/res/Resources;

    const v2, 0x7f090064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->s:[Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/DatabaseActivity;->q:Landroid/content/res/Resources;

    const v2, 0x7f090062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->s:[Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/DatabaseActivity;->q:Landroid/content/res/Resources;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->s:[Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/DatabaseActivity;->q:Landroid/content/res/Resources;

    const v2, 0x7f090064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 123
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 127
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/aadhk/restpos/DatabaseActivity;->finish()V

    .line 130
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->e:Landroid/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 194
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/aadhk/restpos/DatabaseActivity;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/aadhk/product/library/b/a;

    iget-object v1, p0, Lcom/aadhk/restpos/DatabaseActivity;->r:[Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/aadhk/product/library/b/a;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    const v1, 0x7f09004f

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/a;->setTitle(I)V

    new-instance v1, Lcom/aadhk/restpos/m;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/m;-><init>(Lcom/aadhk/restpos/DatabaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/a;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v0}, Lcom/aadhk/product/library/b/a;->show()V

    .line 249
    :cond_0
    :goto_0
    return v6

    .line 194
    :cond_1
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(I)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 247
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 195
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->f:Landroid/preference/Preference;

    if-ne p1, v0, :cond_3

    .line 196
    new-instance v0, Lcom/aadhk/product/library/b/a;

    iget-object v1, p0, Lcom/aadhk/restpos/DatabaseActivity;->s:[Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/aadhk/product/library/b/a;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/a;->setTitle(I)V

    new-instance v1, Lcom/aadhk/restpos/e;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/e;-><init>(Lcom/aadhk/restpos/DatabaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/a;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v0}, Lcom/aadhk/product/library/b/a;->show()V

    goto :goto_0

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->g:Landroid/preference/Preference;

    if-ne p1, v0, :cond_4

    .line 198
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->q:Landroid/content/res/Resources;

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/aadhk/product/library/b/k;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/aadhk/product/library/b/k;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    const v0, 0x7f090295

    invoke-virtual {v1, v0}, Lcom/aadhk/product/library/b/k;->setTitle(I)V

    new-instance v0, Lcom/aadhk/restpos/l;

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/l;-><init>(Lcom/aadhk/restpos/DatabaseActivity;Lcom/aadhk/product/library/b/k;)V

    invoke-virtual {v1, v0}, Lcom/aadhk/product/library/b/k;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v1}, Lcom/aadhk/product/library/b/k;->show()V

    goto :goto_0

    .line 199
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->k:Landroid/preference/Preference;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_6

    .line 200
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/DatabaseActivity;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/product/library/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    iget-object v1, p0, Lcom/aadhk/restpos/DatabaseActivity;->n:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "application/octet-stream"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "android.intent.extra.EMAIL"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    sget v0, Lcom/aadhk/product/library/d;->f:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/aadhk/product/library/d;->b:I

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
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
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/DatabaseActivity;->q:Landroid/content/res/Resources;

    const v3, 0x7f09003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/DatabaseActivity;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 201
    :cond_6
    :try_start_5
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->h:Landroid/preference/Preference;

    if-ne p1, v0, :cond_8

    .line 202
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->c:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v0}, Lcom/dropbox/client2/android/AndroidAuthSession;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->d:Lcom/aadhk/product/library/c/e;

    invoke-virtual {v0}, Lcom/aadhk/product/library/c/e;->b()V

    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->c:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v0}, Lcom/dropbox/client2/android/AndroidAuthSession;->unlink()V

    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->h:Landroid/preference/Preference;

    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->h:Landroid/preference/Preference;

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->l:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v0, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090049

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(I)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lcom/aadhk/restpos/c/g;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09004a

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/g;->setTitle(I)V

    new-instance v1, Lcom/aadhk/restpos/d;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d;-><init>(Lcom/aadhk/restpos/DatabaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/g;->a(Lcom/aadhk/restpos/c/i;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/g;->show()V

    goto/16 :goto_0

    .line 203
    :cond_8
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->l:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_9

    .line 204
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->c:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v0}, Lcom/dropbox/client2/android/AndroidAuthSession;->isLinked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 206
    const v1, 0x7f090048

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(I)V

    .line 207
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    .line 208
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->l:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 210
    :cond_9
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->i:Landroid/preference/Preference;

    if-ne p1, v0, :cond_a

    .line 211
    new-instance v0, Lcom/aadhk/restpos/c/g;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/g;-><init>(Landroid/content/Context;)V

    .line 212
    const v1, 0x7f09026a

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/g;->setTitle(I)V

    .line 213
    new-instance v1, Lcom/aadhk/restpos/i;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/i;-><init>(Lcom/aadhk/restpos/DatabaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/g;->a(Lcom/aadhk/restpos/c/i;)V

    .line 226
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/g;->show()V

    goto/16 :goto_0

    .line 227
    :cond_a
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->j:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 228
    new-instance v0, Lcom/aadhk/restpos/c/g;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/g;-><init>(Landroid/content/Context;)V

    .line 229
    const v1, 0x7f09026c

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/g;->setTitle(I)V

    .line 230
    new-instance v1, Lcom/aadhk/restpos/j;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/j;-><init>(Lcom/aadhk/restpos/DatabaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/g;->a(Lcom/aadhk/restpos/c/i;)V

    .line 243
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/g;->show()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 137
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->c:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v0}, Lcom/dropbox/client2/android/AndroidAuthSession;->authenticationSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->c:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v0}, Lcom/dropbox/client2/android/AndroidAuthSession;->finishAuthentication()Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->c:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v0}, Lcom/dropbox/client2/android/AndroidAuthSession;->getOAuth2AccessToken()Ljava/lang/String;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/aadhk/restpos/DatabaseActivity;->d:Lcom/aadhk/product/library/c/e;

    invoke-virtual {v1, v0}, Lcom/aadhk/product/library/c/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->c:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v0}, Lcom/dropbox/client2/android/AndroidAuthSession;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->h:Landroid/preference/Preference;

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 154
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->h:Landroid/preference/Preference;

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 159
    :goto_1
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 144
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 145
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 146
    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(I)V

    .line 147
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    goto :goto_0

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->h:Landroid/preference/Preference;

    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 157
    iget-object v0, p0, Lcom/aadhk/restpos/DatabaseActivity;->h:Landroid/preference/Preference;

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1
.end method
