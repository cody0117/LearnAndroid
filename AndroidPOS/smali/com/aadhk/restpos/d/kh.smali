.class final Lcom/aadhk/restpos/d/kh;
.super Ljava/util/TimerTask;
.source "ProGuard"


# instance fields
.field a:Landroid/os/Handler;

.field final synthetic b:Lcom/aadhk/restpos/d/ke;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/d/ke;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/aadhk/restpos/d/kh;->b:Lcom/aadhk/restpos/d/ke;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/kh;->a:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/ke;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/kh;-><init>(Lcom/aadhk/restpos/d/ke;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/d/kh;->a:Landroid/os/Handler;

    new-instance v1, Lcom/aadhk/restpos/d/ki;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/ki;-><init>(Lcom/aadhk/restpos/d/kh;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    return-void
.end method
