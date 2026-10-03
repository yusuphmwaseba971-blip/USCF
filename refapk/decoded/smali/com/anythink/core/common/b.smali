.class public Lcom/anythink/core/common/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/b$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "1"

.field private static volatile c:Lcom/anythink/core/common/b;


# instance fields
.field b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/b$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a()Lcom/anythink/core/common/b;
    .locals 2

    .line 30
    sget-object v0, Lcom/anythink/core/common/b;->c:Lcom/anythink/core/common/b;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcom/anythink/core/common/b;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/anythink/core/common/b;->c:Lcom/anythink/core/common/b;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/anythink/core/common/b;

    invoke-direct {v1}, Lcom/anythink/core/common/b;-><init>()V

    sput-object v1, Lcom/anythink/core/common/b;->c:Lcom/anythink/core/common/b;

    .line 34
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcom/anythink/core/common/b;->c:Lcom/anythink/core/common/b;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Lcom/anythink/core/common/b$a;)V
    .locals 2

    monitor-enter p0

    .line 40
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/b$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/core/common/b$1;-><init>(Lcom/anythink/core/common/b;Ljava/lang/String;Lcom/anythink/core/common/b$a;)V

    const/4 p1, 0x2

    const/4 p2, 0x1

    .line 1137
    invoke-virtual {v0, v1, p1, p2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 41
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    .line 77
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 78
    monitor-exit p0

    return-void

    .line 80
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/b$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/core/common/b$3;-><init>(Lcom/anythink/core/common/b;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x2

    const/4 p2, 0x1

    .line 3137
    invoke-virtual {v0, v1, p1, p2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;Lcom/anythink/core/common/b$a;)V
    .locals 2

    monitor-enter p0

    .line 60
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/b$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/core/common/b$2;-><init>(Lcom/anythink/core/common/b;Ljava/lang/String;Lcom/anythink/core/common/b$a;)V

    const/4 p1, 0x2

    const/4 p2, 0x1

    .line 2137
    invoke-virtual {v0, v1, p1, p2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 61
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
