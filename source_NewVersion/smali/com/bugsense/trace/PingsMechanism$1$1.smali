.class Lcom/bugsense/trace/PingsMechanism$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic this$1:Lcom/bugsense/trace/PingsMechanism$1;


# direct methods
.method constructor <init>(Lcom/bugsense/trace/PingsMechanism$1;)V
    .locals 0

    iput-object p1, p0, Lcom/bugsense/trace/PingsMechanism$1$1;->this$1:Lcom/bugsense/trace/PingsMechanism$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Ping_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method