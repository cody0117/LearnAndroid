.class final Lcom/aadhk/restpos/by;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/cf;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/SettingActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/SettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lcom/aadhk/restpos/by;->a:Lcom/aadhk/restpos/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/aadhk/restpos/by;->a:Lcom/aadhk/restpos/SettingActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/SettingActivity;->e(Lcom/aadhk/restpos/SettingActivity;)Lcom/aadhk/restpos/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/by;->a:Lcom/aadhk/restpos/SettingActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/SettingActivity;->d(Lcom/aadhk/restpos/SettingActivity;)Lcom/aadhk/restpos/bean/Company;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/c;->c(Lcom/aadhk/restpos/bean/Company;)V

    .line 472
    iget-object v0, p0, Lcom/aadhk/restpos/by;->a:Lcom/aadhk/restpos/SettingActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/SettingActivity;->g(Lcom/aadhk/restpos/SettingActivity;)V

    .line 473
    iget-object v0, p0, Lcom/aadhk/restpos/by;->a:Lcom/aadhk/restpos/SettingActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    iget-object v1, p0, Lcom/aadhk/restpos/by;->a:Lcom/aadhk/restpos/SettingActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/SettingActivity;->d(Lcom/aadhk/restpos/SettingActivity;)Lcom/aadhk/restpos/bean/Company;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/POSApp;->a(Lcom/aadhk/restpos/bean/Company;)V

    .line 474
    return-void
.end method
