.class public Lcom/anythink/core/common/w;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/w$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "w"

.field private static volatile u:Lcom/anythink/core/common/w;


# instance fields
.field private b:Landroid/content/Context;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile d:Landroid/os/Handler;

.field private e:Lcom/anythink/core/common/l/d;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/l/e;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/l/e;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/l/e;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/l/b;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/w$a;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:Lcom/anythink/core/api/ATSharedPlacementConfig;

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private r:I

.field private s:J

.field private final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/anythink/core/common/w;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    iput v1, p0, Lcom/anythink/core/common/w;->n:I

    const/4 v0, 0x1

    .line 68
    iput v0, p0, Lcom/anythink/core/common/w;->o:I

    const/4 v0, 0x2

    .line 69
    iput v0, p0, Lcom/anythink/core/common/w;->p:I

    const/4 v0, 0x3

    .line 70
    iput v0, p0, Lcom/anythink/core/common/w;->q:I

    .line 72
    iput v1, p0, Lcom/anythink/core/common/w;->r:I

    const-wide/16 v0, -0x1

    .line 73
    iput-wide v0, p0, Lcom/anythink/core/common/w;->s:J

    const/16 v0, 0x7530

    .line 74
    iput v0, p0, Lcom/anythink/core/common/w;->t:I

    .line 133
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/w;->b:Landroid/content/Context;

    .line 134
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/core/common/w;->g:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;
    .locals 1

    .line 776
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/anythink/core/common/w;
    .locals 2

    .line 123
    sget-object v0, Lcom/anythink/core/common/w;->u:Lcom/anythink/core/common/w;

    if-nez v0, :cond_1

    .line 124
    const-class v0, Lcom/anythink/core/common/w;

    monitor-enter v0

    .line 125
    :try_start_0
    sget-object v1, Lcom/anythink/core/common/w;->u:Lcom/anythink/core/common/w;

    if-nez v1, :cond_0

    .line 126
    new-instance v1, Lcom/anythink/core/common/w;

    invoke-direct {v1}, Lcom/anythink/core/common/w;-><init>()V

    sput-object v1, Lcom/anythink/core/common/w;->u:Lcom/anythink/core/common/w;

    .line 127
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 129
    :cond_1
    :goto_0
    sget-object v0, Lcom/anythink/core/common/w;->u:Lcom/anythink/core/common/w;

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/l/e;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/l/e;",
            ">;"
        }
    .end annotation

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 433
    iget-object v1, p0, Lcom/anythink/core/common/w;->e:Lcom/anythink/core/common/l/d;

    invoke-virtual {v1}, Lcom/anythink/core/common/l/d;->b()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 435
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/common/l/e;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getNeedRequestList, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/core/common/l/e;

    invoke-virtual {v4}, Lcom/anythink/core/common/l/e;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 438
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method static synthetic a(Lcom/anythink/core/common/w;)Ljava/util/Map;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/anythink/core/common/w;->g:Ljava/util/Map;

    return-object p0
.end method

.method private a(Lcom/anythink/core/common/l/b;)V
    .locals 3

    .line 726
    invoke-virtual {p1}, Lcom/anythink/core/common/l/b;->d()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    return-void

    .line 731
    :cond_0
    invoke-virtual {p1}, Lcom/anythink/core/common/l/b;->b()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 736
    :cond_1
    iget p1, p0, Lcom/anythink/core/common/w;->l:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/anythink/core/common/w;->l:I

    .line 737
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "checkToRequestNextAd, current requestingCount: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/anythink/core/common/w;->l:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 741
    iget-object p1, p0, Lcom/anythink/core/common/w;->e:Lcom/anythink/core/common/l/d;

    invoke-virtual {p1}, Lcom/anythink/core/common/l/d;->b()I

    move-result p1

    .line 742
    iget v0, p0, Lcom/anythink/core/common/w;->l:I

    if-lt v0, p1, :cond_2

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkToRequestNextAd, requestingCount>parallelReqNum, requestingCount: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/anythink/core/common/w;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", parallelReqNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void

    .line 749
    :cond_2
    iget-object p1, p0, Lcom/anythink/core/common/w;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 750
    iget-object p1, p0, Lcom/anythink/core/common/w;->i:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/l/e;

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "checkToRequestNextAd, next ad: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/l/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    invoke-direct {p0, p1, v1}, Lcom/anythink/core/common/w;->a(Lcom/anythink/core/common/l/e;I)V

    return-void

    .line 756
    :cond_3
    iget p1, p0, Lcom/anythink/core/common/w;->l:I

    if-nez p1, :cond_4

    const/4 p1, 0x3

    .line 757
    iput p1, p0, Lcom/anythink/core/common/w;->r:I

    :cond_4
    return-void
.end method

.method private a(Lcom/anythink/core/common/l/e;I)V
    .locals 4

    if-nez p1, :cond_0

    .line 504
    sget-object p1, Lcom/anythink/core/common/w;->a:Ljava/lang/String;

    const-string p2, "loadSharedPlacement: sharedPlaceInfo = null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 507
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadSharedPlacement, loadType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/anythink/core/common/l/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    iget-object v0, p1, Lcom/anythink/core/common/l/e;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/anythink/core/common/w;->e(Ljava/lang/String;)V

    const/16 v0, 0xa

    const/4 v2, 0x1

    if-ne p2, v0, :cond_2

    .line 513
    iget v0, p0, Lcom/anythink/core/common/w;->l:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/anythink/core/common/w;->l:I

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "loadSharedPlacement, requestingCount: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/anythink/core/common/w;->l:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", loadType: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/anythink/core/common/l/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    iget-object v0, p0, Lcom/anythink/core/common/w;->h:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 519
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/w;->h:Ljava/util/Set;

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/anythink/core/common/w;->h:Ljava/util/Set;

    iget-object v1, p1, Lcom/anythink/core/common/l/e;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_2
    new-instance v0, Lcom/anythink/core/common/l/b;

    iget-object v1, p1, Lcom/anythink/core/common/l/e;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/anythink/core/common/l/b;-><init>(Ljava/lang/String;)V

    .line 525
    iget-object v1, p0, Lcom/anythink/core/common/w;->j:Ljava/util/Map;

    if-nez v1, :cond_3

    .line 526
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/anythink/core/common/w;->j:Ljava/util/Map;

    .line 528
    :cond_3
    iget-object v1, p0, Lcom/anythink/core/common/w;->j:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/anythink/core/common/l/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v1

    new-instance v3, Lcom/anythink/core/common/w$5;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/anythink/core/common/w$5;-><init>(Lcom/anythink/core/common/w;Lcom/anythink/core/common/l/e;ILcom/anythink/core/common/l/b;)V

    const/4 p1, 0x2

    .line 4137
    invoke-virtual {v1, v3, p1, v2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/w;Lcom/anythink/core/common/l/d;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/anythink/core/common/w;->b(Lcom/anythink/core/common/l/d;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/w;Lcom/anythink/core/common/l/e;)V
    .locals 1

    const/16 v0, 0xb

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/anythink/core/common/w;->a(Lcom/anythink/core/common/l/e;I)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/w;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/anythink/core/common/w;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/w;Ljava/lang/String;Lcom/anythink/core/common/l/e;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/anythink/core/common/w;->a(Ljava/lang/String;Lcom/anythink/core/common/l/e;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/w;Ljava/lang/String;Lcom/anythink/core/common/l/e;Lcom/anythink/core/api/AdError;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/core/common/w;->a(Ljava/lang/String;Lcom/anythink/core/common/l/e;Lcom/anythink/core/api/AdError;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/anythink/core/common/l/e;)V
    .locals 10

    monitor-enter p0

    .line 680
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAdLoaded, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/anythink/core/common/l/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    iget-object v0, p0, Lcom/anythink/core/common/w;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/l/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 683
    monitor-exit p0

    return-void

    .line 4168
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isNeedToScheduleLoadTask, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/anythink/core/common/l/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4172
    iget-object v0, p2, Lcom/anythink/core/common/l/e;->b:Ljava/lang/String;

    .line 4174
    iget v1, p2, Lcom/anythink/core/common/l/e;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 4764
    invoke-virtual {p0, v0}, Lcom/anythink/core/common/w;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4766
    invoke-static {v0, v1}, Lcom/anythink/core/common/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    const/4 v0, 0x0

    const/4 v7, 0x1

    if-nez v1, :cond_2

    .line 4176
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isNeedToScheduleLoadTask, commonAdManagerForSharedPlacement = null, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/anythink/core/common/l/e;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 4181
    :cond_2
    iget v2, p2, Lcom/anythink/core/common/l/e;->d:I

    .line 4182
    iget-wide v8, p2, Lcom/anythink/core/common/l/e;->e:D

    if-lez v2, :cond_3

    .line 4185
    iget-object v3, p0, Lcom/anythink/core/common/w;->b:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 4187
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v2, :cond_3

    .line 4188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isNeedToScheduleLoadTask, need to schedule load task because cache num not meet. current ad cache size: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4189
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4190
    invoke-virtual {p2}, Lcom/anythink/core/common/l/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const-wide/16 v2, 0x0

    cmpl-double v4, v8, v2

    if-lez v4, :cond_5

    .line 4201
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 4202
    iget-object v2, p0, Lcom/anythink/core/common/w;->b:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;ZZLjava/util/Map;Lcom/anythink/core/common/f/c;)Lcom/anythink/core/common/f/b;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 4205
    invoke-virtual {v1}, Lcom/anythink/core/common/f/b;->m()D

    move-result-wide v2

    cmpg-double v4, v2, v8

    if-gez v4, :cond_5

    .line 4206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isNeedToScheduleLoadTask, need to schedule load task because cache price not meet. current ad cache price: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4207
    invoke-virtual {v1}, Lcom/anythink/core/common/f/b;->m()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4208
    invoke-virtual {p2}, Lcom/anythink/core/common/l/e;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 691
    invoke-virtual {p1}, Lcom/anythink/core/common/l/b;->e()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/anythink/core/common/w;->d(Ljava/lang/String;)V

    .line 695
    :cond_6
    invoke-direct {p0, p1}, Lcom/anythink/core/common/w;->a(Lcom/anythink/core/common/l/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 696
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/anythink/core/common/l/e;Lcom/anythink/core/api/AdError;)V
    .locals 2

    monitor-enter p0

    .line 699
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAdError, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/anythink/core/common/l/e;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", \n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/anythink/core/api/AdError;->getFullErrorInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    iget-object p2, p0, Lcom/anythink/core/common/w;->j:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/l/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 702
    monitor-exit p0

    return-void

    .line 706
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/anythink/core/common/l/b;->e()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/anythink/core/common/w;->d(Ljava/lang/String;)V

    .line 709
    invoke-direct {p0, p1}, Lcom/anythink/core/common/w;->a(Lcom/anythink/core/common/l/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 710
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Lcom/anythink/core/common/l/e;)Z
    .locals 11

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isNeedToScheduleLoadTask, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/l/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v0, p1, Lcom/anythink/core/common/l/e;->b:Ljava/lang/String;

    .line 174
    iget v1, p1, Lcom/anythink/core/common/l/e;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1764
    invoke-virtual {p0, v0}, Lcom/anythink/core/common/w;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1766
    invoke-static {v0, v1}, Lcom/anythink/core/common/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    const/4 v0, 0x0

    if-nez v1, :cond_1

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isNeedToScheduleLoadTask, commonAdManagerForSharedPlacement = null, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/l/e;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v0

    .line 181
    :cond_1
    iget v2, p1, Lcom/anythink/core/common/l/e;->d:I

    .line 182
    iget-wide v7, p1, Lcom/anythink/core/common/l/e;->e:D

    const-string v9, "\n"

    const/4 v10, 0x1

    if-lez v2, :cond_2

    .line 185
    iget-object v3, p0, Lcom/anythink/core/common/w;->b:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 187
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v2, :cond_2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isNeedToScheduleLoadTask, need to schedule load task because cache num not meet. current ad cache size: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p1}, Lcom/anythink/core/common/l/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    return v10

    :cond_3
    const-wide/16 v2, 0x0

    cmpl-double v4, v7, v2

    if-lez v4, :cond_4

    .line 201
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 202
    iget-object v2, p0, Lcom/anythink/core/common/w;->b:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;ZZLjava/util/Map;Lcom/anythink/core/common/f/c;)Lcom/anythink/core/common/f/b;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 205
    invoke-virtual {v1}, Lcom/anythink/core/common/f/b;->m()D

    move-result-wide v2

    cmpg-double v4, v2, v7

    if-gez v4, :cond_4

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isNeedToScheduleLoadTask, need to schedule load task because cache price not meet. current ad cache price: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v1}, Lcom/anythink/core/common/f/b;->m()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p1}, Lcom/anythink/core/common/l/e;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    move v10, v0

    :goto_1
    return v10
.end method

.method static synthetic b(Lcom/anythink/core/common/w;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/anythink/core/common/w;->i:Ljava/util/List;

    return-object p0
.end method

.method private declared-synchronized b(Lcom/anythink/core/common/l/d;)V
    .locals 6

    monitor-enter p0

    .line 260
    :try_start_0
    iput-object p1, p0, Lcom/anythink/core/common/w;->e:Lcom/anythink/core/common/l/d;

    .line 261
    iget-object v0, p0, Lcom/anythink/core/common/w;->g:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 262
    :try_start_1
    iget-object v1, p0, Lcom/anythink/core/common/w;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 263
    iget-object v1, p0, Lcom/anythink/core/common/w;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/anythink/core/common/l/d;->d()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 264
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :try_start_2
    invoke-virtual {p1}, Lcom/anythink/core/common/l/d;->e()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/w;->f:Ljava/util/List;

    .line 270
    iget p1, p0, Lcom/anythink/core/common/w;->r:I

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 273
    iput p1, p0, Lcom/anythink/core/common/w;->r:I

    .line 275
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/w;->i:Ljava/util/List;

    .line 276
    iget-object p1, p0, Lcom/anythink/core/common/w;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/l/e;

    .line 277
    iget-object v1, p0, Lcom/anythink/core/common/w;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v1, v0, Lcom/anythink/core/common/l/e;->b:Ljava/lang/String;

    iget v0, v0, Lcom/anythink/core/common/l/e;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/anythink/core/common/w;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 287
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/anythink/core/common/w;->s:J

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    .line 288
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, v4, v0

    .line 292
    :cond_1
    invoke-direct {p0}, Lcom/anythink/core/common/w;->d()Landroid/os/Handler;

    move-result-object p1

    new-instance v2, Lcom/anythink/core/common/w$2;

    invoke-direct {v2, p0}, Lcom/anythink/core/common/w$2;-><init>(Lcom/anythink/core/common/w;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 307
    monitor-exit p0

    return-void

    .line 310
    :cond_2
    :try_start_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    iget-object v1, p0, Lcom/anythink/core/common/w;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/l/e;

    .line 315
    iget-object v2, v2, Lcom/anythink/core/common/l/e;->b:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 318
    :cond_3
    iget-object v1, p0, Lcom/anythink/core/common/w;->h:Ljava/util/Set;

    if-eqz v1, :cond_4

    .line 319
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 324
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 325
    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 327
    :cond_5
    iget-object v1, p0, Lcom/anythink/core/common/w;->h:Ljava/util/Set;

    if-eqz v1, :cond_6

    .line 328
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 333
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 334
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/w;->i:Ljava/util/List;

    .line 335
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 336
    iget-object v2, p0, Lcom/anythink/core/common/w;->g:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/l/e;

    .line 338
    iget-object v3, v2, Lcom/anythink/core/common/l/e;->b:Ljava/lang/String;

    iget v4, v2, Lcom/anythink/core/common/l/e;->a:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/anythink/core/common/w;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget v3, p0, Lcom/anythink/core/common/w;->r:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleSharedPlacement, find open placement id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", start load"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 2446
    invoke-direct {p0, v2, v1}, Lcom/anythink/core/common/w;->a(Lcom/anythink/core/common/l/e;I)V

    goto :goto_2

    .line 346
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "handleSharedPlacement, update waiting list: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/anythink/core/common/l/e;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    iget-object v1, p0, Lcom/anythink/core/common/w;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 355
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 356
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 358
    invoke-direct {p0, v0}, Lcom/anythink/core/common/w;->e(Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/anythink/core/common/w;->h:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 369
    :cond_9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 264
    :try_start_4
    monitor-exit v0

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b(Lcom/anythink/core/common/l/e;)V
    .locals 1

    const/16 v0, 0xa

    .line 446
    invoke-direct {p0, p1, v0}, Lcom/anythink/core/common/w;->a(Lcom/anythink/core/common/l/e;I)V

    return-void
.end method

.method static synthetic b(Lcom/anythink/core/common/w;Lcom/anythink/core/common/l/e;)V
    .locals 1

    const/4 v0, 0x6

    .line 5451
    invoke-direct {p0, p1, v0}, Lcom/anythink/core/common/w;->a(Lcom/anythink/core/common/l/e;I)V

    return-void
.end method

.method static synthetic b(Lcom/anythink/core/common/w;Ljava/lang/String;Lcom/anythink/core/common/l/e;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/anythink/core/common/w;->b(Ljava/lang/String;Lcom/anythink/core/common/l/e;)V

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;Lcom/anythink/core/common/l/e;)V
    .locals 2

    monitor-enter p0

    .line 713
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAdLoadTimeout, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/anythink/core/common/l/e;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    iget-object p2, p0, Lcom/anythink/core/common/w;->j:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/l/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 716
    monitor-exit p0

    return-void

    .line 720
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/anythink/core/common/w;->a(Lcom/anythink/core/common/l/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 721
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prepare, shared placement id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", setAutoLoadStatus to false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Z)V

    .line 376
    invoke-direct {p0, p1, p2}, Lcom/anythink/core/common/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/anythink/core/common/w;)I
    .locals 1

    const/4 v0, 0x3

    .line 43
    iput v0, p0, Lcom/anythink/core/common/w;->r:I

    return v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/anythink/core/common/w;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c(Lcom/anythink/core/common/l/e;)V
    .locals 1

    const/4 v0, 0x6

    .line 451
    invoke-direct {p0, p1, v0}, Lcom/anythink/core/common/w;->a(Lcom/anythink/core/common/l/e;I)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/anythink/core/common/w;->m:Lcom/anythink/core/api/ATSharedPlacementConfig;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 387
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "4"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_1
    const-string v2, "3"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_2
    const-string v2, "2"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_3
    const-string v2, "1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_4
    const-string v2, "0"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 395
    :pswitch_5
    iget-object p2, p0, Lcom/anythink/core/common/w;->m:Lcom/anythink/core/api/ATSharedPlacementConfig;

    invoke-virtual {p2}, Lcom/anythink/core/api/ATSharedPlacementConfig;->getSplashLocalExtra()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 392
    :pswitch_6
    iget-object p2, p0, Lcom/anythink/core/common/w;->m:Lcom/anythink/core/api/ATSharedPlacementConfig;

    invoke-virtual {p2}, Lcom/anythink/core/api/ATSharedPlacementConfig;->getInterstitialLocalExtra()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 399
    :pswitch_7
    iget-object p2, p0, Lcom/anythink/core/common/w;->m:Lcom/anythink/core/api/ATSharedPlacementConfig;

    invoke-virtual {p2}, Lcom/anythink/core/api/ATSharedPlacementConfig;->getBannerLocalExtra()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 389
    :pswitch_8
    iget-object p2, p0, Lcom/anythink/core/common/w;->m:Lcom/anythink/core/api/ATSharedPlacementConfig;

    invoke-virtual {p2}, Lcom/anythink/core/api/ATSharedPlacementConfig;->getRewardVideoLocalExtra()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 402
    :pswitch_9
    iget-object p2, p0, Lcom/anythink/core/common/w;->m:Lcom/anythink/core/api/ATSharedPlacementConfig;

    invoke-virtual {p2}, Lcom/anythink/core/api/ATSharedPlacementConfig;->getNativeLocalExtra()Ljava/util/Map;

    move-result-object v0

    .line 407
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "prepare, shared placement id: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", putPlacementLocalSettingMap: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    const-string v1, "null"

    :goto_2
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private d()Landroid/os/Handler;
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/anythink/core/common/w;->d:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 143
    const-class v0, Lcom/anythink/core/common/w;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/w;->d:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 145
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/o/b/b;->a(I)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/w;->d:Landroid/os/Handler;

    .line 147
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 150
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/anythink/core/common/w;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;
    .locals 1

    .line 764
    invoke-virtual {p0, p1}, Lcom/anythink/core/common/w;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    invoke-static {p1, p2}, Lcom/anythink/core/common/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic d(Lcom/anythink/core/common/w;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/anythink/core/common/w;->e()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    .line 596
    invoke-virtual {p0, p1}, Lcom/anythink/core/common/w;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "startScheduleLoadTask, placementId: "

    if-nez v0, :cond_0

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", not valid shared placement, do nothing"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/w;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/l/e;

    if-nez v0, :cond_1

    .line 602
    sget-object p1, Lcom/anythink/core/common/w;->a:Ljava/lang/String;

    const-string v0, "startScheduleLoadTask: sharedPlaceInfo = null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 606
    :cond_1
    iget-object v2, p0, Lcom/anythink/core/common/w;->k:Ljava/util/Map;

    if-nez v2, :cond_2

    .line 607
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v2, p0, Lcom/anythink/core/common/w;->k:Ljava/util/Map;

    .line 611
    :cond_2
    iget v2, v0, Lcom/anythink/core/common/l/e;->c:I

    const/16 v3, 0x7530

    if-ge v2, v3, :cond_3

    const/16 v2, 0x7530

    .line 616
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", start schedule load task, requestInterval: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", originRequestInterval: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/anythink/core/common/l/e;->c:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 618
    new-instance v0, Lcom/anythink/core/common/w$a;

    invoke-direct {v0, p0, p1}, Lcom/anythink/core/common/w$a;-><init>(Lcom/anythink/core/common/w;Ljava/lang/String;)V

    .line 619
    iget-object v1, p0, Lcom/anythink/core/common/w;->k:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    invoke-direct {p0}, Lcom/anythink/core/common/w;->d()Landroid/os/Handler;

    move-result-object p1

    int-to-long v1, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic e(Lcom/anythink/core/common/w;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/anythink/core/common/w;->r:I

    return p0
.end method

.method private declared-synchronized e()V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x2

    .line 415
    :try_start_0
    iput v0, p0, Lcom/anythink/core/common/w;->r:I

    .line 417
    iget-object v0, p0, Lcom/anythink/core/common/w;->i:Ljava/util/List;

    .line 3431
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3433
    iget-object v2, p0, Lcom/anythink/core/common/w;->e:Lcom/anythink/core/common/l/d;

    invoke-virtual {v2}, Lcom/anythink/core/common/l/d;->b()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 3435
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/core/common/l/e;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3436
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getNeedRequestList, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anythink/core/common/l/e;

    invoke-virtual {v5}, Lcom/anythink/core/common/l/e;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3438
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 420
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/l/e;

    const/16 v2, 0xa

    .line 3446
    invoke-direct {p0, v1, v2}, Lcom/anythink/core/common/w;->a(Lcom/anythink/core/common/l/e;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 424
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    .line 628
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/w;->k:Ljava/util/Map;

    const-string v1, ", timer is not on, do nothing"

    const-string v2, "stopScheduleLoadTask, placementId: "

    if-nez v0, :cond_1

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 637
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/w$a;

    if-eqz v0, :cond_2

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", stop timer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-direct {p0}, Lcom/anythink/core/common/w;->d()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 642
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic f(Lcom/anythink/core/common/w;)Ljava/util/Map;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/anythink/core/common/w;->k:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/core/common/w;)Lcom/anythink/core/common/l/d;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/anythink/core/common/w;->e:Lcom/anythink/core/common/l/d;

    return-object p0
.end method

.method static synthetic h(Lcom/anythink/core/common/w;)Landroid/os/Handler;
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/anythink/core/common/w;->d()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/anythink/core/api/ATSharedPlacementConfig;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_1

    .line 79
    :try_start_0
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "anythink"

    const-string v0, "setSharedPlacementConfig: null"

    .line 80
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_0
    monitor-exit p0

    return-void

    .line 85
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "anythink"

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSharedPlacementConfig: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/api/ATSharedPlacementConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_2
    iput-object p1, p0, Lcom/anythink/core/common/w;->m:Lcom/anythink/core/api/ATSharedPlacementConfig;

    .line 90
    iget-object p1, p0, Lcom/anythink/core/common/w;->f:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 91
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/l/e;

    .line 92
    iget-object v1, v0, Lcom/anythink/core/common/l/e;->b:Ljava/lang/String;

    iget v0, v0, Lcom/anythink/core/common/l/e;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/anythink/core/common/w;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/anythink/core/common/l/d;)V
    .locals 5

    monitor-enter p0

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/w;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lcom/anythink/core/common/l/d;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 231
    iget v0, p0, Lcom/anythink/core/common/w;->r:I

    if-nez v0, :cond_2

    .line 234
    iget-wide v0, p0, Lcom/anythink/core/common/w;->s:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 235
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/anythink/core/common/l/d;->a()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/anythink/core/common/w;->s:J

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sharedPlacementEntry, delay time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/l/d;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp when preloading started: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/anythink/core/common/w;->s:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/anythink/core/common/w;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 242
    monitor-exit p0

    return-void

    .line 247
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/anythink/core/common/w;->d()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/w$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/common/w$1;-><init>(Lcom/anythink/core/common/w;Lcom/anythink/core/common/l/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 456
    :try_start_0
    invoke-direct {p0}, Lcom/anythink/core/common/w;->d()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/w$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/common/w$3;-><init>(Lcom/anythink/core/common/w;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/anythink/core/d/e;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 162
    :cond_0
    invoke-virtual {p1}, Lcom/anythink/core/d/e;->j()Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-virtual {p0, p1}, Lcom/anythink/core/common/w;->c(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 476
    :try_start_0
    invoke-direct {p0}, Lcom/anythink/core/common/w;->d()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/w$4;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/common/w$4;-><init>(Lcom/anythink/core/common/w;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Z
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/anythink/core/common/w;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 652
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/w;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 658
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 663
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 667
    :cond_2
    iget-object v1, p0, Lcom/anythink/core/common/w;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    return v0
.end method
