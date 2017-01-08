.class final Lcom/aadhk/restpos/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/i;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/DatabaseActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/DatabaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/aadhk/restpos/d;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/aadhk/restpos/d;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/DatabaseActivity;->a(Lcom/aadhk/restpos/DatabaseActivity;)Lcom/dropbox/client2/DropboxAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/android/AndroidAuthSession;

    iget-object v1, p0, Lcom/aadhk/restpos/d;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-virtual {v0, v1}, Lcom/dropbox/client2/android/AndroidAuthSession;->startOAuth2Authentication(Landroid/content/Context;)V

    .line 184
    return-void
.end method
