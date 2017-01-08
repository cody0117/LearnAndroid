.class final Lcom/aadhk/restpos/z;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/b/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/LoginActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/aadhk/restpos/z;->a:Lcom/aadhk/restpos/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/aadhk/restpos/z;->a:Lcom/aadhk/restpos/LoginActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/app/Activity;)V

    .line 186
    iget-object v0, p0, Lcom/aadhk/restpos/z;->a:Lcom/aadhk/restpos/LoginActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/LoginActivity;->finish()V

    .line 187
    return-void
.end method
