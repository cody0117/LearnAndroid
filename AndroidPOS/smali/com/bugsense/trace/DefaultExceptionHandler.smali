.class public Lcom/bugsense/trace/DefaultExceptionHandler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bugsense/trace/DefaultExceptionHandler;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 13

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    const-wide/16 v9, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/bugsense/trace/G;->TIMESTAMP:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    sub-long v9, v1, v3

    :goto_0
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v11, Ljava/util/HashMap;

    const/4 v3, 0x6

    invoke-direct {v11, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v3, "sysMemAvail"

    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    long-to-double v4, v4

    const-wide/high16 v6, 0x4130

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sysMemLow"

    iget-boolean v4, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sysMemThreshold"

    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    long-to-double v4, v4

    const-wide/high16 v6, 0x4130

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appMemAvail"

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide/high16 v5, 0x4130

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appMemMax"

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide/high16 v5, 0x4130

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appMemTotal"

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4130

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, ""

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/bugsense/trace/G;->IS_WIFI_ON:I

    sget v2, Lcom/bugsense/trace/G;->IS_MOBILENET_ON:I

    sget v3, Lcom/bugsense/trace/G;->IS_GPS_ON:I

    sget-object v4, Lcom/bugsense/trace/G;->SCREEN_PROPS:[Ljava/lang/String;

    invoke-static {}, Lcom/bugsense/trace/Utils;->getTime()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/bugsense/trace/BugSenseHandler;->getCrashExtraData()Ljava/util/HashMap;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static/range {v0 .. v11}, Lcom/bugsense/trace/CrashMechanism;->createJSONFromCrash(Ljava/lang/String;III[Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;IJLjava/util/Map;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_1
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bugsense/trace/CrashMechanism;->transmitCrashASync(Ljava/lang/String;I)V

    sget-boolean v0, Lcom/bugsense/trace/BugSenseHandler;->I_WANT_TO_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/bugsense/trace/Utils;->saveCrashCounter()V

    invoke-static {}, Lcom/bugsense/trace/BugSenseHandler;->getCallback()Lcom/bugsense/trace/ExceptionCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bugsense/trace/BugSenseHandler;->getCallback()Lcom/bugsense/trace/ExceptionCallback;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/bugsense/trace/ExceptionCallback;->lastBreath(Ljava/lang/Exception;)V

    :cond_1
    const-wide/16 v0, 0xbb8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    iget-object v0, p0, Lcom/bugsense/trace/DefaultExceptionHandler;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v12

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v1

    goto/16 :goto_0
.end method
