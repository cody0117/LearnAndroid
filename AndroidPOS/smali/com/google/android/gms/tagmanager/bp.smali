.class final Lcom/google/android/gms/tagmanager/bp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:J

.field final synthetic c:Lcom/google/android/gms/tagmanager/bo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/bo;Ljava/util/List;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/bp;->c:Lcom/google/android/gms/tagmanager/bo;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/bp;->a:Ljava/util/List;

    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/bp;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/bp;->c:Lcom/google/android/gms/tagmanager/bo;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/bp;->a:Ljava/util/List;

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/bp;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/tagmanager/bo;->a(Lcom/google/android/gms/tagmanager/bo;Ljava/util/List;J)V

    return-void
.end method
