.class public Lcom/anythink/core/common/u;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/anythink/core/common/u;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/f/am;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/core/common/u;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a()Lcom/anythink/core/common/u;
    .locals 2

    .line 31
    sget-object v0, Lcom/anythink/core/common/u;->a:Lcom/anythink/core/common/u;

    if-nez v0, :cond_1

    .line 32
    const-class v0, Lcom/anythink/core/common/u;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/anythink/core/common/u;->a:Lcom/anythink/core/common/u;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/anythink/core/common/u;

    invoke-direct {v1}, Lcom/anythink/core/common/u;-><init>()V

    sput-object v1, Lcom/anythink/core/common/u;->a:Lcom/anythink/core/common/u;

    .line 35
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcom/anythink/core/common/u;->a:Lcom/anythink/core/common/u;

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    monitor-enter p0

    .line 90
    :try_start_0
    invoke-direct {p0, p1}, Lcom/anythink/core/common/u;->g(Ljava/lang/String;)Lcom/anythink/core/common/f/am;

    move-result-object p1

    .line 91
    invoke-virtual {p1, p2, p3}, Lcom/anythink/core/common/f/am;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized g(Ljava/lang/String;)Lcom/anythink/core/common/f/am;
    .locals 2

    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/u;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f/am;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/anythink/core/common/f/am;

    invoke-direct {v0}, Lcom/anythink/core/common/f/am;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/anythink/core/common/u;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/anythink/core/common/u;->g(Ljava/lang/String;)Lcom/anythink/core/common/f/am;

    move-result-object p1

    .line 56
    invoke-virtual {p1, p2}, Lcom/anythink/core/common/f/am;->a(Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/anythink/core/common/u;->g(Ljava/lang/String;)Lcom/anythink/core/common/f/am;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/anythink/core/common/f/am;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/anythink/core/common/u;->g(Ljava/lang/String;)Lcom/anythink/core/common/f/am;

    move-result-object p1

    .line 146
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/f/am;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 140
    invoke-direct {p0, p1}, Lcom/anythink/core/common/u;->g(Ljava/lang/String;)Lcom/anythink/core/common/f/am;

    move-result-object p1

    .line 141
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/anythink/core/common/f/am;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/api/ATAdInfo;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/anythink/core/common/u;->g(Ljava/lang/String;)Lcom/anythink/core/common/f/am;

    move-result-object p1

    .line 96
    invoke-virtual {p1, p2}, Lcom/anythink/core/common/f/am;->a(Lcom/anythink/core/api/ATAdInfo;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/anythink/core/common/u;->g(Ljava/lang/String;)Lcom/anythink/core/common/f/am;

    move-result-object p1

    .line 61
    invoke-virtual {p1, p2, p3}, Lcom/anythink/core/common/f/am;->a(Ljava/lang/String;Lcom/anythink/core/common/f;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/anythink/core/common/u;->g(Ljava/lang/String;)Lcom/anythink/core/common/f/am;

    move-result-object p1

    .line 111
    invoke-virtual {p1, p2, p3}, Lcom/anythink/core/common/f/am;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 69
    :try_start_0
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 75
    :catchall_0
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/anythink/core/common/u;->g(Ljava/lang/String;)Lcom/anythink/core/common/f/am;

    move-result-object p1

    .line 76
    invoke-virtual {p1, v0}, Lcom/anythink/core/common/f/am;->a(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lcom/anythink/core/common/u;->g(Ljava/lang/String;)Lcom/anythink/core/common/f/am;

    move-result-object p1

    .line 126
    invoke-virtual {p1, p2}, Lcom/anythink/core/common/f/am;->a(Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Lcom/anythink/core/common/u;->g(Ljava/lang/String;)Lcom/anythink/core/common/f/am;

    move-result-object p1

    .line 131
    invoke-virtual {p1, p2}, Lcom/anythink/core/common/f/am;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/anythink/core/common/u;->g(Ljava/lang/String;)Lcom/anythink/core/common/f/am;

    move-result-object p1

    .line 116
    invoke-virtual {p1, p2}, Lcom/anythink/core/common/f/am;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 80
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 81
    invoke-direct {p0, p1}, Lcom/anythink/core/common/u;->g(Ljava/lang/String;)Lcom/anythink/core/common/f/am;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/anythink/core/common/f/am;->b()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 84
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c(Ljava/lang/String;)Lcom/anythink/core/common/f/e;
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/anythink/core/common/u;->g(Ljava/lang/String;)Lcom/anythink/core/common/f/am;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lcom/anythink/core/common/f/am;->c()Lcom/anythink/core/common/f/e;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    .line 105
    invoke-direct {p0, p1}, Lcom/anythink/core/common/u;->g(Ljava/lang/String;)Lcom/anythink/core/common/f/am;

    move-result-object p1

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p1, v0}, Lcom/anythink/core/common/f/am;->a(Lcom/anythink/core/api/ATAdInfo;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/anythink/core/common/u;->g(Ljava/lang/String;)Lcom/anythink/core/common/f/am;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lcom/anythink/core/common/f/am;->d()Z

    move-result p1

    return p1
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/anythink/core/common/u;->g(Ljava/lang/String;)Lcom/anythink/core/common/f/am;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Lcom/anythink/core/common/f/am;->e()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
