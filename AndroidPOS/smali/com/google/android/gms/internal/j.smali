.class final Lcom/google/android/gms/internal/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/google/android/gms/internal/h;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/h;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/j;->b:Lcom/google/android/gms/internal/h;

    iput-object p2, p0, Lcom/google/android/gms/internal/j;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/j;->b:Lcom/google/android/gms/internal/h;

    iget-object v1, p0, Lcom/google/android/gms/internal/j;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/h;->a(Lorg/json/JSONObject;)V

    return-void
.end method
