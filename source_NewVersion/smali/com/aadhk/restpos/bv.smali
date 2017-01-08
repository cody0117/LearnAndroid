.class final Lcom/aadhk/restpos/bv;
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
    .line 278
    iput-object p1, p0, Lcom/aadhk/restpos/bv;->a:Lcom/aadhk/restpos/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Lcom/aadhk/restpos/bv;->a:Lcom/aadhk/restpos/SettingActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/SettingActivity;->a(Lcom/aadhk/restpos/SettingActivity;)Lcom/aadhk/restpos/f/l;

    move-result-object v1

    const-string v2, "prefTableDefaultPersonNum"

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/aadhk/restpos/f/l;->a(Ljava/lang/String;I)V

    .line 282
    iget-object v0, p0, Lcom/aadhk/restpos/bv;->a:Lcom/aadhk/restpos/SettingActivity;

    const v1, 0x7f09024b

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/aadhk/restpos/bv;->a:Lcom/aadhk/restpos/SettingActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/SettingActivity;->c(Lcom/aadhk/restpos/SettingActivity;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 284
    return-void
.end method
