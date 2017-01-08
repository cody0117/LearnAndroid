.class final Lcom/aadhk/restpos/bw;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/ak;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/SettingActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/SettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/aadhk/restpos/bw;->a:Lcom/aadhk/restpos/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 293
    iget-object v0, p0, Lcom/aadhk/restpos/bw;->a:Lcom/aadhk/restpos/SettingActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/SettingActivity;->e(Lcom/aadhk/restpos/SettingActivity;)Lcom/aadhk/restpos/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/bw;->a:Lcom/aadhk/restpos/SettingActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/SettingActivity;->d(Lcom/aadhk/restpos/SettingActivity;)Lcom/aadhk/restpos/bean/Company;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/aadhk/restpos/bw;->a:Lcom/aadhk/restpos/SettingActivity;

    invoke-static {v2}, Lcom/aadhk/restpos/SettingActivity;->d(Lcom/aadhk/restpos/SettingActivity;)Lcom/aadhk/restpos/bean/Company;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Company;->getServiceFee()I

    move-result v2

    iget-object v3, p0, Lcom/aadhk/restpos/bw;->a:Lcom/aadhk/restpos/SettingActivity;

    invoke-static {v3}, Lcom/aadhk/restpos/SettingActivity;->d(Lcom/aadhk/restpos/SettingActivity;)Lcom/aadhk/restpos/bean/Company;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Company;->isIncludeService()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/aadhk/restpos/b/c;->a(IIZ)V

    .line 294
    iget-object v0, p0, Lcom/aadhk/restpos/bw;->a:Lcom/aadhk/restpos/SettingActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/SettingActivity;->f(Lcom/aadhk/restpos/SettingActivity;)V

    .line 295
    iget-object v0, p0, Lcom/aadhk/restpos/bw;->a:Lcom/aadhk/restpos/SettingActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    iget-object v1, p0, Lcom/aadhk/restpos/bw;->a:Lcom/aadhk/restpos/SettingActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/SettingActivity;->d(Lcom/aadhk/restpos/SettingActivity;)Lcom/aadhk/restpos/bean/Company;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/POSApp;->a(Lcom/aadhk/restpos/bean/Company;)V

    .line 296
    return-void
.end method
