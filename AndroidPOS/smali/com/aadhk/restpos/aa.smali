.class final Lcom/aadhk/restpos/aa;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/aadhk/b/a/b;

.field final synthetic b:Lcom/aadhk/restpos/LoginActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/LoginActivity;Lcom/aadhk/b/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/aadhk/restpos/aa;->b:Lcom/aadhk/restpos/LoginActivity;

    iput-object p2, p0, Lcom/aadhk/restpos/aa;->a:Lcom/aadhk/b/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/aadhk/restpos/aa;->a:Lcom/aadhk/b/a/b;

    invoke-virtual {v0}, Lcom/aadhk/b/a/b;->dismiss()V

    .line 197
    iget-object v0, p0, Lcom/aadhk/restpos/aa;->b:Lcom/aadhk/restpos/LoginActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/LoginActivity;->finish()V

    .line 199
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
