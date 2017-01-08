.class final Lcom/aadhk/restpos/ai;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/google/android/a/a/m;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/aadhk/restpos/ai;->a:Lcom/aadhk/restpos/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/LoginActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/ai;-><init>(Lcom/aadhk/restpos/LoginActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/aadhk/restpos/ai;->a:Lcom/aadhk/restpos/LoginActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/LoginActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 287
    iget-object v0, p0, Lcom/aadhk/restpos/ai;->a:Lcom/aadhk/restpos/LoginActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/LoginActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 291
    :cond_0
    const-string v0, "License"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "application error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bugsense/trace/BugSenseHandler;->addCrashExtraData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 6

    .prologue
    .line 263
    iget-object v0, p0, Lcom/aadhk/restpos/ai;->a:Lcom/aadhk/restpos/LoginActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/LoginActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 268
    :cond_0
    new-instance v0, Lcom/aadhk/restpos/aj;

    iget-object v1, p0, Lcom/aadhk/restpos/ai;->a:Lcom/aadhk/restpos/LoginActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/ai;->a:Lcom/aadhk/restpos/LoginActivity;

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/aj;-><init>(Lcom/aadhk/restpos/LoginActivity;Landroid/content/Context;)V

    .line 269
    iget-object v1, p0, Lcom/aadhk/restpos/ai;->a:Lcom/aadhk/restpos/LoginActivity;

    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/aadhk/restpos/ai;->a:Lcom/aadhk/restpos/LoginActivity;

    const v5, 0x7f090011

    invoke-virtual {v4, v5}, Lcom/aadhk/restpos/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/aj;->a(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0}, Lcom/aadhk/restpos/aj;->show()V

    goto :goto_0
.end method
