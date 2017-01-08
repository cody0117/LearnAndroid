.class final Lcom/aadhk/restpos/j;
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
    .line 230
    iput-object p1, p0, Lcom/aadhk/restpos/j;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 233
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 234
    new-instance v1, Lcom/aadhk/restpos/b/w;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/w;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 235
    invoke-virtual {v1}, Lcom/aadhk/restpos/b/w;->b()V

    .line 236
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 238
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/j;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 239
    const v1, 0x7f09026d

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(I)V

    .line 240
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    .line 241
    return-void
.end method
