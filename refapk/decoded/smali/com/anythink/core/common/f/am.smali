.class public final Lcom/anythink/core/common/f/am;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/Object;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/anythink/core/common/f/e;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/f;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcom/anythink/core/common/f/am;->g:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/f/am;->a:Ljava/lang/Object;

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/core/common/f/am;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/anythink/core/common/f;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/anythink/core/common/f/am;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/f;

    return-object p1
.end method

.method public final a()Ljava/lang/Object;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/anythink/core/common/f/am;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 63
    new-instance v0, Lcom/anythink/core/common/f/e;

    invoke-virtual {p1}, Lcom/anythink/core/api/ATAdInfo;->getAdsourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/core/api/ATAdInfo;->getShowId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/anythink/core/api/ATAdInfo;->getNetworkFirmId()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/anythink/core/common/f/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/anythink/core/common/f/am;->c:Lcom/anythink/core/common/f/e;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/anythink/core/common/f/am;->c:Lcom/anythink/core/common/f/e;

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/common/f;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/anythink/core/common/f/am;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/anythink/core/common/f/am;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/core/common/f/am;->b:Ljava/util/Map;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/f/am;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/f/am;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/core/common/f/am;->d:Ljava/util/Map;

    .line 81
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-object v0, p0, Lcom/anythink/core/common/f/am;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 81
    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/anythink/core/common/f/am;->b:Ljava/util/Map;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/anythink/core/common/f/am;->f:Z

    return-void
.end method

.method public final a([Ljava/lang/Object;)V
    .locals 0

    .line 98
    invoke-static {p1}, Lcom/anythink/core/common/o/i;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/f/am;->g:Ljava/lang/String;

    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/anythink/core/common/f/am;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 73
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/anythink/core/common/f/am;->b:Ljava/util/Map;

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/anythink/core/common/f/am;->h:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/core/common/f/am;->h:Ljava/util/Map;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/f/am;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c()Lcom/anythink/core/common/f/e;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/anythink/core/common/f/am;->c:Lcom/anythink/core/common/f/e;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/anythink/core/common/f/am;->h:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/anythink/core/common/f/am;->f:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/anythink/core/common/f/am;->g:Ljava/lang/String;

    return-object v0
.end method
