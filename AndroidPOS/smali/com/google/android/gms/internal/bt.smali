.class public final Lcom/google/android/gms/internal/bt;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ia;
.end annotation


# static fields
.field public static a:Lcom/google/android/gms/internal/nx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nx",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Lcom/google/android/gms/internal/nx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nx",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Lcom/google/android/gms/internal/nx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nx",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Lcom/google/android/gms/internal/nx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nx",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Lcom/google/android/gms/internal/nx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nx",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Lcom/google/android/gms/internal/nx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nx",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static g:Lcom/google/android/gms/internal/nx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nx",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static h:Lcom/google/android/gms/internal/nx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nx",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static i:Lcom/google/android/gms/internal/nx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nx",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static j:Lcom/google/android/gms/internal/nx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nx",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static k:Lcom/google/android/gms/internal/nx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nx",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static l:Lcom/google/android/gms/internal/nx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nx",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static m:Lcom/google/android/gms/internal/nx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nx",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static n:Lcom/google/android/gms/internal/nx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nx",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Landroid/os/Bundle;

.field private static p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bt;->o:Landroid/os/Bundle;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/bt;->p:Z

    const-string v0, "gads:sdk_core_location"

    const-string v1, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/sdk-core-v40.html"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bt;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/nx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/bt;->a:Lcom/google/android/gms/internal/nx;

    const-string v0, "gads:sdk_core_experiment_id"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/bt;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/nx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/bt;->b:Lcom/google/android/gms/internal/nx;

    const-string v0, "gads:sdk_crash_report_enabled"

    invoke-static {v0}, Lcom/google/android/gms/internal/bt;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/nx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/bt;->c:Lcom/google/android/gms/internal/nx;

    const-string v0, "gads:sdk_crash_report_full_stacktrace"

    invoke-static {v0}, Lcom/google/android/gms/internal/bt;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/nx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/bt;->d:Lcom/google/android/gms/internal/nx;

    const-string v0, "gads:block_autoclicks"

    invoke-static {v0}, Lcom/google/android/gms/internal/bt;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/nx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/bt;->e:Lcom/google/android/gms/internal/nx;

    const-string v0, "gads:block_autoclicks_experiment_id"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/bt;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/nx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/bt;->f:Lcom/google/android/gms/internal/nx;

    sput-boolean v2, Lcom/google/android/gms/internal/bt;->p:Z

    const-string v0, "gads:enable_content_fetching"

    invoke-static {v0}, Lcom/google/android/gms/internal/bt;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/nx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/bt;->i:Lcom/google/android/gms/internal/nx;

    const-string v0, "gads:content_length_weight"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/bt;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/nx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/bt;->j:Lcom/google/android/gms/internal/nx;

    const-string v0, "gads:content_age_weight"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/bt;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/nx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/bt;->k:Lcom/google/android/gms/internal/nx;

    const-string v0, "gads:min_content_len"

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bt;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/nx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/bt;->l:Lcom/google/android/gms/internal/nx;

    const-string v0, "gads:fingerprint_number"

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/bt;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/nx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/bt;->m:Lcom/google/android/gms/internal/nx;

    const-string v0, "gads:sleep_sec"

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/bt;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/nx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/bt;->n:Lcom/google/android/gms/internal/nx;

    const-string v0, "gads:spam_app_context:enabled"

    invoke-static {v0}, Lcom/google/android/gms/internal/bt;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/nx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/bt;->g:Lcom/google/android/gms/internal/nx;

    const-string v0, "gads:spam_app_context:experiment_id"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/bt;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/nx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/bt;->h:Lcom/google/android/gms/internal/nx;

    return-void
.end method

.method public static a()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/bt;->o:Landroid/os/Bundle;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lcom/google/android/gms/internal/nx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/nx",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/bt;->o:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/google/android/gms/internal/nx;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/nx;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;I)Lcom/google/android/gms/internal/nx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/nx",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/bt;->o:Landroid/os/Bundle;

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/nx;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/internal/nx;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/nx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/nx",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/bt;->o:Landroid/os/Bundle;

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/nx;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/nx;

    move-result-object v0

    return-object v0
.end method
