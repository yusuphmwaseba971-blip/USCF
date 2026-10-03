.class public Lcom/anythink/core/common/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/g$a;
    }
.end annotation


# instance fields
.field A:D

.field protected B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/p/d;",
            ">;"
        }
    .end annotation
.end field

.field C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation
.end field

.field protected D:Lcom/anythink/core/common/m/b;

.field protected E:Lcom/anythink/core/common/m/b;

.field F:Lcom/anythink/core/common/p/i;

.field G:Lcom/anythink/core/common/p/f;

.field H:Lcom/anythink/core/common/a/b$a;

.field I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/api/ATBaseAdAdapter;",
            ">;"
        }
    .end annotation
.end field

.field protected J:Lcom/anythink/core/common/m/b;

.field K:Lcom/anythink/core/common/f/au;

.field L:D

.field M:Z

.field N:Lcom/anythink/core/common/f/au;

.field O:Z

.field private final P:Ljava/lang/String;

.field protected a:Landroid/content/Context;

.field protected b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected c:I

.field protected d:Ljava/lang/String;

.field protected e:Lcom/anythink/core/common/f/az;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/anythink/core/common/f/h;

.field protected j:Lcom/anythink/core/common/f/v;

.field protected k:Lcom/anythink/core/common/b/b;

.field l:Z

.field m:Z

.field protected n:Z

.field o:Z

.field p:Z

.field q:Z

.field r:Z

.field s:Ljava/lang/String;

.field t:Lcom/anythink/core/api/AdError;

.field u:J

.field v:I

.field w:I

.field x:Ljava/lang/Object;

.field y:D

.field z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/g;->P:Ljava/lang/String;

    const-string v0, ""

    .line 75
    iput-object v0, p0, Lcom/anythink/core/common/g;->d:Ljava/lang/String;

    const/4 v1, 0x0

    .line 84
    iput-boolean v1, p0, Lcom/anythink/core/common/g;->l:Z

    .line 87
    iput-boolean v1, p0, Lcom/anythink/core/common/g;->m:Z

    .line 88
    iput-boolean v1, p0, Lcom/anythink/core/common/g;->n:Z

    .line 91
    iput-boolean v1, p0, Lcom/anythink/core/common/g;->q:Z

    .line 92
    iput-boolean v1, p0, Lcom/anythink/core/common/g;->r:Z

    .line 105
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/anythink/core/common/g;->x:Ljava/lang/Object;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 110
    iput-wide v2, p0, Lcom/anythink/core/common/g;->y:D

    .line 116
    iput-wide v2, p0, Lcom/anythink/core/common/g;->A:D

    const/4 v2, 0x0

    .line 125
    iput-object v2, p0, Lcom/anythink/core/common/g;->D:Lcom/anythink/core/common/m/b;

    .line 142
    new-instance v2, Lcom/anythink/core/common/g$1;

    invoke-direct {v2, p0}, Lcom/anythink/core/common/g$1;-><init>(Lcom/anythink/core/common/g;)V

    iput-object v2, p0, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/m/b;

    .line 1893
    iput-boolean v1, p0, Lcom/anythink/core/common/g;->M:Z

    .line 2069
    iput-boolean v1, p0, Lcom/anythink/core/common/g;->O:Z

    .line 221
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/anythink/core/common/g;->b:Ljava/lang/ref/WeakReference;

    .line 222
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    const-string p1, "4001"

    .line 224
    invoke-static {p1, v0, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/g;->t:Lcom/anythink/core/api/AdError;

    .line 226
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/anythink/core/common/g;->B:Ljava/util/Map;

    .line 229
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/g;->C:Ljava/util/List;

    .line 232
    new-instance p1, Lcom/anythink/core/common/p/i;

    invoke-direct {p1}, Lcom/anythink/core/common/p/i;-><init>()V

    iput-object p1, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/p/i;

    .line 234
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/anythink/core/common/g;->I:Ljava/util/List;

    return-void
.end method

.method private A()V
    .locals 4

    .line 1754
    invoke-direct {p0}, Lcom/anythink/core/common/g;->F()Lcom/anythink/core/common/f/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1758
    invoke-virtual {v0}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/f/au;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1759
    :goto_0
    invoke-static {v0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/f/au;DZ)V

    const/16 v0, 0x9

    .line 1761
    invoke-virtual {p0, v0}, Lcom/anythink/core/common/g;->a(I)V

    return-void

    .line 1764
    :cond_1
    invoke-direct {p0}, Lcom/anythink/core/common/g;->w()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1766
    invoke-direct {p0}, Lcom/anythink/core/common/g;->z()V

    :cond_2
    return-void
.end method

.method private declared-synchronized B()Z
    .locals 2

    monitor-enter p0

    .line 1792
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hasFinishAllRequest:\n isFinishBidding: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/anythink/core/common/g;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n requestWaitingPool: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    .line 1794
    invoke-virtual {v1}, Lcom/anythink/core/common/p/f;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n requestingPool: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    .line 1795
    invoke-virtual {v1}, Lcom/anythink/core/common/p/f;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n defaultRequestWaitingPool: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    .line 1796
    invoke-virtual {v1}, Lcom/anythink/core/common/p/f;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n showCapWaitingPool: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    .line 1797
    invoke-virtual {v1}, Lcom/anythink/core/common/p/f;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1800
    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/f;->v()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized C()Z
    .locals 1

    monitor-enter p0

    .line 1804
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/f;->c()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/f;->e()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private D()V
    .locals 2

    .line 1907
    iget-object v0, p0, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/m/b;

    if-eqz v0, :cond_0

    .line 1909
    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/m/b;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/m/a;->b(Lcom/anythink/core/common/m/b;)V

    :cond_0
    return-void
.end method

.method private E()V
    .locals 7

    .line 1931
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "placementId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";result_callback:success;loadType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/f/v;

    iget v1, v1, Lcom/anythink/core/common/f/v;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mediation"

    invoke-static {v1, v0}, Lcom/anythink/core/common/o/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    iget-object v0, p0, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/common/v;->a(Landroid/content/Context;)Lcom/anythink/core/common/v;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/common/v;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1936
    iget-object v0, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/f/v;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/anythink/core/common/f/v;->f:Lcom/anythink/core/common/n;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 1940
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    if-eqz v1, :cond_0

    .line 1941
    invoke-virtual {v1}, Lcom/anythink/core/common/f/az;->a()Lcom/anythink/core/d/e;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1944
    :try_start_1
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v2

    iget-object v4, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {v6}, Lcom/anythink/core/common/f/az;->a()Lcom/anythink/core/d/e;

    move-result-object v6

    invoke-virtual {v6}, Lcom/anythink/core/d/e;->ag()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1946
    iget-object v2, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/f/h;

    invoke-static {v1, v2}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/d/e;Lcom/anythink/core/common/f/h;)V

    .line 1947
    iget-object v2, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/f/h;

    invoke-static {v1, v2}, Lcom/anythink/core/common/f;->b(Lcom/anythink/core/d/e;Lcom/anythink/core/common/f/h;)V
    :try_end_1
    .catch Lcom/anythink/core/common/f/g; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1951
    :try_start_2
    iget-object v2, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/f/v;

    iget-object v2, v2, Lcom/anythink/core/common/f/v;->f:Lcom/anythink/core/common/n;

    iget-object v4, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/f/v;

    iget-object v5, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    iget-object v1, v1, Lcom/anythink/core/common/f/g;->a:Lcom/anythink/core/api/AdError;

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/anythink/core/common/n;->a(ILcom/anythink/core/common/f/v;Lcom/anythink/core/common/f/az;Lcom/anythink/core/api/AdError;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1957
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 1961
    iget-object v0, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/f/v;

    iget-object v0, v0, Lcom/anythink/core/common/f/v;->f:Lcom/anythink/core/common/n;

    iget-boolean v1, p0, Lcom/anythink/core/common/g;->z:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    iget-object v1, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/f/v;

    iget-object v2, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {v0, v3, v1, v2}, Lcom/anythink/core/common/n;->a(ILcom/anythink/core/common/f/v;Lcom/anythink/core/common/f/az;)V

    .line 1963
    :cond_2
    iget-object v0, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/f/v;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/anythink/core/common/f/v;->f:Lcom/anythink/core/common/n;

    .line 1966
    :cond_3
    invoke-static {}, Lcom/anythink/core/c/b;->a()Lcom/anythink/core/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v3}, Lcom/anythink/core/common/p/f;->b()Lcom/anythink/core/common/f/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/f/p;->a()Lcom/anythink/core/common/f/au;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/c/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/au;)V

    return-void
.end method

.method private F()Lcom/anythink/core/common/f/b;
    .locals 3

    .line 2092
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/core/common/f/b;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2096
    :cond_0
    iget-object v1, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/a/b$a;

    if-eqz v1, :cond_1

    .line 2097
    invoke-virtual {v1}, Lcom/anythink/core/common/a/b$a;->a()Lcom/anythink/core/common/f/b;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private G()V
    .locals 3

    .line 2167
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2170
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Ljava/util/List;

    monitor-enter v0

    .line 2171
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/g;->I:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2172
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2173
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/api/ATBaseAdAdapter;

    .line 2174
    invoke-virtual {v2}, Lcom/anythink/core/api/ATBaseAdAdapter;->destory()V

    goto :goto_0

    .line 2176
    :cond_1
    iget-object v1, p0, Lcom/anythink/core/common/g;->I:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2177
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(ILjava/util/List;Lcom/anythink/core/common/i$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;",
            "Lcom/anythink/core/common/i$a;",
            ")V"
        }
    .end annotation

    .line 1600
    iget-object v0, p0, Lcom/anythink/core/common/g;->K:Lcom/anythink/core/common/f/au;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/core/common/g;->C:Ljava/util/List;

    invoke-static {v0}, Lcom/anythink/core/common/o/v;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1602
    :goto_1
    new-instance v1, Lcom/anythink/core/common/f/a;

    invoke-direct {v1}, Lcom/anythink/core/common/f/a;-><init>()V

    .line 1603
    iget-object v2, p0, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    iput-object v2, v1, Lcom/anythink/core/common/f/a;->b:Landroid/content/Context;

    .line 1604
    iget-object v2, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/f/v;

    iput-object v2, v1, Lcom/anythink/core/common/f/a;->c:Lcom/anythink/core/common/f/v;

    .line 1605
    iget-object v2, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    iput-object v2, v1, Lcom/anythink/core/common/f/a;->d:Ljava/lang/String;

    .line 1606
    iget-object v2, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    iput-object v2, v1, Lcom/anythink/core/common/f/a;->e:Ljava/lang/String;

    .line 1607
    iget-object v2, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/az;->a()Lcom/anythink/core/d/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/d/e;->ag()I

    move-result v2

    iput v2, v1, Lcom/anythink/core/common/f/a;->f:I

    .line 1608
    iget-object v2, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/az;->l()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/anythink/core/common/f/a;->g:J

    .line 1609
    iget-object v2, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/az;->m()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/anythink/core/common/f/a;->h:J

    .line 1610
    invoke-static {}, Lcom/anythink/core/common/h;->a()Lcom/anythink/core/common/h;

    iget-object v2, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/az;->a()Lcom/anythink/core/d/e;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/anythink/core/common/h;->a(Lcom/anythink/core/d/e;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/common/f/a;->l:Ljava/lang/String;

    .line 1611
    invoke-static {}, Lcom/anythink/core/common/h;->a()Lcom/anythink/core/common/h;

    iget-object v2, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/az;->a()Lcom/anythink/core/d/e;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/h;->a(Lcom/anythink/core/d/e;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/common/f/a;->o:Ljava/lang/String;

    .line 1612
    invoke-static {}, Lcom/anythink/core/common/h;->a()Lcom/anythink/core/common/h;

    iget-object v2, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/az;->a()Lcom/anythink/core/d/e;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/h;->b(Lcom/anythink/core/d/e;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/common/f/a;->p:Ljava/lang/String;

    .line 1613
    iput-object p2, v1, Lcom/anythink/core/common/f/a;->j:Ljava/util/List;

    .line 1614
    iget-object p2, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    iput-object p2, v1, Lcom/anythink/core/common/f/a;->n:Lcom/anythink/core/common/f/az;

    .line 1615
    iget-object p2, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/f/h;

    iput-object p2, v1, Lcom/anythink/core/common/f/a;->s:Lcom/anythink/core/common/f/h;

    .line 1616
    iget-object p2, p0, Lcom/anythink/core/common/g;->h:Ljava/util/Map;

    iput-object p2, v1, Lcom/anythink/core/common/f/a;->q:Ljava/util/Map;

    .line 1617
    iget-object p2, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {p2}, Lcom/anythink/core/common/p/f;->r()Lcom/anythink/core/common/f/ay;

    move-result-object p2

    iput-object p2, v1, Lcom/anythink/core/common/f/a;->v:Lcom/anythink/core/common/f/ay;

    .line 1618
    iget-object p2, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {p2}, Lcom/anythink/core/common/p/f;->s()Lcom/anythink/core/common/f/ap;

    move-result-object p2

    iput-object p2, v1, Lcom/anythink/core/common/f/a;->w:Lcom/anythink/core/common/f/ap;

    .line 1621
    iget-object p2, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {p2}, Lcom/anythink/core/common/p/f;->t()Lcom/anythink/core/common/f/p;

    move-result-object p2

    iput-object p2, v1, Lcom/anythink/core/common/f/a;->x:Lcom/anythink/core/common/f/p;

    .line 1630
    iput-boolean v0, v1, Lcom/anythink/core/common/f/a;->m:Z

    .line 1631
    iput p1, v1, Lcom/anythink/core/common/f/a;->t:I

    .line 1633
    iget-object p1, p0, Lcom/anythink/core/common/g;->N:Lcom/anythink/core/common/f/au;

    invoke-static {p1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide p1

    iput-wide p1, v1, Lcom/anythink/core/common/f/a;->u:D

    .line 1634
    iget-object p1, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {p1}, Lcom/anythink/core/common/p/f;->a()Lcom/anythink/core/common/p/h;

    move-result-object p1

    iput-object p1, v1, Lcom/anythink/core/common/f/a;->y:Lcom/anythink/core/common/p/h;

    .line 1636
    new-instance p1, Lcom/anythink/core/b/b;

    invoke-direct {p1, v1}, Lcom/anythink/core/b/b;-><init>(Lcom/anythink/core/common/f/a;)V

    .line 1637
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/anythink/core/common/i$b;->a(Z)V

    .line 1639
    new-instance p2, Lcom/anythink/core/common/g$8;

    invoke-direct {p2, p0, p3}, Lcom/anythink/core/common/g$8;-><init>(Lcom/anythink/core/common/g;Lcom/anythink/core/common/i$a;)V

    invoke-interface {p1, p2}, Lcom/anythink/core/common/i$b;->a(Lcom/anythink/core/common/i$a;)V

    return-void
.end method

.method private a(J)V
    .locals 3

    .line 613
    iget-object v0, p0, Lcom/anythink/core/common/g;->E:Lcom/anythink/core/common/m/b;

    if-eqz v0, :cond_0

    .line 615
    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/g;->E:Lcom/anythink/core/common/m/b;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/anythink/core/common/m/a;->a(Lcom/anythink/core/common/m/b;JZ)V

    :cond_0
    return-void
.end method

.method private a(Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2148
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Ljava/util/List;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 2150
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/g;->I:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2152
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private a(Lcom/anythink/core/api/AdError;)V
    .locals 5

    .line 1970
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "placementId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";result_callback:fail;loadType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/f/v;

    iget v1, v1, Lcom/anythink/core/common/f/v;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mediation"

    invoke-static {v1, v0}, Lcom/anythink/core/common/o/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    iget-object v0, p0, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/common/v;->a(Landroid/content/Context;)Lcom/anythink/core/common/v;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/common/v;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1975
    iget-object v0, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/f/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/anythink/core/common/f/v;->f:Lcom/anythink/core/common/n;

    if-eqz v0, :cond_0

    .line 1976
    iget-object v0, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/f/v;

    iget-object v0, v0, Lcom/anythink/core/common/f/v;->f:Lcom/anythink/core/common/n;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/f/v;

    iget-object v4, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {v0, v2, v3, v4, p1}, Lcom/anythink/core/common/n;->a(ILcom/anythink/core/common/f/v;Lcom/anythink/core/common/f/az;Lcom/anythink/core/api/AdError;)V

    .line 1977
    iget-object p1, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/f/v;

    iput-object v1, p1, Lcom/anythink/core/common/f/v;->f:Lcom/anythink/core/common/n;

    .line 1980
    :cond_0
    invoke-static {}, Lcom/anythink/core/c/b;->a()Lcom/anythink/core/c/b;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v1}, Lcom/anythink/core/c/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/au;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/anythink/core/common/f/au;)V
    .locals 1

    monitor-enter p0

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/p/f;->b(Lcom/anythink/core/common/f/au;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Lcom/anythink/core/common/f/au;DZ)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 2119
    :cond_0
    invoke-direct {p0, p1}, Lcom/anythink/core/common/g;->d(Lcom/anythink/core/common/f/au;)V

    .line 2121
    iget-wide v0, p0, Lcom/anythink/core/common/g;->y:D

    cmpl-double v2, p2, v0

    if-lez v2, :cond_2

    .line 2122
    iput-wide p2, p0, Lcom/anythink/core/common/g;->y:D

    cmpl-double v0, p2, p2

    if-nez v0, :cond_1

    if-eqz p4, :cond_1

    .line 2124
    iget-boolean p2, p0, Lcom/anythink/core/common/g;->z:Z

    if-nez p2, :cond_2

    :cond_1
    xor-int/lit8 p2, p4, 0x1

    .line 2125
    iput-boolean p2, p0, Lcom/anythink/core/common/g;->z:Z

    .line 2130
    :cond_2
    invoke-static {p1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide p2

    .line 2131
    iget-wide v0, p0, Lcom/anythink/core/common/g;->A:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double p4, v0, v2

    if-eqz p4, :cond_3

    cmpg-double p4, p2, v0

    if-gez p4, :cond_4

    .line 2132
    :cond_3
    iput-wide p2, p0, Lcom/anythink/core/common/g;->A:D

    .line 2137
    :cond_4
    iget-object p2, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {p2, p1}, Lcom/anythink/core/common/p/f;->e(Lcom/anythink/core/common/f/au;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/anythink/core/common/f/au;I)V
    .locals 1

    monitor-enter p0

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/common/p/f;->b(Lcom/anythink/core/common/f/au;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Lcom/anythink/core/common/f/h;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/f/h;

    return-void
.end method

.method private a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/api/AdError;)V
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/anythink/core/common/g;->k:Lcom/anythink/core/common/b/b;

    if-eqz v0, :cond_0

    .line 902
    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/common/b/b;->b(Lcom/anythink/core/common/f/h;Lcom/anythink/core/api/AdError;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/g;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/anythink/core/common/g;->j()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/g;Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 9148
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Ljava/util/List;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 9150
    :try_start_0
    iget-object p0, p0, Lcom/anythink/core/common/g;->I:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9152
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/g;Lcom/anythink/core/common/f/au;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/anythink/core/common/g;->d(Lcom/anythink/core/common/f/au;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/g;Lcom/anythink/core/common/f/au;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/anythink/core/common/g;->b(Lcom/anythink/core/common/f/au;I)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/g;Lcom/anythink/core/common/f/h;)V
    .locals 0

    .line 8886
    iget-object p0, p0, Lcom/anythink/core/common/g;->k:Lcom/anythink/core/common/b/b;

    if-eqz p0, :cond_0

    .line 8888
    invoke-virtual {p0, p1}, Lcom/anythink/core/common/b/b;->c(Lcom/anythink/core/common/f/h;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/g;Lcom/anythink/core/common/p/d;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/au;)V
    .locals 2

    .line 8783
    new-instance v0, Lcom/anythink/core/common/p/c;

    invoke-direct {v0}, Lcom/anythink/core/common/p/c;-><init>()V

    .line 8784
    iget-object v1, p0, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    iput-object v1, v0, Lcom/anythink/core/common/p/c;->a:Landroid/content/Context;

    .line 8785
    iget-object v1, p0, Lcom/anythink/core/common/g;->b:Ljava/lang/ref/WeakReference;

    iput-object v1, v0, Lcom/anythink/core/common/p/c;->b:Ljava/lang/ref/WeakReference;

    .line 8786
    iget-object v1, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/p/c;->c:Ljava/lang/String;

    .line 8787
    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/p/c;->d:Ljava/lang/String;

    .line 8788
    iget-object v1, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/az;->a()Lcom/anythink/core/d/e;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/p/c;->e:Lcom/anythink/core/d/e;

    .line 8789
    iget-object v1, p0, Lcom/anythink/core/common/g;->h:Ljava/util/Map;

    iput-object v1, v0, Lcom/anythink/core/common/p/c;->f:Ljava/util/Map;

    .line 8790
    iget v1, p0, Lcom/anythink/core/common/g;->v:I

    iput v1, v0, Lcom/anythink/core/common/p/c;->g:I

    .line 8791
    iput-object p2, v0, Lcom/anythink/core/common/p/c;->h:Lcom/anythink/core/common/f/h;

    .line 8792
    iget-object p2, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {p2}, Lcom/anythink/core/common/p/f;->t()Lcom/anythink/core/common/f/p;

    move-result-object p2

    iput-object p2, v0, Lcom/anythink/core/common/p/c;->i:Lcom/anythink/core/common/f/p;

    .line 8794
    invoke-virtual {p1, v0}, Lcom/anythink/core/common/p/d;->a(Lcom/anythink/core/common/p/c;)V

    .line 8796
    new-instance p2, Lcom/anythink/core/common/g$5;

    invoke-direct {p2, p0, p3}, Lcom/anythink/core/common/g$5;-><init>(Lcom/anythink/core/common/g;Lcom/anythink/core/common/f/au;)V

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/p/d;->a(Lcom/anythink/core/common/p/b;)V

    .line 8871
    iget-wide p2, p0, Lcom/anythink/core/common/g;->A:D

    invoke-virtual {p1, p2, p3}, Lcom/anythink/core/common/p/d;->a(D)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/g;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/anythink/core/common/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/g;Ljava/lang/String;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/common/f/au;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/core/common/g;->a(Ljava/lang/String;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/common/f/au;)V

    return-void
.end method

.method private a(Lcom/anythink/core/common/p/d;)V
    .locals 6

    .line 1093
    invoke-virtual {p1}, Lcom/anythink/core/common/p/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1095
    iget-object v1, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    const/4 v2, -0x1

    invoke-virtual {p1}, Lcom/anythink/core/common/p/d;->e()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/p/f;->a(II)V

    .line 1098
    :cond_0
    invoke-direct {p0, p1}, Lcom/anythink/core/common/g;->b(Lcom/anythink/core/common/p/d;)V

    .line 1100
    invoke-direct {p0}, Lcom/anythink/core/common/g;->s()V

    .line 1103
    iget-object v1, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/a/b$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    .line 1104
    invoke-virtual {v1}, Lcom/anythink/core/common/p/f;->b()Lcom/anythink/core/common/f/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/f/p;->a()Lcom/anythink/core/common/f/au;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/a/b$a;

    invoke-virtual {v2}, Lcom/anythink/core/common/a/b$a;->e()Lcom/anythink/core/common/f/au;

    move-result-object v2

    if-eq v1, v2, :cond_1

    iget-wide v1, p0, Lcom/anythink/core/common/g;->y:D

    iget-object v3, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/a/b$a;

    .line 1105
    invoke-virtual {v3}, Lcom/anythink/core/common/a/b$a;->d()D

    move-result-wide v3

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_1

    .line 1106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkToRequestNextAdSource release mAdxDefaultCacheInfo,mLoadedMaxPrice:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/anythink/core/common/g;->y:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", mAdxDefaultCacheInfo.getPrice():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/a/b$a;

    invoke-virtual {v2}, Lcom/anythink/core/common/a/b$a;->d()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1107
    iget-object v1, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/a/b$a;

    invoke-virtual {v1}, Lcom/anythink/core/common/a/b$a;->c()V

    :cond_1
    if-nez v0, :cond_2

    return-void

    .line 1117
    :cond_2
    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/f;->o()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/f;->c()I

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/anythink/core/common/g;->q:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/anythink/core/common/g;->l:Z

    if-eqz v0, :cond_4

    .line 1118
    :cond_3
    invoke-direct {p0}, Lcom/anythink/core/common/g;->w()Z

    .line 1121
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkToRequestNextAdSource: try to call next AdSource.||"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/p/d;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1123
    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {p1}, Lcom/anythink/core/common/p/d;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/p/f;->a(I)V

    .line 1125
    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {p1}, Lcom/anythink/core/common/p/d;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/p/f;->b(I)Ljava/util/List;

    move-result-object v0

    .line 1138
    invoke-virtual {p1}, Lcom/anythink/core/common/p/d;->e()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/anythink/core/common/g;->a(Ljava/util/List;I)V

    .line 1140
    invoke-direct {p0}, Lcom/anythink/core/common/g;->l()V

    return-void
.end method

.method private varargs a(Lcom/anythink/core/common/p/d;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/h;Z[Lcom/anythink/core/api/BaseAd;)V
    .locals 5

    .line 1057
    invoke-virtual {p2}, Lcom/anythink/core/api/ATBaseAdAdapter;->getInternalNetworkPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/anythink/core/common/f/h;->g(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {p1}, Lcom/anythink/core/common/p/d;->e()I

    move-result p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    invoke-static {p3}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v0

    .line 1067
    :goto_0
    invoke-direct {p0, p3, v3, v4, p5}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/f/au;DZ)V

    .line 1070
    invoke-static {p2, p3, p4, p6}, Lcom/anythink/core/b/d/b;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/h;[Lcom/anythink/core/api/BaseAd;)V

    .line 1072
    iget-object p1, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {p1, p3}, Lcom/anythink/core/common/p/f;->f(Lcom/anythink/core/common/f/au;)V

    .line 1075
    iget-wide p1, p0, Lcom/anythink/core/common/g;->L:D

    cmpl-double p5, p1, v0

    if-lez p5, :cond_2

    cmpg-double p5, p1, v3

    if-gez p5, :cond_1

    .line 4739
    iput v2, p4, Lcom/anythink/core/common/f/h;->s:I

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 5739
    iput p1, p4, Lcom/anythink/core/common/f/h;->s:I

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 6739
    iput p1, p4, Lcom/anythink/core/common/f/h;->s:I

    .line 1087
    :goto_1
    iget-object p1, p0, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    iget-object p2, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    iget-object p4, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    const/4 p5, 0x0

    invoke-static {p1, p2, p4, p3, p5}, Lcom/anythink/core/common/p/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/au;)V

    return-void
.end method

.method private a(Lcom/anythink/core/common/p/d;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/au;)V
    .locals 2

    .line 783
    new-instance v0, Lcom/anythink/core/common/p/c;

    invoke-direct {v0}, Lcom/anythink/core/common/p/c;-><init>()V

    .line 784
    iget-object v1, p0, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    iput-object v1, v0, Lcom/anythink/core/common/p/c;->a:Landroid/content/Context;

    .line 785
    iget-object v1, p0, Lcom/anythink/core/common/g;->b:Ljava/lang/ref/WeakReference;

    iput-object v1, v0, Lcom/anythink/core/common/p/c;->b:Ljava/lang/ref/WeakReference;

    .line 786
    iget-object v1, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/p/c;->c:Ljava/lang/String;

    .line 787
    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/p/c;->d:Ljava/lang/String;

    .line 788
    iget-object v1, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/az;->a()Lcom/anythink/core/d/e;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/p/c;->e:Lcom/anythink/core/d/e;

    .line 789
    iget-object v1, p0, Lcom/anythink/core/common/g;->h:Ljava/util/Map;

    iput-object v1, v0, Lcom/anythink/core/common/p/c;->f:Ljava/util/Map;

    .line 790
    iget v1, p0, Lcom/anythink/core/common/g;->v:I

    iput v1, v0, Lcom/anythink/core/common/p/c;->g:I

    .line 791
    iput-object p2, v0, Lcom/anythink/core/common/p/c;->h:Lcom/anythink/core/common/f/h;

    .line 792
    iget-object p2, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {p2}, Lcom/anythink/core/common/p/f;->t()Lcom/anythink/core/common/f/p;

    move-result-object p2

    iput-object p2, v0, Lcom/anythink/core/common/p/c;->i:Lcom/anythink/core/common/f/p;

    .line 794
    invoke-virtual {p1, v0}, Lcom/anythink/core/common/p/d;->a(Lcom/anythink/core/common/p/c;)V

    .line 796
    new-instance p2, Lcom/anythink/core/common/g$5;

    invoke-direct {p2, p0, p3}, Lcom/anythink/core/common/g$5;-><init>(Lcom/anythink/core/common/g;Lcom/anythink/core/common/f/au;)V

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/p/d;->a(Lcom/anythink/core/common/p/b;)V

    .line 871
    iget-wide p2, p0, Lcom/anythink/core/common/g;->A:D

    invoke-virtual {p1, p2, p3}, Lcom/anythink/core/common/p/d;->a(D)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1778
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/p/i;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/i;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1779
    monitor-exit p0

    return-void

    .line 1784
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/g;->B:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/p/d;

    .line 1787
    invoke-direct {p0, p1}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/p/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1788
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/common/f/au;)V
    .locals 7

    monitor-enter p0

    .line 914
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->B:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/p/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 919
    monitor-exit p0

    return-void

    .line 922
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v0, 0x1

    new-array v6, v0, [Lcom/anythink/core/api/BaseAd;

    const/4 v0, 0x0

    aput-object p3, v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/p/d;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/h;Z[Lcom/anythink/core/api/BaseAd;)V

    .line 924
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "[Enter] onCacheAdLoaded: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/anythink/core/common/f/au;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    invoke-direct {p0, p4}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/f/au;)V

    .line 928
    invoke-direct {p0}, Lcom/anythink/core/common/g;->u()V

    .line 934
    invoke-virtual {p2}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/anythink/core/common/g;->c(Lcom/anythink/core/common/f/h;)V

    .line 938
    invoke-virtual {p4}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/p/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 939
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/p/i;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/i;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/p/i;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/i;->c()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/p/f;->a(Ljava/util/List;)V

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addAdSourceToRequestingPool:start to request:  requesting size:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v1}, Lcom/anythink/core/common/p/f;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f/au;

    .line 294
    invoke-direct {p0, v0, p2}, Lcom/anythink/core/common/g;->b(Lcom/anythink/core/common/f/au;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 297
    :cond_1
    monitor-exit p0

    return-void

    .line 283
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Ljava/util/Map;)V
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

    .line 238
    iput-object p1, p0, Lcom/anythink/core/common/g;->h:Ljava/util/Map;

    return-void
.end method

.method private declared-synchronized a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/au;ILjava/lang/String;)Z
    .locals 8

    monitor-enter p0

    .line 745
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/u;->c(Ljava/lang/String;)Lcom/anythink/core/common/f/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {v0, p2}, Lcom/anythink/core/common/f/e;->a(Lcom/anythink/core/common/f/au;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    iget-object v2, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    const-string v4, "Can\'t Load On Showing"

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v3, p1

    move-object v5, p2

    invoke-static/range {v2 .. v7}, Lcom/anythink/core/common/o/o;->a(Ljava/lang/String;Lcom/anythink/core/common/f/h;Ljava/lang/String;Lcom/anythink/core/common/f/au;II)V

    const/4 v1, 0x7

    const-string v2, "2011"

    const-string v3, ""

    const-string v4, "Can\'t Load On Showing"

    .line 752
    invoke-static {v2, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/h;ILcom/anythink/core/api/AdError;)V

    .line 755
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object p1

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/e;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object p1, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {p1, p2, p3}, Lcom/anythink/core/common/p/f;->a(Lcom/anythink/core/common/f/au;I)V

    .line 760
    invoke-direct {p0, p2}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/f/au;)V

    .line 762
    iget-object p1, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {p1, p3}, Lcom/anythink/core/common/p/f;->a(I)V

    .line 766
    iget-object p1, p0, Lcom/anythink/core/common/g;->B:Ljava/util/Map;

    invoke-interface {p1, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    iget-object p1, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    const/4 p2, -0x1

    invoke-virtual {p1, p2, p3}, Lcom/anythink/core/common/p/f;->a(II)V

    .line 770
    iget-object p1, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {p1, p3}, Lcom/anythink/core/common/p/f;->b(I)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/anythink/core/common/g;->a(Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 771
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 773
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/anythink/core/common/g;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/au;ILjava/lang/String;)Z
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/au;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private b(J)V
    .locals 3

    .line 1814
    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/m/b;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/anythink/core/common/m/a;->a(Lcom/anythink/core/common/m/b;JZ)V

    return-void
.end method

.method private b(Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2159
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Ljava/util/List;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 2161
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/g;->I:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2163
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private b(Lcom/anythink/core/common/f/au;)V
    .locals 4

    .line 492
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->A()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4001"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 493
    iget-object v1, p0, Lcom/anythink/core/common/g;->t:Lcom/anythink/core/api/AdError;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->d()I

    move-result v3

    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/anythink/core/api/AdError;->putNetworkErrorMsg(Ljava/lang/String;ILjava/lang/String;Lcom/anythink/core/api/AdError;)V

    return-void
.end method

.method private b(Lcom/anythink/core/common/f/au;I)V
    .locals 8

    .line 653
    new-instance v5, Lcom/anythink/core/common/p/d;

    invoke-direct {v5, p1, p2}, Lcom/anythink/core/common/p/d;-><init>(Lcom/anythink/core/common/f/au;I)V

    .line 654
    invoke-virtual {v5}, Lcom/anythink/core/common/p/d;->a()Ljava/lang/String;

    move-result-object v2

    .line 656
    iget-object v0, p0, Lcom/anythink/core/common/g;->B:Ljava/util/Map;

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/anythink/core/common/p/f;->a(II)V

    .line 660
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v6

    new-instance v7, Lcom/anythink/core/common/g$4;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/anythink/core/common/g$4;-><init>(Lcom/anythink/core/common/g;Ljava/lang/String;Lcom/anythink/core/common/f/au;ILcom/anythink/core/common/p/d;)V

    invoke-virtual {v6, v7}, Lcom/anythink/core/common/o/b/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Lcom/anythink/core/common/f/h;)V
    .locals 1

    .line 886
    iget-object v0, p0, Lcom/anythink/core/common/g;->k:Lcom/anythink/core/common/b/b;

    if-eqz v0, :cond_0

    .line 888
    invoke-virtual {v0, p1}, Lcom/anythink/core/common/b/b;->c(Lcom/anythink/core/common/f/h;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/anythink/core/common/g;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/anythink/core/common/g;->p()V

    return-void
.end method

.method static synthetic b(Lcom/anythink/core/common/g;Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 9159
    iget-object v0, p0, Lcom/anythink/core/common/g;->I:Ljava/util/List;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 9161
    :try_start_0
    iget-object p0, p0, Lcom/anythink/core/common/g;->I:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9163
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/anythink/core/common/g;Lcom/anythink/core/common/f/au;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/anythink/core/common/g;->c(Lcom/anythink/core/common/f/au;)V

    return-void
.end method

.method private b(Lcom/anythink/core/common/p/d;)V
    .locals 2

    .line 1146
    invoke-virtual {p1}, Lcom/anythink/core/common/p/d;->c()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/anythink/core/common/p/d;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1157
    :cond_0
    invoke-virtual {p1}, Lcom/anythink/core/common/p/d;->e()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return-void

    .line 1161
    :cond_1
    invoke-virtual {p1}, Lcom/anythink/core/common/p/d;->c()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1162
    iget p1, p0, Lcom/anythink/core/common/g;->w:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/anythink/core/common/g;->w:I

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic b(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic c(Lcom/anythink/core/common/g;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/anythink/core/common/g;->P:Ljava/lang/String;

    return-object p0
.end method

.method private c(Lcom/anythink/core/common/f/au;)V
    .locals 4

    .line 506
    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/p/f;->c(Lcom/anythink/core/common/f/au;)V

    .line 509
    iget-object v0, p0, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Lcom/anythink/core/common/p/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/au;)V

    .line 512
    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/p/f;->d(Lcom/anythink/core/common/f/au;)V

    return-void
.end method

.method private c(Lcom/anythink/core/common/f/h;)V
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/anythink/core/common/g;->k:Lcom/anythink/core/common/b/b;

    if-eqz v0, :cond_0

    .line 895
    invoke-virtual {v0, p1}, Lcom/anythink/core/common/b/b;->d(Lcom/anythink/core/common/f/h;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/anythink/core/common/g;Lcom/anythink/core/common/f/au;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/anythink/core/common/g;->b(Lcom/anythink/core/common/f/au;)V

    return-void
.end method

.method private static c(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private declared-synchronized d(I)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/f;->p()I

    move-result v0

    goto :goto_0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/f;->q()I

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkToAddAdSourceToRequestingPool: vail requesting num: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " | requestFrom: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 371
    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/p/f;->b(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/anythink/core/common/g;->a(Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private d(Lcom/anythink/core/common/f/au;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 2081
    :cond_0
    invoke-static {p1}, Lcom/anythink/core/common/p/f;->h(Lcom/anythink/core/common/f/au;)D

    move-result-wide v0

    .line 2083
    iget-object v2, p0, Lcom/anythink/core/common/g;->N:Lcom/anythink/core/common/f/au;

    invoke-static {v2}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 2084
    iput-object p1, p0, Lcom/anythink/core/common/g;->N:Lcom/anythink/core/common/f/au;

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/anythink/core/common/g;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/anythink/core/common/g;->G()V

    return-void
.end method

.method static synthetic e(Lcom/anythink/core/common/g;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/anythink/core/common/g;->s()V

    return-void
.end method

.method static synthetic f(Lcom/anythink/core/common/g;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/anythink/core/common/g;->l()V

    return-void
.end method

.method private declared-synchronized j()V
    .locals 4

    monitor-enter p0

    .line 155
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":filled timeup to check cache."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-direct {p0}, Lcom/anythink/core/common/g;->F()Lcom/anythink/core/common/f/b;

    move-result-object v0

    const/4 v1, 0x1

    .line 157
    iput-boolean v1, p0, Lcom/anythink/core/common/g;->r:Z

    .line 158
    iget-boolean v2, p0, Lcom/anythink/core/common/g;->n:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":filled timeup to check cache exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/f/au;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 162
    :goto_0
    invoke-static {v0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/f/au;DZ)V

    const/16 v0, 0x9

    .line 164
    invoke-virtual {p0, v0}, Lcom/anythink/core/common/g;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 166
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":filled timeup to check no cache, do nothing."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized k()V
    .locals 2

    monitor-enter p0

    .line 264
    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/core/common/g;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 265
    monitor-exit p0

    return-void

    .line 270
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    iget-object v1, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/f/h;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/p/f;->b(Lcom/anythink/core/common/f/h;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized l()V
    .locals 9

    monitor-enter p0

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    const/4 v1, 0x0

    .line 2511
    invoke-virtual {v0, v1}, Lcom/anythink/core/common/p/f;->a(Z)D

    move-result-wide v2

    .line 310
    invoke-direct {p0}, Lcom/anythink/core/common/g;->t()D

    move-result-wide v4

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "checkWaterfallStatus: vail requesting num: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v6}, Lcom/anythink/core/common/p/f;->o()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "checkWaterfallStatus:isFinishBidding:"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/anythink/core/common/g;->l:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "checkWaterfallStatus:currentCacheNum >= mStrategy.getCachedOffersNum():"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/anythink/core/common/g;->w:I

    iget-object v7, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {v7}, Lcom/anythink/core/common/f/az;->h()I

    move-result v7

    const/4 v8, 0x1

    if-lt v6, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "checkWaterfallStatus:getCacheLowestPrice() > getWaitingResponseMaxPrice():"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkWaterfallStatus:requestHasShow:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/p/i;

    invoke-virtual {v1}, Lcom/anythink/core/common/p/i;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkWaterfallStatus:hasLongTimeout:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/p/i;

    invoke-virtual {v1}, Lcom/anythink/core/common/p/i;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 319
    iget-boolean v0, p0, Lcom/anythink/core/common/g;->l:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/anythink/core/common/g;->w:I

    iget-object v1, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/az;->h()I

    move-result v1

    if-lt v0, v1, :cond_2

    if-gez v6, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/p/i;

    .line 320
    invoke-virtual {v0}, Lcom/anythink/core/common/p/i;->c()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/p/i;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/i;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 321
    :cond_3
    iput-boolean v8, p0, Lcom/anythink/core/common/g;->o:Z

    .line 322
    invoke-direct {p0}, Lcom/anythink/core/common/g;->k()V

    .line 324
    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/f;->o()I

    move-result v0

    if-nez v0, :cond_4

    .line 326
    iget-object v0, p0, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/anythink/core/common/p/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/core/common/p/f;->a(Ljava/lang/String;)V

    .line 332
    invoke-direct {p0}, Lcom/anythink/core/common/g;->r()V

    .line 337
    :cond_4
    invoke-direct {p0}, Lcom/anythink/core/common/g;->q()V

    .line 340
    iget-boolean v0, p0, Lcom/anythink/core/common/g;->o:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/anythink/core/common/g;->B()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 341
    :cond_5
    invoke-direct {p0}, Lcom/anythink/core/common/g;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private m()V
    .locals 4

    .line 584
    iget-object v0, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/a/b$a;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/f/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->S()Lcom/anythink/core/common/f/h;

    move-result-object v0

    .line 586
    iget-object v1, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/a/b$a;

    invoke-virtual {v1}, Lcom/anythink/core/common/a/b$a;->e()Lcom/anythink/core/common/f/au;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/o/u;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/au;IZ)V

    .line 587
    iget-object v1, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/a/b$a;

    iget-object v2, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/a/b$a;->a(Ljava/lang/String;Lcom/anythink/core/common/f/h;)V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 5

    .line 592
    iget-object v0, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/az;->j()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 593
    new-instance v0, Lcom/anythink/core/common/g$2;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/g$2;-><init>(Lcom/anythink/core/common/g;)V

    iput-object v0, p0, Lcom/anythink/core/common/g;->D:Lcom/anythink/core/common/m/b;

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": start filled count down.mWaterfallSetting.getWaitWaterfaillFillTime():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/az;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 606
    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/g;->D:Lcom/anythink/core/common/m/b;

    iget-object v2, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/az;->j()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/anythink/core/common/m/a;->a(Lcom/anythink/core/common/m/b;JZ)V

    return-void

    .line 608
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": no filled count down."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private o()Lcom/anythink/core/common/m/b;
    .locals 1

    .line 620
    new-instance v0, Lcom/anythink/core/common/g$3;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/g$3;-><init>(Lcom/anythink/core/common/g;)V

    return-object v0
.end method

.method private declared-synchronized p()V
    .locals 3

    monitor-enter p0

    .line 629
    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/core/common/g;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/f;->f()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 631
    iput-object v0, p0, Lcom/anythink/core/common/g;->E:Lcom/anythink/core/common/m/b;

    .line 633
    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/f;->g()Lcom/anythink/core/common/f/au;

    move-result-object v0

    .line 634
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleDefaultAdSourceRequest: startLoadDefaultAdSource:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    iget-object v1, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/p/f;->a(Lcom/anythink/core/common/f/au;)V

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleDefaultAdSourceRequest:start to request: waiting size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v2}, Lcom/anythink/core/common/p/f;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; requesting size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v2}, Lcom/anythink/core/common/p/f;->q()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    .line 639
    invoke-direct {p0, v0, v1}, Lcom/anythink/core/common/g;->b(Lcom/anythink/core/common/f/au;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized q()V
    .locals 4

    monitor-enter p0

    .line 1012
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/p/i;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/i;->g()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/p/i;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/i;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/p/i;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/i;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1018
    monitor-exit p0

    return-void

    .line 1022
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    iget-boolean v1, p0, Lcom/anythink/core/common/g;->l:Z

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/p/f;->b(Z)Lcom/anythink/core/common/f/au;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1024
    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1027
    iget-object v2, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/p/i;

    invoke-virtual {v2}, Lcom/anythink/core/common/p/i;->h()V

    .line 1028
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tryToSendWinNotice(), send win notice: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    invoke-static {v1, v0}, Lcom/anythink/core/b/d/b;->a(Lcom/anythink/core/common/f/q;Lcom/anythink/core/common/f/au;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1033
    :cond_2
    monitor-exit p0

    return-void

    .line 1013
    :cond_3
    :goto_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tryToSendWinNotice(), mHasSendWinNotice: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/p/i;

    invoke-virtual {v1}, Lcom/anythink/core/common/p/i;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mHasHBAdSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/p/i;

    invoke-virtual {v1}, Lcom/anythink/core/common/p/i;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1014
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized r()V
    .locals 2

    monitor-enter p0

    .line 1038
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/p/i;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/i;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tryToSendLossNotice(), mHasHBAdSource: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/p/i;

    invoke-virtual {v1}, Lcom/anythink/core/common/p/i;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1040
    monitor-exit p0

    return-void

    .line 1042
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/p/i;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/i;->b()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 1044
    monitor-exit p0

    return-void

    .line 1047
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/f/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->S()Lcom/anythink/core/common/f/h;

    move-result-object v0

    .line 1050
    iget-object v1, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/p/f;->a(Lcom/anythink/core/common/f/h;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1051
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized s()V
    .locals 7

    monitor-enter p0

    .line 1173
    :try_start_0
    invoke-direct {p0}, Lcom/anythink/core/common/g;->t()D

    move-result-wide v0

    .line 1183
    iget-wide v2, p0, Lcom/anythink/core/common/g;->y:D

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_4

    .line 1184
    iget-boolean v4, p0, Lcom/anythink/core/common/g;->l:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/anythink/core/common/g;->q:Z

    if-eqz v4, :cond_1

    :cond_0
    cmpl-double v4, v2, v0

    if-gez v4, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/anythink/core/common/g;->r:Z

    if-eqz v0, :cond_7

    .line 1185
    :cond_2
    iget-boolean v0, p0, Lcom/anythink/core/common/g;->n:Z

    if-nez v0, :cond_3

    const/4 v0, -0x1

    .line 1189
    invoke-virtual {p0, v0}, Lcom/anythink/core/common/g;->a(I)V

    .line 1191
    :cond_3
    invoke-direct {p0}, Lcom/anythink/core/common/g;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 1194
    :cond_4
    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/core/common/g;->l:Z

    if-eqz v0, :cond_7

    .line 7708
    iget-object v0, p0, Lcom/anythink/core/common/g;->E:Lcom/anythink/core/common/m/b;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/anythink/core/common/g;->C()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7709
    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/g;->E:Lcom/anythink/core/common/m/b;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/m/a;->b(Lcom/anythink/core/common/m/b;)V

    .line 7711
    iget-object v0, p0, Lcom/anythink/core/common/g;->E:Lcom/anythink/core/common/m/b;

    invoke-interface {v0}, Lcom/anythink/core/common/m/b;->run()V

    const/4 v0, 0x0

    .line 7712
    iput-object v0, p0, Lcom/anythink/core/common/g;->E:Lcom/anythink/core/common/m/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    .line 1200
    monitor-exit p0

    return-void

    .line 1203
    :cond_6
    :try_start_2
    invoke-direct {p0}, Lcom/anythink/core/common/g;->B()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/anythink/core/common/g;->n:Z

    if-nez v0, :cond_7

    .line 1207
    invoke-direct {p0}, Lcom/anythink/core/common/g;->A()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1213
    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private t()D
    .locals 7

    .line 1218
    iget-object v0, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/az;->k()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/anythink/core/common/g;->B:Ljava/util/Map;

    monitor-enter v0

    .line 1221
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/g;->B:Ljava/util/Map;

    invoke-static {v1}, Lcom/anythink/core/common/p/f;->a(Ljava/util/Map;)Lcom/anythink/core/common/f/au;

    move-result-object v1

    .line 1222
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_0
    const/4 v1, 0x0

    .line 1225
    :goto_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/f;->d()Lcom/anythink/core/common/f/au;

    move-result-object v0

    .line 1226
    iget-object v2, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v2}, Lcom/anythink/core/common/p/f;->j()Lcom/anythink/core/common/f/au;

    move-result-object v2

    .line 1229
    invoke-static {v0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v3

    invoke-static {v2}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 1230
    invoke-static {v1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized u()V
    .locals 2

    monitor-enter p0

    .line 1235
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/f;->i()V

    .line 1236
    iget-object v0, p0, Lcom/anythink/core/common/g;->E:Lcom/anythink/core/common/m/b;

    if-eqz v0, :cond_0

    .line 1237
    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/g;->E:Lcom/anythink/core/common/m/b;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/m/a;->b(Lcom/anythink/core/common/m/b;)V

    const/4 v0, 0x0

    .line 1238
    iput-object v0, p0, Lcom/anythink/core/common/g;->E:Lcom/anythink/core/common/m/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1240
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private v()V
    .locals 1

    .line 1328
    invoke-direct {p0}, Lcom/anythink/core/common/g;->w()Z

    .line 1329
    iget-boolean v0, p0, Lcom/anythink/core/common/g;->M:Z

    if-nez v0, :cond_0

    .line 1330
    invoke-direct {p0}, Lcom/anythink/core/common/g;->E()V

    :cond_0
    return-void
.end method

.method private declared-synchronized w()Z
    .locals 4

    monitor-enter p0

    .line 1336
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/f;->m()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1338
    monitor-exit p0

    return v1

    .line 1341
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/p/i;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/i;->c()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 1342
    monitor-exit p0

    return v1

    .line 1345
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/p/i;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/i;->f()V

    const/4 v0, 0x1

    .line 1346
    iput-boolean v0, p0, Lcom/anythink/core/common/g;->O:Z

    .line 1348
    iget-object v1, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v1}, Lcom/anythink/core/common/p/f;->n()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x8

    .line 1351
    new-instance v3, Lcom/anythink/core/common/g$6;

    invoke-direct {v3, p0}, Lcom/anythink/core/common/g$6;-><init>(Lcom/anythink/core/common/g;)V

    invoke-direct {p0, v2, v1, v3}, Lcom/anythink/core/common/g;->a(ILjava/util/List;Lcom/anythink/core/common/i$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1386
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized x()V
    .locals 3

    monitor-enter p0

    .line 1391
    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/core/common/g;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1393
    monitor-exit p0

    return-void

    .line 1395
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/p/i;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/i;->c()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 1397
    monitor-exit p0

    return-void

    .line 1400
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/anythink/core/common/g;->C:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1405
    :cond_2
    iget-boolean v0, p0, Lcom/anythink/core/common/g;->p:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    .line 1407
    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 1410
    :try_start_3
    iput-boolean v0, p0, Lcom/anythink/core/common/g;->p:Z

    const/4 v0, 0x7

    .line 1414
    iget-object v1, p0, Lcom/anythink/core/common/g;->C:Ljava/util/List;

    new-instance v2, Lcom/anythink/core/common/g$7;

    invoke-direct {v2, p0}, Lcom/anythink/core/common/g$7;-><init>(Lcom/anythink/core/common/g;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/anythink/core/common/g;->a(ILjava/util/List;Lcom/anythink/core/common/i$a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1597
    monitor-exit p0

    return-void

    .line 1402
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private y()Z
    .locals 2

    .line 1708
    iget-object v0, p0, Lcom/anythink/core/common/g;->E:Lcom/anythink/core/common/m/b;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/anythink/core/common/g;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1709
    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/g;->E:Lcom/anythink/core/common/m/b;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/m/a;->b(Lcom/anythink/core/common/m/b;)V

    .line 1711
    iget-object v0, p0, Lcom/anythink/core/common/g;->E:Lcom/anythink/core/common/m/b;

    invoke-interface {v0}, Lcom/anythink/core/common/m/b;->run()V

    const/4 v0, 0x0

    .line 1712
    iput-object v0, p0, Lcom/anythink/core/common/g;->E:Lcom/anythink/core/common/m/b;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private z()V
    .locals 6

    const/4 v0, 0x1

    .line 1723
    iput-boolean v0, p0, Lcom/anythink/core/common/g;->n:Z

    const/4 v0, 0x0

    .line 1724
    iput-boolean v0, p0, Lcom/anythink/core/common/g;->m:Z

    .line 1726
    iget-object v1, p0, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/m/b;

    if-eqz v1, :cond_0

    .line 1728
    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/m/b;

    invoke-interface {v1, v2}, Lcom/anythink/core/common/m/a;->b(Lcom/anythink/core/common/m/b;)V

    .line 1731
    :cond_0
    iget-object v1, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/f/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/h;->S()Lcom/anythink/core/common/f/h;

    move-result-object v1

    .line 1732
    iget-object v2, p0, Lcom/anythink/core/common/g;->t:Lcom/anythink/core/api/AdError;

    invoke-static {v1, v2}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/api/AdError;)V

    .line 1734
    iget-boolean v1, p0, Lcom/anythink/core/common/g;->M:Z

    if-nez v1, :cond_2

    .line 1743
    iget-object v1, p0, Lcom/anythink/core/common/g;->t:Lcom/anythink/core/api/AdError;

    .line 7970
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "placementId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";result_callback:fail;loadType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/f/v;

    iget v3, v3, Lcom/anythink/core/common/f/v;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mediation"

    invoke-static {v3, v2}, Lcom/anythink/core/common/o/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7973
    iget-object v2, p0, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/core/common/v;->a(Landroid/content/Context;)Lcom/anythink/core/common/v;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0}, Lcom/anythink/core/common/v;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7975
    iget-object v0, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/f/v;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/anythink/core/common/f/v;->f:Lcom/anythink/core/common/n;

    if-eqz v0, :cond_1

    .line 7976
    iget-object v0, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/f/v;

    iget-object v0, v0, Lcom/anythink/core/common/f/v;->f:Lcom/anythink/core/common/n;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/f/v;

    iget-object v5, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/anythink/core/common/n;->a(ILcom/anythink/core/common/f/v;Lcom/anythink/core/common/f/az;Lcom/anythink/core/api/AdError;)V

    .line 7977
    iget-object v0, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/f/v;

    iput-object v2, v0, Lcom/anythink/core/common/f/v;->f:Lcom/anythink/core/common/n;

    .line 7980
    :cond_1
    invoke-static {}, Lcom/anythink/core/c/b;->a()Lcom/anythink/core/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcom/anythink/core/c/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/au;)V

    .line 1748
    :cond_2
    invoke-virtual {p0}, Lcom/anythink/core/common/g;->f()V

    return-void
.end method


# virtual methods
.method protected final declared-synchronized a()V
    .locals 3

    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/p/i;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/i;->a()V

    .line 190
    iget-object v0, p0, Lcom/anythink/core/common/g;->B:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 191
    :try_start_1
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/anythink/core/common/g;->B:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    .line 192
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    :try_start_2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 196
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/p/d;

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v1}, Lcom/anythink/core/common/p/d;->b()V

    goto :goto_0

    .line 204
    :cond_1
    iget-boolean v0, p0, Lcom/anythink/core/common/g;->n:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcom/anythink/core/common/g;->n:Z

    .line 206
    invoke-direct {p0}, Lcom/anythink/core/common/g;->A()V

    .line 212
    :cond_2
    invoke-direct {p0}, Lcom/anythink/core/common/g;->l()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 213
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 192
    :try_start_3
    monitor-exit v0

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(DLcom/anythink/core/common/f/au;)V
    .locals 2

    monitor-enter p0

    .line 1831
    :try_start_0
    invoke-direct {p0}, Lcom/anythink/core/common/g;->G()V

    .line 1834
    iget-object v0, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/p/i;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/i;->g()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/anythink/core/common/f/au;->k()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1835
    iget-object p3, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/p/i;

    invoke-virtual {p3}, Lcom/anythink/core/common/p/i;->h()V

    .line 1838
    :cond_0
    iget-wide v0, p0, Lcom/anythink/core/common/g;->L:D

    cmpl-double p3, p1, v0

    if-lez p3, :cond_1

    .line 1839
    iput-wide p1, p0, Lcom/anythink/core/common/g;->L:D

    .line 1842
    :cond_1
    iget-object p1, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/az;->a()Lcom/anythink/core/d/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/d/e;->ag()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    .line 1850
    iget-object p1, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/p/i;

    invoke-virtual {p1}, Lcom/anythink/core/common/p/i;->d()V

    .line 1852
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/az;->a()Lcom/anythink/core/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/d/e;->ag()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1854
    iget-object p2, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/f;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "AdManage is null--notifyimpression"

    .line 1856
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Id:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "--format:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {p3}, Lcom/anythink/core/common/f/az;->a()Lcom/anythink/core/d/e;

    move-result-object p3

    invoke-virtual {p3}, Lcom/anythink/core/d/e;->ag()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p3

    invoke-virtual {p3}, Lcom/anythink/core/common/b/o;->q()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/anythink/core/common/n/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    :goto_0
    iget-boolean p1, p0, Lcom/anythink/core/common/g;->n:Z

    if-nez p1, :cond_3

    const/16 p1, 0xa

    .line 1860
    invoke-virtual {p0, p1}, Lcom/anythink/core/common/g;->a(I)V

    .line 1863
    :cond_3
    invoke-direct {p0}, Lcom/anythink/core/common/g;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1866
    monitor-exit p0

    return-void

    .line 1845
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(I)V
    .locals 6

    .line 1248
    invoke-direct {p0}, Lcom/anythink/core/common/g;->u()V

    .line 1250
    iget-object v0, p0, Lcom/anythink/core/common/g;->D:Lcom/anythink/core/common/m/b;

    if-eqz v0, :cond_0

    .line 1251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":remove filled countdown."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/g;->D:Lcom/anythink/core/common/m/b;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/m/a;->b(Lcom/anythink/core/common/m/b;)V

    const/4 v0, 0x0

    .line 1253
    iput-object v0, p0, Lcom/anythink/core/common/g;->D:Lcom/anythink/core/common/m/b;

    .line 1256
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/a/b$a;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/anythink/core/common/a/b$a;->e()Lcom/anythink/core/common/f/au;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v2}, Lcom/anythink/core/common/p/f;->b()Lcom/anythink/core/common/f/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/f/p;->a()Lcom/anythink/core/common/f/au;

    move-result-object v2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/a/b$a;

    .line 1257
    invoke-virtual {v0}, Lcom/anythink/core/common/a/b$a;->d()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/anythink/core/common/g;->y:D

    cmpl-double v0, v2, v4

    if-lez v0, :cond_2

    .line 1259
    :cond_1
    iget-object v0, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/a/b$a;

    invoke-virtual {v0}, Lcom/anythink/core/common/a/b$a;->b()V

    .line 1260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":set adx default cache from loadedReason:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1261
    iget-object p1, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/a/b$a;

    invoke-virtual {p1}, Lcom/anythink/core/common/a/b$a;->e()Lcom/anythink/core/common/f/au;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/a/b$a;

    invoke-virtual {v0}, Lcom/anythink/core/common/a/b$a;->d()D

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/f/au;DZ)V

    const/16 p1, 0xb

    :cond_2
    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    :pswitch_0
    const/4 v0, 0x1

    .line 1296
    :goto_0
    iput-boolean v1, p0, Lcom/anythink/core/common/g;->n:Z

    .line 1297
    iput-boolean v1, p0, Lcom/anythink/core/common/g;->m:Z

    .line 1299
    iget-object v2, p0, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/m/b;

    if-eqz v2, :cond_4

    .line 1301
    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/m/b;

    invoke-interface {v2, v3}, Lcom/anythink/core/common/m/a;->b(Lcom/anythink/core/common/m/b;)V

    .line 1304
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/anythink/core/common/g;->u:J

    sub-long/2addr v2, v4

    .line 1305
    iget-object v4, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/f/h;

    invoke-virtual {v4}, Lcom/anythink/core/common/f/h;->S()Lcom/anythink/core/common/f/h;

    move-result-object v4

    .line 1306
    invoke-virtual {v4, v1}, Lcom/anythink/core/common/f/h;->b(Z)V

    .line 1307
    invoke-virtual {v4, v2, v3}, Lcom/anythink/core/common/f/h;->d(J)V

    if-eqz v0, :cond_5

    .line 1309
    invoke-virtual {v4, p1}, Lcom/anythink/core/common/f/h;->E(I)V

    .line 1313
    :cond_5
    iget-object p1, p0, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/core/common/n/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/a;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0, v4}, Lcom/anythink/core/common/n/a;->a(ILcom/anythink/core/common/f/at;)V

    .line 1317
    iget-object p1, p0, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/anythink/core/common/p/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1320
    iget-object p1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/anythink/core/common/p/f;->a(Ljava/lang/String;)V

    .line 1322
    invoke-direct {p0}, Lcom/anythink/core/common/g;->v()V

    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/anythink/core/api/ATBaseAdAdapter;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 1916
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "4"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1924
    :cond_0
    iget-object p2, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/f/v;

    iget p2, p2, Lcom/anythink/core/common/f/v;->h:I

    invoke-virtual {p1, p2}, Lcom/anythink/core/api/ATBaseAdAdapter;->setFetchAdTimeout(I)V

    goto :goto_0

    .line 1919
    :cond_1
    invoke-virtual {p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/f/au;

    move-result-object p2

    .line 1920
    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->s()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/anythink/core/api/ATBaseAdAdapter;->setRequestNum(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Lcom/anythink/core/common/b/b;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/anythink/core/common/g;->k:Lcom/anythink/core/common/b/b;

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/v;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/anythink/core/common/g;->j:Lcom/anythink/core/common/f/v;

    return-void
.end method

.method protected final a(Lcom/anythink/core/common/p/g;)V
    .locals 1

    .line 533
    new-instance v0, Lcom/anythink/core/common/p/f;

    invoke-direct {v0, p1}, Lcom/anythink/core/common/p/f;-><init>(Lcom/anythink/core/common/p/g;)V

    iput-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    .line 535
    iget-boolean v0, p1, Lcom/anythink/core/common/p/g;->f:Z

    iput-boolean v0, p0, Lcom/anythink/core/common/g;->l:Z

    .line 536
    iget-object v0, p1, Lcom/anythink/core/common/p/g;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    .line 537
    iget-object v0, p1, Lcom/anythink/core/common/p/g;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    .line 538
    iget-object v0, p1, Lcom/anythink/core/common/p/g;->c:Lcom/anythink/core/common/f/az;

    iput-object v0, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    .line 539
    iget v0, p1, Lcom/anythink/core/common/p/g;->g:I

    iput v0, p0, Lcom/anythink/core/common/g;->c:I

    .line 541
    iget-object p1, p1, Lcom/anythink/core/common/p/g;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/anythink/core/common/p/f;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/g;->s:Ljava/lang/String;

    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/anythink/core/api/ATBaseAdAdapter;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/anythink/core/api/ATBaseAdAdapter;",
            "Ljava/util/List<",
            "+",
            "Lcom/anythink/core/api/BaseAd;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 950
    :try_start_0
    invoke-virtual {p2}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->C()Ljava/lang/String;

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/g;->B:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/p/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 957
    monitor-exit p0

    return-void

    .line 960
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v8

    .line 961
    invoke-virtual {p2}, Lcom/anythink/core/api/ATBaseAdAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/f/au;

    move-result-object v9

    .line 963
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Enter] onAdLoaded(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/anythink/core/common/f/au;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    invoke-direct {p0, v9}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/f/au;)V

    .line 967
    invoke-direct {p0}, Lcom/anythink/core/common/g;->u()V

    const/4 v6, 0x0

    const/4 v1, 0x0

    new-array v7, v1, [Lcom/anythink/core/api/BaseAd;

    move-object v1, p0

    move-object v2, v0

    move-object v3, p2

    move-object v4, v9

    move-object v5, v8

    .line 971
    invoke-direct/range {v1 .. v7}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/p/d;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/h;Z[Lcom/anythink/core/api/BaseAd;)V

    .line 973
    invoke-virtual {v9}, Lcom/anythink/core/common/f/au;->C()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 974
    invoke-virtual {v8}, Lcom/anythink/core/common/f/h;->O()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 975
    invoke-static {v8}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/h;)V

    .line 980
    :cond_2
    invoke-virtual {p2}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/anythink/core/common/g;->c(Lcom/anythink/core/common/f/h;)V

    .line 985
    iget-object v1, p0, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/core/common/n/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/a;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v8}, Lcom/anythink/core/common/n/a;->a(ILcom/anythink/core/common/f/at;)V

    .line 989
    invoke-virtual {v9}, Lcom/anythink/core/common/f/au;->q()J

    move-result-wide v5

    .line 990
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/core/common/a;->a(Ljava/lang/String;Lcom/anythink/core/api/ATBaseAdAdapter;Ljava/util/List;J)Ljava/util/List;

    .line 993
    sget-object v1, Lcom/anythink/core/common/b/h$m;->b:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$m;->l:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v8, v1, v2, v3}, Lcom/anythink/core/common/o/o;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    invoke-direct {p0, v0}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/p/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1008
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Ljava/lang/String;Lcom/anythink/core/common/p/a;)V
    .locals 8

    monitor-enter p0

    .line 1664
    :try_start_0
    iget-object v0, p2, Lcom/anythink/core/common/p/a;->d:Lcom/anythink/core/common/f/h;

    .line 1665
    iget-object v1, p2, Lcom/anythink/core/common/p/a;->e:Lcom/anythink/core/common/f/au;

    .line 1666
    iget-object v2, p2, Lcom/anythink/core/common/p/a;->b:Lcom/anythink/core/api/AdError;

    .line 1667
    iget-wide v3, p2, Lcom/anythink/core/common/p/a;->c:J

    .line 1670
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->C()Ljava/lang/String;

    move-result-object v5

    .line 1671
    iget-object v6, p0, Lcom/anythink/core/common/g;->B:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/p/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 1676
    monitor-exit p0

    return-void

    .line 1679
    :cond_0
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[Enter] onAdError(): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/anythink/core/common/f/au;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    invoke-direct {p0, v1}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/f/au;)V

    .line 1685
    iget-object v1, p0, Lcom/anythink/core/common/g;->t:Lcom/anythink/core/api/AdError;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->M()I

    move-result v6

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->Z()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v6, v7, v2}, Lcom/anythink/core/api/AdError;->putNetworkErrorMsg(Ljava/lang/String;ILjava/lang/String;Lcom/anythink/core/api/AdError;)V

    .line 1687
    iget p2, p2, Lcom/anythink/core/common/p/a;->a:I

    invoke-static {v0, p2, v2, v3, v4}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/h;ILcom/anythink/core/api/AdError;J)V

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-lez p2, :cond_2

    .line 7900
    iget-object p2, p0, Lcom/anythink/core/common/g;->k:Lcom/anythink/core/common/b/b;

    if-eqz p2, :cond_1

    .line 7902
    invoke-virtual {p2, v0, v2}, Lcom/anythink/core/common/b/b;->b(Lcom/anythink/core/common/f/h;Lcom/anythink/core/api/AdError;)V

    .line 1696
    :cond_1
    sget-object p2, Lcom/anythink/core/common/b/h$m;->b:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/h$m;->m:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p2, v1, v2}, Lcom/anythink/core/common/o/o;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    :cond_2
    invoke-direct {p0, p1}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/p/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1703
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;)V"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/anythink/core/common/g;->x:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_0

    .line 400
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/f/au;

    .line 401
    invoke-direct {p0, v1}, Lcom/anythink/core/common/g;->b(Lcom/anythink/core/common/f/au;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_0
    if-eqz p3, :cond_1

    .line 408
    iget-object p2, p0, Lcom/anythink/core/common/g;->C:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p1, :cond_b

    .line 417
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_6

    .line 421
    :cond_2
    iget-object p2, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/p/i;

    invoke-virtual {p2}, Lcom/anythink/core/common/p/i;->f()V

    const/4 p2, 0x0

    .line 424
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/anythink/core/common/f/au;

    .line 426
    iget-object v1, p0, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/p/i;

    invoke-static {p3, v1}, Lcom/anythink/core/common/p/f;->a(Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/p/i;)Z

    move-result v1

    .line 428
    iget-object v2, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v2, p3}, Lcom/anythink/core/common/p/f;->g(Lcom/anythink/core/common/f/au;)Z

    move-result v2

    if-nez v1, :cond_3

    if-eqz v2, :cond_9

    .line 431
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isAdvanceRequest: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", cutInLine: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 433
    iget-boolean v3, p0, Lcom/anythink/core/common/g;->n:Z

    if-nez v3, :cond_4

    const-string v3, "1"

    :goto_1
    move-object v9, v3

    goto :goto_2

    .line 436
    :cond_4
    iget-boolean v3, p0, Lcom/anythink/core/common/g;->m:Z

    if-eqz v3, :cond_5

    const-string v3, "2"

    goto :goto_1

    :cond_5
    const-string v3, "3"

    goto :goto_1

    :goto_2
    const-string v3, "1"

    if-eqz v1, :cond_6

    const-string v1, "1"

    :goto_3
    move-object v10, v1

    goto :goto_4

    :cond_6
    if-eqz v2, :cond_7

    const-string v1, "2"

    goto :goto_3

    :cond_7
    move-object v10, v3

    .line 446
    :goto_4
    iget-object v4, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/f/h;

    invoke-virtual {p3}, Lcom/anythink/core/common/f/au;->d()I

    move-result v5

    invoke-virtual {p3}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object v6

    invoke-static {p3}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v7

    invoke-static/range {v4 .. v10}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/h;ILjava/lang/String;DLjava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-virtual {p3}, Lcom/anythink/core/common/f/au;->Z()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 451
    iput-object p3, p0, Lcom/anythink/core/common/g;->K:Lcom/anythink/core/common/f/au;

    .line 456
    :cond_8
    invoke-direct {p0, p3}, Lcom/anythink/core/common/g;->c(Lcom/anythink/core/common/f/au;)V

    .line 459
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 462
    iget-object p2, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {p2, p3}, Lcom/anythink/core/common/p/f;->a(Lcom/anythink/core/common/f/au;)V

    const/4 p2, 0x3

    .line 468
    invoke-direct {p0, p3, p2}, Lcom/anythink/core/common/g;->b(Lcom/anythink/core/common/f/au;I)V

    .line 472
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/f/au;

    .line 475
    invoke-direct {p0, p2}, Lcom/anythink/core/common/g;->c(Lcom/anythink/core/common/f/au;)V

    const/4 p3, 0x1

    .line 479
    invoke-direct {p0, p2, p3}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/f/au;I)V

    goto :goto_5

    .line 481
    :cond_a
    monitor-exit v0

    return-void

    .line 418
    :cond_b
    :goto_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 481
    :goto_7
    monitor-exit v0

    throw p1
.end method

.method protected final b()V
    .locals 7

    .line 550
    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    iget-boolean v1, p0, Lcom/anythink/core/common/g;->l:Z

    iget-object v2, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/az;->a()Lcom/anythink/core/d/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/d/e;->A()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/common/p/f;->a(ZJ)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2620
    new-instance v2, Lcom/anythink/core/common/g$3;

    invoke-direct {v2, p0}, Lcom/anythink/core/common/g$3;-><init>(Lcom/anythink/core/common/g;)V

    .line 553
    iput-object v2, p0, Lcom/anythink/core/common/g;->E:Lcom/anythink/core/common/m/b;

    .line 557
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/anythink/core/common/g;->u:J

    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": start waterfall."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    iget-object v2, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/az;->i()J

    move-result-wide v2

    .line 2814
    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v4

    iget-object v5, p0, Lcom/anythink/core/common/g;->J:Lcom/anythink/core/common/m/b;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Lcom/anythink/core/common/m/a;->a(Lcom/anythink/core/common/m/b;JZ)V

    .line 566
    iget-object v2, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v2}, Lcom/anythink/core/common/p/f;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/anythink/core/common/g;->l:Z

    if-eqz v2, :cond_1

    .line 567
    invoke-direct {p0}, Lcom/anythink/core/common/g;->w()Z

    .line 571
    :cond_1
    iget-object v2, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v2}, Lcom/anythink/core/common/p/f;->u()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    .line 574
    invoke-direct {p0, v2, v3}, Lcom/anythink/core/common/g;->a(Ljava/util/List;I)V

    .line 3613
    iget-object v2, p0, Lcom/anythink/core/common/g;->E:Lcom/anythink/core/common/m/b;

    if-eqz v2, :cond_2

    .line 3615
    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v2

    iget-object v4, p0, Lcom/anythink/core/common/g;->E:Lcom/anythink/core/common/m/b;

    invoke-interface {v2, v4, v0, v1, v6}, Lcom/anythink/core/common/m/a;->a(Lcom/anythink/core/common/m/b;JZ)V

    .line 4584
    :cond_2
    iget-object v0, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/a/b$a;

    if-eqz v0, :cond_3

    .line 4585
    iget-object v0, p0, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/f/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->S()Lcom/anythink/core/common/f/h;

    move-result-object v0

    .line 4586
    iget-object v1, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/a/b$a;

    invoke-virtual {v1}, Lcom/anythink/core/common/a/b$a;->e()Lcom/anythink/core/common/f/au;

    move-result-object v1

    invoke-static {v0, v1, v6, v3}, Lcom/anythink/core/common/o/u;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/au;IZ)V

    .line 4587
    iget-object v1, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/a/b$a;

    iget-object v2, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/a/b$a;->a(Ljava/lang/String;Lcom/anythink/core/common/f/h;)V

    .line 4592
    :cond_3
    iget-object v0, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/az;->j()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_4

    .line 4593
    new-instance v0, Lcom/anythink/core/common/g$2;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/g$2;-><init>(Lcom/anythink/core/common/g;)V

    iput-object v0, p0, Lcom/anythink/core/common/g;->D:Lcom/anythink/core/common/m/b;

    .line 4605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": start filled count down.mWaterfallSetting.getWaitWaterfaillFillTime():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/az;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4606
    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/g;->D:Lcom/anythink/core/common/m/b;

    iget-object v2, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/az;->j()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3, v6}, Lcom/anythink/core/common/m/a;->a(Lcom/anythink/core/common/m/b;JZ)V

    return-void

    .line 4608
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": no filled count down."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 1820
    iget-boolean v0, p0, Lcom/anythink/core/common/g;->n:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/anythink/core/common/g;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    .line 1821
    invoke-virtual {v0}, Lcom/anythink/core/common/p/f;->c()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/f;->o()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    .line 1870
    iput-boolean v0, p0, Lcom/anythink/core/common/g;->q:Z

    .line 1871
    invoke-direct {p0}, Lcom/anythink/core/common/g;->s()V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 1878
    iget-object v0, p0, Lcom/anythink/core/common/g;->x:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1880
    :try_start_0
    iput-boolean v1, p0, Lcom/anythink/core/common/g;->l:Z

    .line 1881
    iput-boolean v1, p0, Lcom/anythink/core/common/g;->q:Z

    .line 1884
    invoke-direct {p0}, Lcom/anythink/core/common/g;->s()V

    .line 1887
    invoke-direct {p0}, Lcom/anythink/core/common/g;->l()V

    .line 1888
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final f()V
    .locals 4

    const/4 v0, 0x1

    .line 1896
    iput-boolean v0, p0, Lcom/anythink/core/common/g;->M:Z

    .line 1897
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/az;->a()Lcom/anythink/core/d/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/d/e;->ag()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1899
    iget-object v1, p0, Lcom/anythink/core/common/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f;->a(Ljava/lang/String;)V

    return-void

    .line 1901
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--format:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/az;->a()Lcom/anythink/core/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/d/e;->ag()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdManage is null--notifycancel"

    invoke-static {v2, v0, v1}, Lcom/anythink/core/common/n/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final g()V
    .locals 9

    .line 2000
    iget-object v0, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/f;->l()Ljava/util/List;

    move-result-object v0

    .line 2001
    monitor-enter v0

    .line 2002
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 2003
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/p/e;

    .line 2004
    invoke-virtual {v1}, Lcom/anythink/core/common/p/e;->a()Lcom/anythink/core/common/f/au;

    move-result-object v1

    .line 2007
    iget-boolean v2, p0, Lcom/anythink/core/common/g;->n:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/anythink/core/common/g;->w:I

    iget-object v3, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    .line 2008
    invoke-virtual {v3}, Lcom/anythink/core/common/f/az;->h()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 2009
    invoke-static {v1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/anythink/core/common/g;->y:D

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    .line 2011
    :cond_0
    iget-object v2, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v2, v1}, Lcom/anythink/core/common/p/f;->a(Lcom/anythink/core/common/f/au;)V

    const/4 v2, 0x4

    .line 2012
    invoke-direct {p0, v1, v2}, Lcom/anythink/core/common/g;->b(Lcom/anythink/core/common/f/au;I)V

    .line 2016
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 2017
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/p/e;

    .line 2018
    invoke-virtual {v2}, Lcom/anythink/core/common/p/e;->a()Lcom/anythink/core/common/f/au;

    move-result-object v3

    .line 2019
    iget-boolean v4, p0, Lcom/anythink/core/common/g;->n:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/anythink/core/common/g;->w:I

    iget-object v5, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    .line 2020
    invoke-virtual {v5}, Lcom/anythink/core/common/f/az;->h()I

    move-result v5

    if-lt v4, v5, :cond_3

    .line 2021
    invoke-static {v3}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v4

    iget-wide v6, p0, Lcom/anythink/core/common/g;->y:D

    cmpl-double v8, v4, v6

    if-lez v8, :cond_2

    .line 2023
    :cond_3
    invoke-virtual {v2}, Lcom/anythink/core/common/p/e;->b()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_6

    const/4 v4, 0x2

    if-eq v2, v4, :cond_5

    const/4 v4, 0x3

    if-eq v2, v4, :cond_4

    goto :goto_0

    .line 2036
    :cond_4
    iget-object v2, p0, Lcom/anythink/core/common/g;->G:Lcom/anythink/core/common/p/f;

    invoke-virtual {v2, v3}, Lcom/anythink/core/common/p/f;->a(Lcom/anythink/core/common/f/au;)V

    .line 2037
    invoke-direct {p0, v3, v4}, Lcom/anythink/core/common/g;->b(Lcom/anythink/core/common/f/au;I)V

    goto :goto_0

    .line 2031
    :cond_5
    invoke-direct {p0, v3, v4}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/f/au;I)V

    .line 2032
    invoke-direct {p0, v2}, Lcom/anythink/core/common/g;->d(I)V

    goto :goto_0

    .line 2027
    :cond_6
    invoke-direct {p0, v3, v4}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/f/au;I)V

    .line 2028
    invoke-direct {p0, v2}, Lcom/anythink/core/common/g;->d(I)V

    goto :goto_0

    .line 2045
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2046
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2047
    invoke-direct {p0}, Lcom/anythink/core/common/g;->l()V

    return-void

    :catchall_0
    move-exception v1

    .line 2046
    monitor-exit v0

    throw v1
.end method

.method public final h()Lcom/anythink/core/common/a/b$a;
    .locals 1

    .line 2103
    iget-object v0, p0, Lcom/anythink/core/common/g;->H:Lcom/anythink/core/common/a/b$a;

    return-object v0
.end method

.method public final i()Lcom/anythink/core/d/e;
    .locals 1

    .line 2141
    iget-object v0, p0, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/az;->a()Lcom/anythink/core/d/e;

    move-result-object v0

    return-object v0
.end method
