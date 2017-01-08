.class final Lcom/aadhk/restpos/cr;
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
    .line 207
    iput-object p1, p0, Lcom/aadhk/restpos/cr;->a:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/aadhk/a/k;Lcom/aadhk/a/m;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 209
    invoke-virtual {p1}, Lcom/aadhk/a/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/cr;->a:Lcom/aadhk/restpos/PrinterActivity;

    invoke-static {v0, p2}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Lcom/aadhk/a/m;)V

    .line 215
    iget-object v0, p0, Lcom/aadhk/restpos/cr;->a:Lcom/aadhk/restpos/PrinterActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PrinterActivity;->c(Lcom/aadhk/restpos/PrinterActivity;)Lcom/aadhk/restpos/d/gn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/gn;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/aadhk/restpos/cr;->a:Lcom/aadhk/restpos/PrinterActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PrinterActivity;->c(Lcom/aadhk/restpos/PrinterActivity;)Lcom/aadhk/restpos/d/gn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/gn;->a()V

    .line 217
    iget-object v0, p0, Lcom/aadhk/restpos/cr;->a:Lcom/aadhk/restpos/PrinterActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PrinterActivity;->finish()V
    :try_end_0
    .catch Lcom/aadhk/b/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 221
    invoke-virtual {v0}, Lcom/aadhk/b/a;->printStackTrace()V

    goto :goto_0
.end method
