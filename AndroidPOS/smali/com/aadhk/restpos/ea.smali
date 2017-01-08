.class final Lcom/aadhk/restpos/ea;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/TakeOrderActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/TakeOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/aadhk/restpos/ea;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/aadhk/restpos/ea;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->b(Landroid/app/Activity;)V

    .line 1087
    return-void
.end method
