.class final Lcom/bugsense/trace/PingsMechanism$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$jsonCrashData:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/bugsense/trace/PingsMechanism$2;->val$jsonCrashData:Ljava/lang/String;

    iput p2, p0, Lcom/bugsense/trace/PingsMechanism$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bugsense/trace/PingsMechanism$2;->val$jsonCrashData:Ljava/lang/String;

    invoke-static {v0}, Lcom/bugsense/trace/PingsMechanism;->transmitPingSync(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bugsense/trace/PingsMechanism$2;->val$type:I

    invoke-static {v0, v1, v1, v1}, Lcom/bugsense/trace/PingsMechanism;->savePing(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
