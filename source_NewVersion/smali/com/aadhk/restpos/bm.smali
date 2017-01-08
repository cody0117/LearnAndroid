.class final Lcom/aadhk/restpos/bm;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/a/h;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/PrinterActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/PrinterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/aadhk/restpos/bm;->a:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/aadhk/a/k;Lcom/aadhk/a/m;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 202
    invoke-virtual {p1}, Lcom/aadhk/a/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/bm;->a:Lcom/aadhk/restpos/PrinterActivity;

    invoke-static {v0, p2}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Lcom/aadhk/a/m;)V

    .line 208
    iget-object v0, p0, Lcom/aadhk/restpos/bm;->a:Lcom/aadhk/restpos/PrinterActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PrinterActivity;->c(Lcom/aadhk/restpos/PrinterActivity;)Lcom/aadhk/restpos/d/dh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/dh;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/aadhk/restpos/bm;->a:Lcom/aadhk/restpos/PrinterActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PrinterActivity;->c(Lcom/aadhk/restpos/PrinterActivity;)Lcom/aadhk/restpos/d/dh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/dh;->a()V

    .line 210
    iget-object v0, p0, Lcom/aadhk/restpos/bm;->a:Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PrinterActivity;->finish()V
    :try_end_0
    .catch Lcom/aadhk/b/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 214
    invoke-virtual {v0}, Lcom/aadhk/b/a;->printStackTrace()V

    goto :goto_0
.end method
