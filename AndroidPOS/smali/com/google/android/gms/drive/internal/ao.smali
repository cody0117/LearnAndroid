.class public final Lcom/google/android/gms/drive/internal/ao;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/android/gms/internal/pj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/pj;

    const-string v1, "GmsDrive"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/pj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/internal/ao;->a:Lcom/google/android/gms/internal/pj;

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/drive/internal/ao;->a:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pj;->a()Z

    return-void
.end method
