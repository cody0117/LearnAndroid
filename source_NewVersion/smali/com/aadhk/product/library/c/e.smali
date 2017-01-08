.class public final Lcom/aadhk/product/library/c/e;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/aadhk/product/library/c/e;->a:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/aadhk/product/library/c/e;->b:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/aadhk/product/library/c/e;->c:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public final a()Lcom/dropbox/client2/DropboxAPI;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/client2/DropboxAPI",
            "<",
            "Lcom/dropbox/client2/android/AndroidAuthSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/dropbox/client2/session/AppKeyPair;

    iget-object v1, p0, Lcom/aadhk/product/library/c/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/product/library/c/e;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/client2/session/AppKeyPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v1, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-direct {v1, v0}, Lcom/dropbox/client2/android/AndroidAuthSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;)V

    .line 28
    iget-object v0, p0, Lcom/aadhk/product/library/c/e;->a:Landroid/content/Context;

    const-string v2, "prefs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "ACCESS_SECRET"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/dropbox/client2/android/AndroidAuthSession;->setOAuth2AccessToken(Ljava/lang/String;)V

    .line 29
    :cond_0
    new-instance v0, Lcom/dropbox/client2/DropboxAPI;

    invoke-direct {v0, v1}, Lcom/dropbox/client2/DropboxAPI;-><init>(Lcom/dropbox/client2/session/Session;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/aadhk/product/library/c/e;->a:Landroid/content/Context;

    const-string v1, "prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 40
    const-string v1, "ACCESS_SECRET"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 42
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/aadhk/product/library/c/e;->a:Landroid/content/Context;

    const-string v1, "prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    return-void
.end method
