.class final Lcom/aadhk/restpos/d/x;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/q;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/q;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/aadhk/restpos/d/x;->a:Lcom/aadhk/restpos/d/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 227
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 228
    new-instance v1, Lcom/aadhk/restpos/b/ab;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/ab;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 229
    invoke-virtual {v1}, Lcom/aadhk/restpos/b/ab;->b()V

    .line 230
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 232
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/x;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v1}, Lcom/aadhk/restpos/d/q;->a(Lcom/aadhk/restpos/d/q;)Lcom/aadhk/restpos/DatabaseActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 233
    iget-object v1, p0, Lcom/aadhk/restpos/d/x;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v1}, Lcom/aadhk/restpos/d/q;->a(Lcom/aadhk/restpos/d/q;)Lcom/aadhk/restpos/DatabaseActivity;

    move-result-object v1

    const v2, 0x7f0802c8

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    .line 235
    return-void
.end method
