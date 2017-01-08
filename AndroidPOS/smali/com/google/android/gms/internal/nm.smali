.class public abstract Lcom/google/android/gms/internal/nm;
.super Lcom/google/android/gms/internal/my;


# static fields
.field static d:Z

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/reflect/Method;

.field private static j:Ljava/lang/reflect/Method;

.field private static k:Ljava/lang/reflect/Method;

.field private static l:Ljava/lang/reflect/Method;

.field private static m:Ljava/lang/reflect/Method;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:J

.field private static r:Lcom/google/android/gms/internal/sf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/gms/internal/nm;->q:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/nm;->d:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/rs;Lcom/google/android/gms/internal/rw;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/my;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/rs;Lcom/google/android/gms/internal/rw;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/google/android/gms/internal/rs;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/nm;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/nm;->o:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/nm;->h:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/no;

    invoke-direct {v0}, Lcom/google/android/gms/internal/no;-><init>()V

    throw v0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/nm;->h:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/no;

    invoke-direct {v0}, Lcom/google/android/gms/internal/no;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/no;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/rs;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/nm;->o:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/no;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/nm;->r:Lcom/google/android/gms/internal/sf;

    invoke-virtual {v1, p0, p1}, Lcom/google/android/gms/internal/sf;->a([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/sg; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/no;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/no;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Landroid/util/DisplayMetrics;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/nm;->i:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/no;

    invoke-direct {v0}, Lcom/google/android/gms/internal/no;-><init>()V

    throw v0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/nm;->i:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/no;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/no;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static declared-synchronized a(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/rs;)V
    .locals 16

    const-class v3, Lcom/google/android/gms/internal/nm;

    monitor-enter v3

    :try_start_0
    sget-boolean v1, Lcom/google/android/gms/internal/nm;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/sf;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/sf;-><init>(Lcom/google/android/gms/internal/rs;)V

    sput-object v1, Lcom/google/android/gms/internal/nm;->r:Lcom/google/android/gms/internal/sf;

    sput-object p0, Lcom/google/android/gms/internal/nm;->n:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/google/android/gms/internal/no; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    sget-object v1, Lcom/google/android/gms/internal/nm;->r:Lcom/google/android/gms/internal/sf;

    const-string v2, "O54kcjTlTxqKUcqu87nOfA38Ly3ePPVmK4qDp+4F/+Y="

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/sf;->a(Ljava/lang/String;)[B

    move-result-object v4

    sget-object v1, Lcom/google/android/gms/internal/nm;->r:Lcom/google/android/gms/internal/sf;

    const-string v2, "llLmUmPnXQ0oBNa1wITMSIM3wa5dH/lMOytqz+NLQad5N5UrVjBa5enY+JAVGF6EwECf6OU84ZP6ljcCsM4Mi9b22UTBd7u4F4Ez2bCpYHTQj7QzdUYe20B0xFYvLJcBXjhb0J/JZsoI96yjEOz7cwqyzQE0VV4vBUJGOCm4EI1cutkV3BIY6mbkFytX0hbKMOJjzs1CCvBvc21K6md4lFj0L9r29c1lRo7qSZ6u7vhjeSpYZg0QD+WqCrMFCxUjQ9K+OF8HllRpKbPG9dUvNbtAbSw6o2v22qZhld5pZzfGXN881RZNoiYWzMpOQTdBmj6/nEIx0xM5UXc0EiSEyd7b9ePQvWvC8ECRwvNywe/G0foLuN4oFET8DdrZGet42HXMTh3wF790M/2MbkR3OpV6oDH3sB/4RHy1ZY4R3OybiQZlFBhofEe0GDe8QwXkCpuJRkmrAavynnUL3WBA81tK8pImiEGcnTwjABUbtHehQxFvAnB4dm0J+vAZ5PYQxoLJ6qu9W4i6sknMGMNheDQPvYradlv5TYs70cT+SWVMzWeeakQFF14FmJR73NCCSfzp3HHJqwuzFJd22+3vuJ9cO8zEP+xI91VGmaQdsqFfPmnu56spj30rXgOxi5SbhDd/6smvM8nGJ6mnAK6Cjbl5VmLlCOiX65DFtfWkz5cS2T5NNCy2OGH2hCeN3lT5j+6REjbDiNq7hRVW5EXLeou1Yg44J2G/a18SGkroSbnSv/DzQApBCoKV3k3upV0zv4zd0UYnMUM07KEid+Xei/xBjZNwo5Hdj8p5b5r6KtQrkPIkF050SYxTOgD4CZvW7cBug57ASS+VisRDCvyFaUwF3t8OVM+BWasNEEm1qpnroew3iI+ffneyenoQF12LRHoTmox4Tjx/DyxSu1ZL2SrTyFr+pZsD06z04GGdxNR0Q0bT6pAozRaojq4ms8yxEwnfkDNYYXLYJN0ZbYmCgzKDN0xmXe2IBZ4LVHWxGngQV8uRsiVHTIHbH4FtfCmXM1x+rSkGtoAAqJiHUy4s798PJDM9YeqACyf6AG7GofhqhvXAJq2edcJzvJPwkMDrDkgj250mE14ozH+T9RcGiPXznSmiflbQZW9qNxGKoEMXUGJwyeolCJs251S51Y4alZbc4lqmZzSoPxr6xdJ57xU6MIFf8ylkm91LNuozyqUPK2u1jxhSmeQxisDxZcGtrop/9pQIqb+m9jjySL9DjV3CJzG3la7PulSfyP4IPbs88dZa9YvzJsVg/WS9p9avJxxH9Z573osl8BR9HRSxYrNHSz5Xz1pxmERZWbACZ8vsKsyEaloMWvfOSZv1riDscbZYMC1Hjkru56O/+S3lWUq3EyDYV4NPFMtohQ1ARiKU6VMIQ9fl2irsQZuPbzQCB6db8uQSjtV1CMDQgR0fR/eN6dYp2ycootr817UraSzQLImqxLx+nwLqyPJk1Q0+42VC+AMKqygz40cBynk4phC3m7POqgfYvzCnUt+VjXG4rEDHvphD/QoagOD2r1egqdFSJplaFkMH3Ux+CldXhNWLSuhz2DhYhXmsBT3Zbqzx1ByNdRMszJHqdyfwIJ+VM17xRk+1JvZoaZMYX9P90R/QsIclCSfPXtU9IiLCylx9nqf1EiQbBof5hyyk28MyusHHeVPHcA8ciuN9B0gTdYrNciZppHFCysJ/4xPWTPrvU4XL7vjU3EB5OZL0n2KCdPThpmO2zIbfmHIVcw0iYfOqirljFwMzeusRXS/enWtnEdMHA4rt235kYvrMJ/WfF5EAFNBEwXD50riuMZApdPtjzeSsBVgbsxx5opOIbE1lj31ijL4ibveRYiBcYnRV+0v6sv0Lv65cnjkBS2hw+ZMtbjOcj4CZ/40HwlIKGpHtOReHOoYLOQ9Cpn4oiJJiCWwvril8vkkNm+QMl3Af7A//J4WCoW4azfc5b2npJE6cuc9ago/JqLb6PXe3nFT++VEG307klhDSarybiBfj1LhVlZwVrKJ/kxIC4jEC/8RJzvk4TNVaFnWGlPWKuIrw0XYK9e5+qeBixDjgrJgUcm7jDsb5WKiu4ptGAw5JFuGcZRHGxr+unP2ehGNyspvIlYkdta7QkcriH1scjYZH6MsNdLvKEJYogg4ORZ6KdEdT2Z89WiFTZN3yCriDPOgT49OtWAqKgFLCpBNoGYNP3cZEa3zBHS2HuwW4JLEIwZyHbbodDDs6+d/ny66AKLLfdbcBvhoALlE5w6yaxwAttqxRdfnuQne7FqVf7ctWdBsvoS2TVNBKKaqTi1kj4qL+RK5E2uBRodQRGNtliDADGP2ikCFQ9J+QBWqQvNTOTYZ29IsGIn/IBQeVAwqa3rseY15iYxC66G/zEhV59CVXshs21Q+hq/G+hOwAf8nDuYiH2+G0jFC+iAeN54QxZZqsGm2W0V6xcxC+k7qfr0gSUYuPg9W1fAqmkVhMmTJ3DtIfFre/9jNnrLl27cwYmH3hLC5D1BSCg5KhZPVcpzlcz4NrmgOX0T2Znv5fitdUleGTsCNdVdOLa3NdMrLgcxIog1NTfIXQI6Voj3wAj2uDAlIpzhXgRPnmfAijtboeYGi3jBm/TIQy2IXzNozBmLPv2bhraR5BbyoDwmFVHNfRSo4sOeGnz10UHX7678e0ohCbUdViOE9Vzrd2MEpIpHRKdLQE+i+KUKfiyArpBk+aLgwYx1NGutRspYz9rBHN+f6VLxj7ZD2IO7aLkqHl3HFbaqk+0As9+DTwehjdYErRDijRnrer7zLC4UA3PewVGueWjnXjwgF836sLTvrG0V1rmqwXV8kTquf41rANFDWiGvC5+0bn4WlD8N5Pt4sqRVsAoP4S+Hl1oFA49W8uLwwZRMsteQmfxu3VD37otoZ28abOJpuYPsZtuq5zZ529jwZehIVHplqK1YURZ43yQoSS93++bLE29d+C8fqWpP/uABUZ40TSAu/X+wHjSlO17XHMFzNj7AHFVw3CF2m7c19E3Mk0o1Qj+Uuq4xn1mu85/I5M1QJAyvtP5qG0/y0eUSv+8QheL/N7K23fN3ctW0AGHd55Kdgx43GipzAWQ21caKn+BVDbOjMI8QPB+hUPqsu2WoaJKTHh+IfCHBiCbX58Mjro4KYBJ3NwS1rD8k8PxTTn5M3jC1RQOjglItV103CrWBWgCAvOPaF4wNSLiHFP1AKfWIj6BV9md73kPvrd7sOFyorNMsGh1BDz8okCqckIZwmlqz68cnX650qD12GtwFyuPZcxuEZeo8jj5BwVyWPh6s30C6FqGVbH/qz8ChiBSVzwyyatSribO2zvIaSH2dCVTsXa0Q0Dc929bK90/dTJoPRz9TvDmjV09KRjpPJV7tZrU5dx2accEkviCGnm5GCOlejwXMwVRHeLHyNN5ONNyeBdJGXkv09AaBYdnvVrN4TUF9NUrNa07nJvqqqIBxUjMxDkbPlSOob+4VLsBiDX5XQiG3yM6DwCRdmQHmRjyvQcvp1SHc8NxVKA/Xfw17/AJhwu1m2kE5XGX5Sk87f+bD+/4dQGsgVhtvTjeV4muhpRV8miUXuqJpVTv23zyiwAJSzkEQEKoxrP6Dfd0VVpxMdGVqxuUa2AU8dfUn3+eNAZNgY5WlAhHdIO3jKl44BiGapi2PqF3Fru1E3ZLvqHJoxHY30ajgdyJMuJtA4cCSe6/gp8FxrSD+6xQ7Lv4bBtzvS8opWSBZwIO3q35b61PUVbjd6aJAljiWsXbW92BRL01DBoELDTQAv//2DPw6veEmNcX0cHTBDOdLfg/qzs9lP2U69jVcNhrV9SYadKOYCm1Uvxne7wVhguN+UprtAMqXM3S3g3G3ryPqoNOfCDoTDCZIOJjiCCogGiNFaMj+bfg5wvBA+Iq97I6HHE67QtkX9M3bsSbCvokYDfTlGCJ22QcZLEWy/LnAP4+qzSPS34MKmZE7DPUTkhJc1jIbDWAWaquAZ2n8azTHZubAtwPOHxcuVjDFnrVuobvF3xpCZcLjYIF7DdfakhVmiULdd5cgE4S0e5n18ly4J9RVj6JMJnRUKJQF+uIssfOuzIG/L93MjzsKlGurcWIZRv520GLjbe3snihBGt8V/l6PFyvQqHu3MMOVO2jvEWMBVrlJmUPy/Ck2OFXsejTojx0ku/f8uova5I0H8jSz3X1rLRTSO30b3x8HNt2vpPixyVhaAi6vo5btqzR9h8Bd6AxIpdqlR2d6maNsrJ8zWBfswhbk7Yt/cJIRSv3kk/IPM78RhfCQgYNIczBMsTOu/E5FNHTbMLVnAUe3F2R56+Wh2W1fbxaHGPgpFqUwb8JY0oqCVcGuonvrrX/DnWea1eY8tiOIjNabZWkHc8W1NOkqCtJilEaoEemd6SiFLVyY18YW68PFf4EyRksQQDhmOo/i0P00ikkmA3t9E2gDDquk/3lkGkx3fX6ZaDSimIZhAnh0RsvJreogG68M0SwAvvCjoDfBhguuwQJWUsI8Iy2kIOEC8S/fIDZraq60Vh4JLQhQZ2cwmdOv2UGJW48N+mva9x89j2FDKE6UFnnyxZ7r6FVUR7LRyxXQf5EahnpnfaFF/DJruPe6hCdFsoMMm5j8LDcGm7A0rxbOJqi3nxHy+63CM8bAGRHmRV+S9hn40vPwJkCIOHGPJINebqAjDZemNg21dxGq+FJH11yM4r1HTbYDVoj1FWtMIBWY7xBH53wJSrLmm1jwiM8pYmpI03Sx3oCNKDJMTcOOZuHK5Up3pyWhmRm0oLMTWmU7dc5t7boT83+rxEhJCCzN9/45w5v5JVT1BIL09LxHG7cMQbqqJ9QW09Uf8tNFtc0bMbmutC9G9KPe6MBHfl8UOL1cwx79AyFRK8C9sBqZc9gY7KSRrEbdF3UMcQTkE0EuYGlb4yAUDBNDvKquAjm5tkPWWVT1enjyKMVLFvMDQEjRgKgE2d2iXO006Yx5589sviGWHHe+bqkRliNc6McJnY+oLTCRlWp5Yi60j2MFS385X9on6Gyg6HwswX6lewCIea0mZICsRNxoD80f1j5S7i+HUBnfSU0HEPT59lyP5x0PxroHlVZRv/fIjTBTDdtULw6ZNQeLauPGtx490ymBuLiztFJ0h2W8ScDH3KStOylPuO1//nqtrYVv1LWeXwdY8/oHKMc6wOyjy9qw5QW4w7DSCzXXlRLQFQBI521Y4Qn8YOeDHsJRIWu4Lvb7ChKVDMznmbHgDB2uj93wPbB3WnUyrbGxTZJcZcdyvUHcTy74lq8hfIPjuk2OSzu6LO5D5FZ4Vy9JTlTJJHfc3odRhDSlmrc1vKM5HwWaZEtdj6tA+GVa9WHJIKz6EGJKmYhBuDCiTh/hJU8gtGiW0IYp3fzNrGQwfJktZ/LwsgPxZN2lJS4/BQlUVb+squnYd6NNmf7S6Kx85s0Xt57ERn+pA18lHHnCvQwMHzZymGfpJA2HX+jDCzM7bT1vPElSyS5YsjzKsiRIzEVLOecNTZiARDk8lmV2IppjwXRn2YjjXQ/gn/4O2MKiBhRXvSgfc15g8i7vGKjJ1pWJXsFDh5XWGk4YNGrF9HqRPY1K3m6UL1CGZOww=="

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/sf;->a([BLjava/lang/String;)[B

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "dex"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/no;

    invoke-direct {v1}, Lcom/google/android/gms/internal/no;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/google/android/gms/internal/sg; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/google/android/gms/internal/no; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_0
    move-exception v1

    :try_start_3
    new-instance v2, Lcom/google/android/gms/internal/no;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/google/android/gms/internal/no; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_1
    move-exception v1

    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    :cond_1
    move-object v2, v1

    :try_start_4
    const-string v1, "ads"

    const-string v6, ".jar"

    invoke-static {v1, v6, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v7, 0x0

    array-length v8, v5

    invoke-virtual {v1, v5, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/google/android/gms/internal/sg; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lcom/google/android/gms/internal/no; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    new-instance v1, Ldalvik/system/DexClassLoader;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v1, v5, v7, v8, v9}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v5, "PByw/0vtR5uK0KBqBPIl0QFsO1qZRtKLz+9dVGFk6qbQzuGLPPMivNmw0g7kFFxX"

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/nm;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v7, "wstPOvuLdyIwTj0Ta637xVPtTZtDTlmqcMyfQbF0s3wFHRjTGGYBfxyKLn5weDdS"

    invoke-static {v4, v7}, Lcom/google/android/gms/internal/nm;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "PkSCMx72ICaE7SrYlH2ZBDrsywLErzORzaxxFPC8UafKY1Myt/oD1rbLK3oniYUF"

    invoke-static {v4, v8}, Lcom/google/android/gms/internal/nm;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "cwHPtLsLppnm2YXs/s3lMo8BGVhfl0UvcxYXrxQuD/qheVJldyfeDOpHnQbrxFtL"

    invoke-static {v4, v9}, Lcom/google/android/gms/internal/nm;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-string v10, "zi0AD0kUzFMkFbiPDeGDw1MjQeCtU7gqLpzNHyXJ5enYVE6q4cYIStkGqkTi0Yrl"

    invoke-static {v4, v10}, Lcom/google/android/gms/internal/nm;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v11, "mFbvitTNnP9K68M6MYdYrjGuM71u+Q91IGGAuFhq/VFIPQLpmUsUnK4Eaf10earu"

    invoke-static {v4, v11}, Lcom/google/android/gms/internal/nm;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-string v12, "+RbCrlQCkpJZoONHniNFDqCoORMdN/wUFX983sowv9UVW1bhIxYffDsNlFsT7h6o"

    invoke-static {v4, v12}, Lcom/google/android/gms/internal/nm;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const-string v13, "zMkdGWlucYXKXTmqNQzzP6ORyREy1kFVggSUQuvgZngGzZzsdZbjxtpc3Dt1Rlin"

    invoke-static {v4, v13}, Lcom/google/android/gms/internal/nm;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const-string v14, "iGPMNBo5oJsjL3No4KAETYD9U2SXEGx5TaDKjld+4TEvT/o8d/miAmbQAJxxh/IE"

    invoke-static {v4, v14}, Lcom/google/android/gms/internal/nm;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v14, "UaAE4SV4I/MBBKXsI8ExEzL/WxZMzc3KiqH3+b+YaMU="

    invoke-static {v4, v14}, Lcom/google/android/gms/internal/nm;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v5, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/internal/nm;->e:Ljava/lang/reflect/Method;

    const-string v5, "D9Ry5St/Yr2CMndj9hzAlVP7FsM9JegfqWAh/ADB46A="

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/nm;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v7, v5, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/internal/nm;->f:Ljava/lang/reflect/Method;

    const-string v5, "09Ti63J41rgtFD8T/ImyAoNQor+MaIAilSBvCRXYHJ0="

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/nm;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v8, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/internal/nm;->g:Ljava/lang/reflect/Method;

    const-string v5, "D6XzQFqjp8SIr+tFNqjCfHeas/2dnf8rxdslH92hAHI="

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/nm;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v14, Landroid/content/Context;

    aput-object v14, v7, v8

    invoke-virtual {v9, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/internal/nm;->h:Ljava/lang/reflect/Method;

    const-string v5, "hpX1gQJv5j3MZiPVYuWqHR+M3mTRXlEryoUH/Xw+IoU="

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/nm;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/view/MotionEvent;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/util/DisplayMetrics;

    aput-object v9, v7, v8

    invoke-virtual {v10, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/internal/nm;->i:Ljava/lang/reflect/Method;

    const-string v5, "TFb9lhkFeXXTaRyRQXUlEzOHtR6OTydz5Qc8O77D0lc="

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/nm;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v11, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/internal/nm;->j:Ljava/lang/reflect/Method;

    const-string v5, "OPg6bR9G1u0ckVEFFWKwKLkYqtBSrVUkrOfFvx/4EA8="

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/nm;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v12, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/internal/nm;->k:Ljava/lang/reflect/Method;

    const-string v5, "X5u8UmaO5cokx78YK5zKDK7QmLrPrIWar/uTfrkV73w="

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/nm;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v13, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/internal/nm;->l:Ljava/lang/reflect/Method;

    const-string v5, "hKO5tSNjTH8/sQ95ltvEBYG22F/q+m+BXECm134zCu8="

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/nm;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v5, v7

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/nm;->m:Ljava/lang/reflect/Method;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    new-instance v4, Ljava/io/File;

    const-string v5, ".jar"

    const-string v6, ".dex"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/google/android/gms/internal/sg; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lcom/google/android/gms/internal/no; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_2

    :try_start_7
    invoke-static {}, Lcom/google/android/gms/internal/nm;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/gms/internal/nm;->q:J

    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/gms/internal/nm;->d:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Lcom/google/android/gms/internal/no; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    :try_start_8
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    new-instance v5, Ljava/io/File;

    const-string v6, ".jar"

    const-string v7, ".dex"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lcom/google/android/gms/internal/sg; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Lcom/google/android/gms/internal/no; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_3
    move-exception v1

    :try_start_9
    new-instance v2, Lcom/google/android/gms/internal/no;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Lcom/google/android/gms/internal/no; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_9 .. :try_end_9} :catch_2

    :catchall_1
    move-exception v1

    monitor-exit v3

    throw v1

    :catch_4
    move-exception v1

    :try_start_a
    new-instance v2, Lcom/google/android/gms/internal/no;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_5
    move-exception v1

    new-instance v2, Lcom/google/android/gms/internal/no;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_6
    move-exception v1

    new-instance v2, Lcom/google/android/gms/internal/no;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_7
    move-exception v1

    new-instance v2, Lcom/google/android/gms/internal/no;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Lcom/google/android/gms/internal/no; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a .. :try_end_a} :catch_2
.end method

.method private static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/nm;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/no;

    invoke-direct {v0}, Lcom/google/android/gms/internal/no;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/nm;->n:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Lcom/google/android/gms/internal/rs;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/nm;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/nm;->p:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/nm;->k:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/no;

    invoke-direct {v0}, Lcom/google/android/gms/internal/no;-><init>()V

    throw v0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/nm;->k:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/no;

    invoke-direct {v0}, Lcom/google/android/gms/internal/no;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/no;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/rs;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/nm;->p:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/no;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static c()Ljava/lang/Long;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/nm;->e:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/no;

    invoke-direct {v0}, Lcom/google/android/gms/internal/no;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/nm;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/no;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/no;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/nm;->j:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/no;

    invoke-direct {v0}, Lcom/google/android/gms/internal/no;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/nm;->j:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/no;

    invoke-direct {v0}, Lcom/google/android/gms/internal/no;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/no;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/no;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    return-object v0
.end method

.method private static d()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/nm;->g:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/no;

    invoke-direct {v0}, Lcom/google/android/gms/internal/no;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/nm;->g:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/no;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/no;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static d(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/nm;->l:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/no;

    invoke-direct {v0}, Lcom/google/android/gms/internal/no;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/nm;->l:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/no;

    invoke-direct {v0}, Lcom/google/android/gms/internal/no;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/no;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/no;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    return-object v0
.end method

.method private static e()Ljava/lang/Long;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/nm;->f:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/no;

    invoke-direct {v0}, Lcom/google/android/gms/internal/no;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/nm;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/no;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/no;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static e(Landroid/content/Context;)[I
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/nm;->m:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/no;

    invoke-direct {v0}, Lcom/google/android/gms/internal/no;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/nm;->m:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/no;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/no;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected final a()V
    .locals 5

    const/4 v0, 0x2

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/nm;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/nm;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/no; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/nm;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/nm;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/no; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const/16 v0, 0x19

    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/nm;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/nm;->a(IJ)V
    :try_end_2
    .catch Lcom/google/android/gms/internal/no; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/nm;->a:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/google/android/gms/internal/nm;->b:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/nm;->a(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;

    move-result-object v1

    const/16 v2, 0xe

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/android/gms/internal/nm;->a(IJ)V

    const/16 v2, 0xf

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/android/gms/internal/nm;->a(IJ)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    const/16 v2, 0x10

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/internal/nm;->a(IJ)V
    :try_end_3
    .catch Lcom/google/android/gms/internal/no; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method protected b(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/nm;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/nm;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/no; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/nm;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/nm;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/no; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/nm;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 v2, 0x19

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/internal/nm;->a(IJ)V

    sget-wide v2, Lcom/google/android/gms/internal/nm;->q:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/16 v2, 0x11

    sget-wide v3, Lcom/google/android/gms/internal/nm;->q:J

    sub-long/2addr v0, v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/internal/nm;->a(IJ)V

    const/16 v0, 0x17

    sget-wide v1, Lcom/google/android/gms/internal/nm;->q:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/nm;->a(IJ)V
    :try_end_2
    .catch Lcom/google/android/gms/internal/no; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_2
    :try_start_3
    invoke-static {p1}, Lcom/google/android/gms/internal/nm;->d(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    const/16 v2, 0x1f

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/android/gms/internal/nm;->a(IJ)V

    const/16 v2, 0x20

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/internal/nm;->a(IJ)V
    :try_end_3
    .catch Lcom/google/android/gms/internal/no; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    const/16 v0, 0x21

    :try_start_4
    invoke-static {}, Lcom/google/android/gms/internal/nm;->e()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/nm;->a(IJ)V
    :try_end_4
    .catch Lcom/google/android/gms/internal/no; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    const/16 v0, 0x1b

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/nm;->c:Lcom/google/android/gms/internal/rs;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/nm;->a(Landroid/content/Context;Lcom/google/android/gms/internal/rs;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/nm;->a(ILjava/lang/String;)V
    :try_end_5
    .catch Lcom/google/android/gms/internal/no; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    const/16 v0, 0x1d

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/nm;->c:Lcom/google/android/gms/internal/rs;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/nm;->b(Landroid/content/Context;Lcom/google/android/gms/internal/rs;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/nm;->a(ILjava/lang/String;)V
    :try_end_6
    .catch Lcom/google/android/gms/internal/no; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    :try_start_7
    invoke-static {p1}, Lcom/google/android/gms/internal/nm;->e(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/nm;->a(IJ)V

    const/4 v1, 0x6

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/nm;->a(IJ)V
    :try_end_7
    .catch Lcom/google/android/gms/internal/no; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto/16 :goto_1

    :catch_8
    move-exception v0

    goto/16 :goto_0
.end method
