.class final Lcom/aadhk/restpos/bu;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/SettingActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/SettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/aadhk/restpos/bu;->a:Lcom/aadhk/restpos/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 269
    iget-object v0, p0, Lcom/aadhk/restpos/bu;->a:Lcom/aadhk/restpos/SettingActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/SettingActivity;->a(Lcom/aadhk/restpos/SettingActivity;)Lcom/aadhk/restpos/f/l;

    move-result-object v0

    const-string v1, "prefOrderNumInitial"

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/aadhk/restpos/f/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/aadhk/restpos/bu;->a:Lcom/aadhk/restpos/SettingActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/SettingActivity;->a(Lcom/aadhk/restpos/SettingActivity;)Lcom/aadhk/restpos/f/l;

    move-result-object v0

    const-string v1, "prefOrderNum"

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/f/l;->a(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/aadhk/restpos/bu;->a:Lcom/aadhk/restpos/SettingActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/SettingActivity;->b(Lcom/aadhk/restpos/SettingActivity;)V

    .line 272
    return-void
.end method
