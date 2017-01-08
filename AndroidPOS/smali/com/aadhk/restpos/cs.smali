.class final Lcom/aadhk/restpos/cs;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/a/j;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/PrinterActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/PrinterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/aadhk/restpos/cs;->a:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/aadhk/a/k;Lcom/aadhk/a/l;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 230
    invoke-virtual {p1}, Lcom/aadhk/a/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/cs;->a:Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/PrinterActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 237
    const-string v0, "db_initialized"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 238
    if-nez v0, :cond_0

    .line 241
    :try_start_0
    const-string v0, "com.aadhk.restpos.feature.receipt"

    invoke-virtual {p2, v0}, Lcom/aadhk/a/l;->b(Ljava/lang/String;)Lcom/aadhk/a/m;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/aadhk/a/m;->e()I

    move-result v2

    if-nez v2, :cond_2

    .line 244
    iget-object v2, p0, Lcom/aadhk/restpos/cs;->a:Lcom/aadhk/restpos/PrinterActivity;

    invoke-static {v2, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Lcom/aadhk/a/m;)V

    .line 247
    :cond_2
    const-string v0, "com.aadhk.restpos.feature.kitchen"

    invoke-virtual {p2, v0}, Lcom/aadhk/a/l;->b(Ljava/lang/String;)Lcom/aadhk/a/m;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/aadhk/a/m;->e()I

    move-result v2

    if-nez v2, :cond_3

    .line 250
    iget-object v2, p0, Lcom/aadhk/restpos/cs;->a:Lcom/aadhk/restpos/PrinterActivity;

    invoke-static {v2, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Lcom/aadhk/a/m;)V

    .line 253
    :cond_3
    const-string v0, "com.aadhk.restpos.feature.kitchen2"

    invoke-virtual {p2, v0}, Lcom/aadhk/a/l;->b(Ljava/lang/String;)Lcom/aadhk/a/m;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/aadhk/a/m;->e()I

    move-result v2

    if-nez v2, :cond_4

    .line 256
    iget-object v2, p0, Lcom/aadhk/restpos/cs;->a:Lcom/aadhk/restpos/PrinterActivity;

    invoke-static {v2, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Lcom/aadhk/a/m;)V

    .line 259
    :cond_4
    const-string v0, "com.aadhk.restpos.feature.bar"

    invoke-virtual {p2, v0}, Lcom/aadhk/a/l;->b(Ljava/lang/String;)Lcom/aadhk/a/m;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/aadhk/a/m;->e()I

    move-result v2

    if-nez v2, :cond_5

    .line 262
    iget-object v2, p0, Lcom/aadhk/restpos/cs;->a:Lcom/aadhk/restpos/PrinterActivity;

    invoke-static {v2, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Lcom/aadhk/a/m;)V
    :try_end_0
    .catch Lcom/aadhk/b/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_5
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 270
    const-string v1, "db_initialized"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 271
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 266
    invoke-virtual {v0}, Lcom/aadhk/b/a;->printStackTrace()V

    goto :goto_1
.end method
