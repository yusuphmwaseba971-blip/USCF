.class public final Lcom/anythink/expressad/videocommon/b/n;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/lang/String; = "UnitCacheCtroller"


# instance fields
.field a:Lcom/anythink/expressad/d/c;

.field b:Lcom/anythink/expressad/d/c;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Lcom/anythink/expressad/videocommon/d/b;

.field private g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/expressad/videocommon/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/anythink/expressad/videocommon/b/f;

.field private i:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/expressad/videocommon/b/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private j:Landroid/content/Context;

.field private k:Ljava/util/concurrent/ExecutorService;

.field private l:J

.field private m:Ljava/lang/String;

.field private n:Lcom/anythink/expressad/videocommon/e/d;

.field private o:I

.field private p:I

.field private q:Lcom/anythink/expressad/d/c;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/foundation/d/c;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;I)V
    .locals 3

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->d:Ljava/util/List;

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/anythink/expressad/videocommon/b/n;->e:Z

    .line 52
    new-instance v1, Lcom/anythink/expressad/videocommon/b/n$1;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/videocommon/b/n$1;-><init>(Lcom/anythink/expressad/videocommon/b/n;)V

    iput-object v1, p0, Lcom/anythink/expressad/videocommon/b/n;->h:Lcom/anythink/expressad/videocommon/b/f;

    .line 69
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/16 v1, 0xe10

    .line 75
    iput-wide v1, p0, Lcom/anythink/expressad/videocommon/b/n;->l:J

    const/4 v1, 0x2

    .line 84
    iput v1, p0, Lcom/anythink/expressad/videocommon/b/n;->o:I

    .line 95
    iput v0, p0, Lcom/anythink/expressad/videocommon/b/n;->p:I

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->a:Lcom/anythink/expressad/d/c;

    .line 97
    iput-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->b:Lcom/anythink/expressad/d/c;

    .line 114
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->j:Landroid/content/Context;

    .line 116
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 117
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_0
    iput-object p2, p0, Lcom/anythink/expressad/videocommon/b/n;->k:Ljava/util/concurrent/ExecutorService;

    .line 120
    iput-object p3, p0, Lcom/anythink/expressad/videocommon/b/n;->m:Ljava/lang/String;

    .line 121
    iput p4, p0, Lcom/anythink/expressad/videocommon/b/n;->p:I

    .line 122
    iget-object p1, p0, Lcom/anythink/expressad/videocommon/b/n;->d:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/anythink/expressad/videocommon/b/n;->c(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->d:Ljava/util/List;

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/anythink/expressad/videocommon/b/n;->e:Z

    .line 52
    new-instance v1, Lcom/anythink/expressad/videocommon/b/n$1;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/videocommon/b/n$1;-><init>(Lcom/anythink/expressad/videocommon/b/n;)V

    iput-object v1, p0, Lcom/anythink/expressad/videocommon/b/n;->h:Lcom/anythink/expressad/videocommon/b/f;

    .line 69
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/16 v1, 0xe10

    .line 75
    iput-wide v1, p0, Lcom/anythink/expressad/videocommon/b/n;->l:J

    const/4 v1, 0x2

    .line 84
    iput v1, p0, Lcom/anythink/expressad/videocommon/b/n;->o:I

    .line 95
    iput v0, p0, Lcom/anythink/expressad/videocommon/b/n;->p:I

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->a:Lcom/anythink/expressad/d/c;

    .line 97
    iput-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->b:Lcom/anythink/expressad/d/c;

    .line 102
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->j:Landroid/content/Context;

    .line 104
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 105
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    :cond_0
    iput-object p2, p0, Lcom/anythink/expressad/videocommon/b/n;->k:Ljava/util/concurrent/ExecutorService;

    .line 108
    iput-object p3, p0, Lcom/anythink/expressad/videocommon/b/n;->m:Ljava/lang/String;

    .line 109
    iput p4, p0, Lcom/anythink/expressad/videocommon/b/n;->p:I

    .line 110
    iget-object p1, p0, Lcom/anythink/expressad/videocommon/b/n;->d:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/anythink/expressad/videocommon/b/n;->c(Ljava/util/List;)V

    return-void
.end method

.method private static declared-synchronized a(Lcom/anythink/expressad/videocommon/b/c;)V
    .locals 4

    const-class v0, Lcom/anythink/expressad/videocommon/b/n;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 862
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/expressad/videocommon/b/c;->n()Lcom/anythink/expressad/foundation/d/c;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 865
    monitor-exit v0

    return-void

    .line 867
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->w()I

    move-result v2

    const/16 v3, 0x5e

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->w()I

    move-result v1

    const/16 v2, 0x11f

    if-ne v1, v2, :cond_3

    .line 868
    :cond_2
    invoke-static {p0}, Lcom/anythink/expressad/videocommon/b/n;->c(Lcom/anythink/expressad/videocommon/b/c;)Ljava/lang/String;

    move-result-object v1

    .line 869
    invoke-virtual {p0, v1}, Lcom/anythink/expressad/videocommon/b/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 871
    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private a(Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;)Z
    .locals 3

    .line 1022
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1025
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/expressad/videocommon/b/n;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/videocommon/b/l;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private static a(Lcom/anythink/expressad/videocommon/b/c;I)Z
    .locals 8

    .line 826
    invoke-virtual {p0}, Lcom/anythink/expressad/videocommon/b/c;->p()J

    move-result-wide v0

    .line 827
    invoke-virtual {p0}, Lcom/anythink/expressad/videocommon/b/c;->f()J

    move-result-wide v2

    .line 828
    invoke-virtual {p0}, Lcom/anythink/expressad/videocommon/b/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    return v5

    :cond_0
    if-nez p1, :cond_1

    .line 834
    invoke-virtual {p0}, Lcom/anythink/expressad/videocommon/b/c;->n()Lcom/anythink/expressad/foundation/d/c;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/anythink/expressad/videocommon/b/c;->n()Lcom/anythink/expressad/foundation/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 835
    invoke-static {p0}, Lcom/anythink/expressad/videocommon/b/n;->a(Lcom/anythink/expressad/videocommon/b/c;)V

    return v5

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-lez v4, :cond_2

    const-wide/16 v6, 0x64

    mul-long v0, v0, v6

    int-to-long v6, p1

    mul-long v2, v2, v6

    cmp-long p1, v0, v2

    if-ltz p1, :cond_2

    .line 840
    invoke-static {p0}, Lcom/anythink/expressad/videocommon/b/n;->a(Lcom/anythink/expressad/videocommon/b/c;)V

    return v5

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/anythink/expressad/videocommon/b/n;)Z
    .locals 1

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/anythink/expressad/videocommon/b/n;->e:Z

    return v0
.end method

.method private static a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)Z
    .locals 3

    .line 953
    :try_start_0
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 954
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 960
    :cond_0
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 961
    invoke-static {p0}, Lcom/anythink/expressad/foundation/h/t;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 966
    :cond_1
    invoke-static {p0}, Lcom/anythink/expressad/foundation/h/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 970
    :cond_2
    invoke-static {p0, p1}, Lcom/anythink/expressad/videocommon/b/n;->b(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_3

    return v1

    :catchall_0
    move-exception p0

    .line 976
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/util/concurrent/CopyOnWriteArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/expressad/videocommon/b/c;",
            ">;>;)Z"
        }
    .end annotation

    .line 1105
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1109
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1110
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1112
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/videocommon/b/c;

    .line 1113
    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/b/c;->k()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return v2

    :catchall_0
    move-exception p0

    .line 1120
    sget-boolean v0, Lcom/anythink/expressad/a;->a:Z

    if-eqz v0, :cond_2

    .line 1121
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private b(Lcom/anythink/expressad/foundation/d/c;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    .line 616
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->ao()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 617
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->ao()I

    move-result v0

    goto :goto_0

    .line 620
    :cond_0
    invoke-direct {p0, p1}, Lcom/anythink/expressad/videocommon/b/n;->d(Lcom/anythink/expressad/foundation/d/c;)I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic b(Lcom/anythink/expressad/videocommon/b/n;)Lcom/anythink/expressad/videocommon/d/b;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/anythink/expressad/videocommon/b/n;->f:Lcom/anythink/expressad/videocommon/d/b;

    return-object p0
.end method

.method private static declared-synchronized b(Lcom/anythink/expressad/videocommon/b/c;)Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/anythink/expressad/videocommon/b/n;

    monitor-enter v0

    .line 1128
    :try_start_0
    invoke-static {p0}, Lcom/anythink/expressad/videocommon/b/n;->c(Lcom/anythink/expressad/videocommon/b/c;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b(Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;)Z
    .locals 3

    .line 1036
    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1040
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1041
    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1049
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/d/c;->av()I

    move-result p0

    if-nez p0, :cond_2

    .line 1050
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "check template download state:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/videocommon/b/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/videocommon/b/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method private static b(Lcom/anythink/expressad/videocommon/b/c;I)Z
    .locals 0

    .line 942
    invoke-static {p0, p1}, Lcom/anythink/expressad/videocommon/b/n;->a(Lcom/anythink/expressad/videocommon/b/c;I)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)Z
    .locals 2

    .line 990
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->H()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 995
    :cond_0
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->av()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 996
    invoke-static {p1}, Lcom/anythink/expressad/videocommon/b/n;->c(Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1001
    :cond_1
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1002
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 1009
    :cond_2
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/anythink/expressad/videocommon/b/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 4030
    :cond_3
    sget-object p1, Lcom/anythink/expressad/videocommon/b/j$a;->a:Lcom/anythink/expressad/videocommon/b/j;

    .line 1013
    invoke-virtual {p1, p0}, Lcom/anythink/expressad/videocommon/b/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_0
    return v1
.end method

.method public static b(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)Z"
        }
    .end annotation

    .line 389
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/foundation/d/c;

    .line 390
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v4

    .line 391
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v5

    .line 393
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->be()Ljava/lang/String;

    move-result-object v6

    .line 394
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->bd()Ljava/lang/String;

    move-result-object v7

    if-eqz v3, :cond_1

    .line 395
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 396
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    const-string v8, ""

    .line 398
    :goto_1
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    if-eqz v2, :cond_3

    .line 400
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "cmpt=1"

    .line 401
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 402
    invoke-static {v3, v8}, Lcom/anythink/expressad/videocommon/b/n;->b(Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    :goto_2
    const/4 v2, 0x0

    goto :goto_0

    .line 408
    :cond_3
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v8

    .line 409
    invoke-static {v4}, Lcom/anythink/expressad/foundation/h/t;->f(Ljava/lang/String;)Z

    move-result v9

    if-eqz v8, :cond_5

    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v8, 0x1

    :goto_4
    if-eqz v2, :cond_6

    if-eqz v8, :cond_6

    .line 417
    invoke-static {v4, v3}, Lcom/anythink/expressad/videocommon/b/n;->b(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    .line 422
    invoke-static {v5}, Lcom/anythink/expressad/foundation/h/w;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 423
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/a;->a()Lcom/anythink/expressad/videocommon/b/a;

    invoke-static {v5}, Lcom/anythink/expressad/videocommon/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 424
    invoke-static {v3}, Lcom/anythink/expressad/foundation/h/w;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v8, 0x0

    cmp-long v5, v3, v8

    if-gtz v5, :cond_7

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_9

    .line 430
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 431
    invoke-static {v6}, Lcom/anythink/expressad/foundation/h/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 432
    invoke-static {v3}, Lcom/anythink/expressad/foundation/g/d/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 433
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    const/4 v2, 0x0

    :cond_9
    if-eqz v2, :cond_0

    .line 437
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 438
    invoke-static {v7}, Lcom/anythink/expressad/foundation/h/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 439
    invoke-static {v3}, Lcom/anythink/expressad/foundation/g/d/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 440
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_a
    return v2
.end method

.method private static declared-synchronized c(Lcom/anythink/expressad/videocommon/b/c;)Ljava/lang/String;
    .locals 7

    const-class v0, Lcom/anythink/expressad/videocommon/b/n;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1133
    monitor-exit v0

    return-object p0

    .line 1135
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/anythink/expressad/videocommon/b/c;->n()Lcom/anythink/expressad/foundation/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1137
    :try_start_2
    invoke-virtual {p0}, Lcom/anythink/expressad/videocommon/b/c;->k()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 1138
    invoke-virtual {p0}, Lcom/anythink/expressad/videocommon/b/c;->e()Ljava/lang/String;

    move-result-object p0

    .line 1139
    invoke-static {p0}, Lcom/anythink/expressad/foundation/h/w;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    move-object v1, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1144
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1146
    :cond_1
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic c(Lcom/anythink/expressad/videocommon/b/n;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/anythink/expressad/videocommon/b/n;->g:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private c(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_14

    .line 151
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/anythink/expressad/videocommon/b/n;->f()V

    .line 156
    invoke-direct {p0}, Lcom/anythink/expressad/videocommon/b/n;->e()V

    .line 158
    iget v0, p0, Lcom/anythink/expressad/videocommon/b/n;->p:I

    const/16 v1, 0x5e

    const/16 v2, 0x11f

    const/4 v3, 0x1

    if-eq v0, v3, :cond_9

    if-eq v0, v2, :cond_5

    const/16 v4, 0x12a

    if-eq v0, v4, :cond_3

    if-eq v0, v1, :cond_5

    const/16 v4, 0x5f

    if-eq v0, v4, :cond_1

    goto/16 :goto_0

    .line 192
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 193
    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    .line 194
    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->b()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/b/a;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/anythink/expressad/videocommon/b/n;->m:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/anythink/expressad/d/b;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object v0

    if-nez v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/expressad/d/c;->d(Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_b

    .line 199
    invoke-virtual {v0}, Lcom/anythink/expressad/d/c;->i()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/anythink/expressad/videocommon/b/n;->l:J

    .line 200
    invoke-virtual {v0}, Lcom/anythink/expressad/d/c;->m()I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/videocommon/b/n;->o:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    return-void

    .line 178
    :cond_3
    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->b()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/b/a;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/anythink/expressad/videocommon/b/n;->m:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/anythink/expressad/d/b;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->b:Lcom/anythink/expressad/d/c;

    if-nez v0, :cond_4

    .line 180
    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->b()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/b/a;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/anythink/expressad/videocommon/b/n;->m:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/anythink/expressad/d/b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->b:Lcom/anythink/expressad/d/c;

    .line 182
    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->b:Lcom/anythink/expressad/d/c;

    if-eqz v0, :cond_b

    .line 183
    invoke-virtual {v0}, Lcom/anythink/expressad/d/c;->i()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/anythink/expressad/videocommon/b/n;->l:J

    .line 184
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->b:Lcom/anythink/expressad/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/d/c;->m()I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/videocommon/b/n;->o:I

    goto/16 :goto_0

    .line 212
    :cond_5
    :try_start_1
    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/e/c;->b()Lcom/anythink/expressad/videocommon/e/a;

    move-result-object v0

    if-nez v0, :cond_6

    .line 214
    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->c()Lcom/anythink/expressad/videocommon/e/a;

    :cond_6
    if-eqz v0, :cond_7

    .line 217
    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/e/a;->e()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/anythink/expressad/videocommon/b/n;->l:J

    .line 219
    :cond_7
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 220
    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v0

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->b()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/expressad/foundation/b/a;->e()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/anythink/expressad/videocommon/b/n;->m:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->n:Lcom/anythink/expressad/videocommon/e/d;

    .line 222
    :cond_8
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->n:Lcom/anythink/expressad/videocommon/e/d;

    if-eqz v0, :cond_b

    .line 223
    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/e/d;->F()I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/videocommon/b/n;->o:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    return-void

    .line 162
    :cond_9
    :try_start_2
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 163
    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->b()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/b/a;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/anythink/expressad/videocommon/b/n;->m:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/anythink/expressad/d/b;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->a:Lcom/anythink/expressad/d/c;

    if-nez v0, :cond_a

    .line 165
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/expressad/d/c;->c(Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->a:Lcom/anythink/expressad/d/c;

    .line 167
    :cond_a
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->a:Lcom/anythink/expressad/d/c;

    if-eqz v0, :cond_b

    .line 168
    invoke-virtual {v0}, Lcom/anythink/expressad/d/c;->i()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/anythink/expressad/videocommon/b/n;->l:J

    .line 169
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->a:Lcom/anythink/expressad/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/d/c;->m()I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/videocommon/b/n;->o:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_b
    :goto_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 233
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_13

    .line 234
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v5, :cond_12

    .line 238
    iget v6, p0, Lcom/anythink/expressad/videocommon/b/n;->p:I

    if-eq v6, v1, :cond_d

    if-ne v6, v2, :cond_c

    goto :goto_2

    .line 241
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->aZ()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->B()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 239
    :cond_d
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->aZ()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 243
    :goto_3
    invoke-static {v5}, Lcom/anythink/expressad/videocommon/b/n;->c(Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 246
    :cond_e
    iget-object v7, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v7, :cond_12

    .line 247
    monitor-enter v7

    const/4 v8, 0x0

    .line 251
    :goto_4
    :try_start_3
    iget-object v9, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_10

    .line 252
    iget-object v9, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    if-eqz v9, :cond_f

    .line 254
    invoke-interface {v9, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 257
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/anythink/expressad/videocommon/b/c;

    .line 258
    invoke-virtual {v10, v5}, Lcom/anythink/expressad/videocommon/b/c;->a(Lcom/anythink/expressad/foundation/d/c;)V

    .line 259
    iget v11, p0, Lcom/anythink/expressad/videocommon/b/n;->o:I

    invoke-virtual {v10, v11}, Lcom/anythink/expressad/videocommon/b/c;->a(I)V

    .line 260
    invoke-virtual {v10, v0}, Lcom/anythink/expressad/videocommon/b/c;->a(Z)V

    .line 261
    invoke-interface {v9, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-interface {v9, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v10, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10, v8, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x1

    goto :goto_5

    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_10
    const/4 v8, 0x0

    :goto_5
    if-nez v8, :cond_11

    .line 270
    new-instance v8, Lcom/anythink/expressad/videocommon/b/c;

    iget-object v9, p0, Lcom/anythink/expressad/videocommon/b/n;->j:Landroid/content/Context;

    iget-object v10, p0, Lcom/anythink/expressad/videocommon/b/n;->k:Ljava/util/concurrent/ExecutorService;

    iget-object v11, p0, Lcom/anythink/expressad/videocommon/b/n;->m:Ljava/lang/String;

    invoke-direct {v8, v9, v5, v10, v11}, Lcom/anythink/expressad/videocommon/b/c;-><init>(Landroid/content/Context;Lcom/anythink/expressad/foundation/d/c;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;)V

    .line 271
    iget v5, p0, Lcom/anythink/expressad/videocommon/b/n;->o:I

    invoke-virtual {v8, v5}, Lcom/anythink/expressad/videocommon/b/c;->a(I)V

    .line 272
    iget v5, p0, Lcom/anythink/expressad/videocommon/b/n;->p:I

    invoke-virtual {v8, v5}, Lcom/anythink/expressad/videocommon/b/c;->e(I)V

    .line 273
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 274
    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v6, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 280
    :catchall_0
    :cond_11
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    monitor-exit v7

    throw p1

    :cond_12
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 284
    :cond_13
    iget-object p1, p0, Lcom/anythink/expressad/videocommon/b/n;->d:Ljava/util/List;

    if-eqz p1, :cond_14

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_14

    .line 285
    iget-object p1, p0, Lcom/anythink/expressad/videocommon/b/n;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :catch_2
    :cond_14
    :goto_7
    return-void
.end method

.method private static c(Lcom/anythink/expressad/foundation/d/c;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1442
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/d/c;->J()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 1446
    sget-boolean v0, Lcom/anythink/expressad/a;->a:Z

    if-eqz v0, :cond_0

    .line 1447
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private d(Lcom/anythink/expressad/foundation/d/c;)I
    .locals 3

    .line 1487
    :try_start_0
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->w()I

    move-result v0

    const/16 v1, 0x12a

    if-ne v0, v1, :cond_1

    .line 1488
    iget-object p1, p0, Lcom/anythink/expressad/videocommon/b/n;->b:Lcom/anythink/expressad/d/c;

    if-nez p1, :cond_0

    .line 1489
    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->b()Lcom/anythink/expressad/foundation/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/b/a;->e()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->m:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/anythink/expressad/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/videocommon/b/n;->b:Lcom/anythink/expressad/d/c;

    .line 1491
    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/videocommon/b/n;->b:Lcom/anythink/expressad/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/d/c;->f()I

    move-result p1

    return p1

    .line 1492
    :cond_1
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->w()I

    move-result p1

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_2

    .line 1493
    invoke-direct {p0}, Lcom/anythink/expressad/videocommon/b/n;->h()I

    move-result p1

    return p1

    .line 1495
    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/videocommon/b/n;->n:Lcom/anythink/expressad/videocommon/e/d;

    if-nez p1, :cond_3

    .line 1496
    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object p1

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->b()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/b/a;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/videocommon/b/n;->m:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/videocommon/b/n;->n:Lcom/anythink/expressad/videocommon/e/d;

    .line 1498
    :cond_3
    iget-object p1, p0, Lcom/anythink/expressad/videocommon/b/n;->n:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/e/d;->v()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 1501
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    const/16 p1, 0x64

    return p1
.end method

.method private e()V
    .locals 13

    .line 294
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_4

    .line 296
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 297
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 299
    :goto_0
    iget-object v4, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 301
    iget-object v4, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 303
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 304
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 306
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 307
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/anythink/expressad/videocommon/b/c;

    if-eqz v6, :cond_0

    .line 311
    invoke-virtual {v6}, Lcom/anythink/expressad/videocommon/b/c;->c()J

    move-result-wide v7

    sub-long v7, v1, v7

    .line 312
    iget-wide v9, p0, Lcom/anythink/expressad/videocommon/b/n;->l:J

    const-wide/16 v11, 0x3e8

    mul-long v9, v9, v11

    const/4 v11, 0x1

    cmp-long v12, v7, v9

    if-lez v12, :cond_1

    .line 313
    invoke-virtual {v6}, Lcom/anythink/expressad/videocommon/b/c;->k()I

    move-result v7

    if-ne v7, v11, :cond_1

    .line 314
    invoke-virtual {v6}, Lcom/anythink/expressad/videocommon/b/c;->j()V

    .line 315
    iget v7, p0, Lcom/anythink/expressad/videocommon/b/n;->o:I

    invoke-virtual {v6, v7}, Lcom/anythink/expressad/videocommon/b/c;->a(I)V

    .line 317
    iget-object v7, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    .line 321
    :cond_1
    invoke-virtual {v6}, Lcom/anythink/expressad/videocommon/b/c;->k()I

    move-result v7

    if-eq v7, v11, :cond_0

    invoke-virtual {v6}, Lcom/anythink/expressad/videocommon/b/c;->k()I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_0

    invoke-virtual {v6}, Lcom/anythink/expressad/videocommon/b/c;->k()I

    move-result v6

    if-eqz v6, :cond_0

    .line 323
    iget-object v6, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 328
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 330
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return-void
.end method

.method private f()V
    .locals 6

    .line 338
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_3

    .line 340
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 341
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 342
    iget-object v2, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 343
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 344
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 345
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 346
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/expressad/videocommon/b/c;

    if-eqz v4, :cond_0

    .line 347
    invoke-virtual {v4}, Lcom/anythink/expressad/videocommon/b/c;->n()Lcom/anythink/expressad/foundation/d/c;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 350
    invoke-virtual {v4}, Lcom/anythink/expressad/videocommon/b/c;->b()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/anythink/expressad/videocommon/b/c;->d()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 351
    invoke-virtual {v4}, Lcom/anythink/expressad/videocommon/b/c;->o()V

    .line 352
    iget-object v4, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_3
    return-void
.end method

.method private static g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private h()I
    .locals 2

    const/16 v0, 0x64

    .line 1456
    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/videocommon/b/n;->a:Lcom/anythink/expressad/d/c;

    if-eqz v1, :cond_0

    .line 1457
    invoke-virtual {v1}, Lcom/anythink/expressad/d/c;->f()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public final a(IZ)Lcom/anythink/expressad/videocommon/b/c;
    .locals 21

    move-object/from16 v1, p0

    move/from16 v0, p2

    .line 628
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isReady unitID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/anythink/expressad/videocommon/b/n;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ad_type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/anythink/expressad/videocommon/b/n;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 629
    iget-object v2, v1, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_1b

    .line 630
    monitor-enter v2

    .line 654
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    .line 655
    :goto_0
    iget-object v7, v1, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1a

    .line 656
    iget-object v7, v1, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 657
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 658
    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_19

    .line 659
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 660
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/anythink/expressad/videocommon/b/c;

    if-eqz v9, :cond_18

    .line 661
    invoke-virtual {v9}, Lcom/anythink/expressad/videocommon/b/c;->n()Lcom/anythink/expressad/foundation/d/c;

    move-result-object v10

    if-nez v10, :cond_1

    goto/16 :goto_5

    .line 666
    :cond_1
    invoke-virtual {v9}, Lcom/anythink/expressad/videocommon/b/c;->n()Lcom/anythink/expressad/foundation/d/c;

    move-result-object v10

    if-eqz v0, :cond_2

    .line 679
    invoke-virtual {v10}, Lcom/anythink/expressad/foundation/d/c;->A()Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    if-nez v0, :cond_4

    invoke-virtual {v10}, Lcom/anythink/expressad/foundation/d/c;->A()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 680
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "UnitCache isReady ==== isBidCampaign = "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " campaign.isBidCampaign() = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/anythink/expressad/foundation/d/c;->A()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 683
    :cond_4
    invoke-virtual {v10}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v11

    .line 684
    invoke-virtual {v10}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    if-eqz v10, :cond_5

    .line 686
    invoke-virtual {v10}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 687
    invoke-virtual {v10}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v13

    invoke-virtual {v13}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v13

    .line 689
    :cond_5
    invoke-virtual {v10}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    .line 691
    iget v14, v1, Lcom/anythink/expressad/videocommon/b/n;->p:I

    const/16 v15, 0x11f

    const/16 v3, 0x5e

    if-eq v14, v3, :cond_6

    move/from16 v14, p1

    if-ne v14, v15, :cond_a

    goto :goto_2

    :cond_6
    move/from16 v14, p1

    .line 692
    :goto_2
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_7

    const-string v15, "cmpt=1"

    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    invoke-static {v10, v13}, Lcom/anythink/expressad/videocommon/b/n;->b(Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 698
    :cond_7
    invoke-static {v11, v10}, Lcom/anythink/expressad/videocommon/b/n;->b(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 699
    invoke-virtual {v9}, Lcom/anythink/expressad/videocommon/b/c;->b()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 700
    invoke-virtual {v9}, Lcom/anythink/expressad/videocommon/b/c;->o()V

    goto/16 :goto_1

    .line 705
    :cond_8
    invoke-static {v12}, Lcom/anythink/expressad/foundation/h/w;->a(Ljava/lang/String;)Z

    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v12, :cond_9

    .line 708
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v9

    .line 712
    :cond_9
    :try_start_2
    invoke-direct {v1, v10}, Lcom/anythink/expressad/videocommon/b/n;->b(Lcom/anythink/expressad/foundation/d/c;)I

    move-result v12

    invoke-static {v9, v12}, Lcom/anythink/expressad/videocommon/b/n;->a(Lcom/anythink/expressad/videocommon/b/c;I)Z

    move-result v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v12, :cond_a

    .line 714
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v9

    .line 721
    :cond_a
    :try_start_4
    invoke-virtual {v9}, Lcom/anythink/expressad/videocommon/b/c;->m()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    .line 722
    invoke-virtual {v9}, Lcom/anythink/expressad/videocommon/b/c;->k()I

    move-result v13

    .line 726
    iget v15, v1, Lcom/anythink/expressad/videocommon/b/n;->p:I

    const/16 v3, 0x12a

    if-ne v15, v3, :cond_b

    .line 727
    invoke-direct {v1, v10}, Lcom/anythink/expressad/videocommon/b/n;->b(Lcom/anythink/expressad/foundation/d/c;)I

    move-result v3

    invoke-static {v9, v3}, Lcom/anythink/expressad/videocommon/b/n;->a(Lcom/anythink/expressad/videocommon/b/c;I)Z

    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_b

    .line 728
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-object v9

    :cond_b
    const/4 v3, 0x5

    const/16 v15, 0x5f

    if-ne v13, v3, :cond_f

    .line 735
    :try_start_6
    invoke-virtual {v9}, Lcom/anythink/expressad/videocommon/b/c;->b()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 736
    invoke-virtual {v9}, Lcom/anythink/expressad/videocommon/b/c;->o()V

    .line 737
    iget-object v3, v1, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_1

    :cond_c
    if-nez v12, :cond_d

    .line 743
    invoke-virtual {v9}, Lcom/anythink/expressad/videocommon/b/c;->l()V

    .line 745
    iget v3, v1, Lcom/anythink/expressad/videocommon/b/n;->p:I

    if-ne v3, v15, :cond_0

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "isready ==========done but isEffectivePath:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " is feed"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/anythink/expressad/videocommon/b/n;->p:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 747
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return-object v9

    .line 752
    :cond_d
    :try_start_8
    invoke-static {v11, v10}, Lcom/anythink/expressad/videocommon/b/n;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v0, :cond_e

    .line 754
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    return-object v9

    .line 757
    :cond_e
    monitor-exit v2

    const/4 v2, 0x0

    return-object v2

    .line 759
    :cond_f
    :try_start_a
    invoke-virtual {v9}, Lcom/anythink/expressad/videocommon/b/c;->c()J

    move-result-wide v17

    .line 760
    invoke-virtual {v9}, Lcom/anythink/expressad/videocommon/b/c;->k()I

    move-result v3

    const/4 v12, 0x1

    if-ne v3, v12, :cond_10

    sub-long v17, v4, v17

    move v3, v13

    .line 761
    iget-wide v12, v1, Lcom/anythink/expressad/videocommon/b/n;->l:J

    const-wide/16 v19, 0x3e8

    mul-long v12, v12, v19

    cmp-long v19, v17, v12

    if-lez v19, :cond_11

    .line 762
    invoke-virtual {v9}, Lcom/anythink/expressad/videocommon/b/c;->j()V

    .line 764
    iget-object v12, v1, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, -0x1

    .line 766
    iget v12, v1, Lcom/anythink/expressad/videocommon/b/n;->p:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_0

    const/16 v13, 0x5e

    if-ne v12, v13, :cond_11

    goto/16 :goto_1

    :cond_10
    move v3, v13

    .line 774
    :cond_11
    iget v12, v1, Lcom/anythink/expressad/videocommon/b/n;->p:I

    if-ne v12, v15, :cond_13

    .line 775
    invoke-virtual {v9}, Lcom/anythink/expressad/videocommon/b/c;->b()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 776
    invoke-virtual {v9}, Lcom/anythink/expressad/videocommon/b/c;->o()V

    .line 777
    iget-object v3, v1, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 781
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "==========isready ad_type is :"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/anythink/expressad/videocommon/b/n;->p:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 782
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    return-object v9

    :cond_13
    const/4 v12, 0x4

    if-eq v3, v12, :cond_17

    const/4 v12, 0x2

    if-ne v3, v12, :cond_14

    goto :goto_4

    :cond_14
    const/4 v12, 0x1

    if-ne v3, v12, :cond_15

    .line 793
    :try_start_c
    invoke-virtual {v9}, Lcom/anythink/expressad/videocommon/b/c;->b()Z

    move-result v3

    if-nez v3, :cond_0

    .line 797
    sget-boolean v3, Lcom/anythink/expressad/a;->p:Z

    if-nez v3, :cond_15

    .line 798
    invoke-direct {v1, v10}, Lcom/anythink/expressad/videocommon/b/n;->b(Lcom/anythink/expressad/foundation/d/c;)I

    move-result v3

    invoke-static {v9, v3}, Lcom/anythink/expressad/videocommon/b/n;->a(Lcom/anythink/expressad/videocommon/b/c;I)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-static {v11, v10}, Lcom/anythink/expressad/videocommon/b/n;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "isready  IS_DOWANLOAD_FINSH_PLAY is :"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/anythink/expressad/a;->p:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 800
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    return-object v9

    .line 804
    :cond_15
    :try_start_e
    iget v3, v1, Lcom/anythink/expressad/videocommon/b/n;->p:I

    const/16 v12, 0x5e

    if-eq v3, v12, :cond_16

    const/16 v12, 0x11f

    if-ne v3, v12, :cond_0

    .line 805
    :cond_16
    invoke-direct {v1, v10}, Lcom/anythink/expressad/videocommon/b/n;->b(Lcom/anythink/expressad/foundation/d/c;)I

    move-result v3

    invoke-static {v9, v3}, Lcom/anythink/expressad/videocommon/b/n;->a(Lcom/anythink/expressad/videocommon/b/c;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v11, v10}, Lcom/anythink/expressad/videocommon/b/n;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v3, :cond_0

    .line 806
    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    return-object v9

    .line 785
    :cond_17
    :goto_4
    :try_start_10
    iget-object v3, v1, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_3

    :cond_18
    :goto_5
    move/from16 v14, p1

    goto/16 :goto_1

    :cond_19
    move/from16 v14, p1

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 812
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 814
    :cond_1a
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_7

    :goto_6
    monitor-exit v2

    throw v0

    :cond_1b
    :goto_7
    const/4 v2, 0x0

    return-object v2
.end method

.method public final a(Ljava/lang/String;)Lcom/anythink/expressad/videocommon/b/c;
    .locals 4

    .line 1080
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 1081
    monitor-enter v0

    .line 1083
    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 1084
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1085
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/videocommon/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1091
    monitor-exit v0

    throw p1

    :catchall_1
    :cond_1
    monitor-exit v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(ZLjava/util/List;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/videocommon/b/c;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 449
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 451
    iget-object v3, v1, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_18

    .line 452
    monitor-enter v3

    .line 455
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v7, 0x0

    .line 456
    :goto_0
    iget-object v8, v1, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_17

    .line 457
    iget-object v8, v1, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 458
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 459
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    .line 460
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 461
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/anythink/expressad/videocommon/b/c;

    if-eqz v10, :cond_14

    .line 462
    invoke-virtual {v10}, Lcom/anythink/expressad/videocommon/b/c;->n()Lcom/anythink/expressad/foundation/d/c;

    move-result-object v11

    if-nez v11, :cond_0

    goto/16 :goto_5

    .line 467
    :cond_0
    invoke-virtual {v10}, Lcom/anythink/expressad/videocommon/b/c;->n()Lcom/anythink/expressad/foundation/d/c;

    move-result-object v11

    .line 471
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    :cond_1
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v11, :cond_1

    if-eqz v14, :cond_1

    .line 472
    invoke-virtual {v11}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v14}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v11}, Lcom/anythink/expressad/foundation/d/c;->aZ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Lcom/anythink/expressad/foundation/d/c;->aZ()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v11}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    if-eqz v13, :cond_14

    if-eqz v0, :cond_3

    .line 482
    invoke-virtual {v11}, Lcom/anythink/expressad/foundation/d/c;->A()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    if-nez v0, :cond_5

    invoke-virtual {v11}, Lcom/anythink/expressad/foundation/d/c;->A()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 483
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "UnitCache isReady ==== isBidCampaign = "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " campaign.isBidCampaign() = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/anythink/expressad/foundation/d/c;->A()Z

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 487
    :cond_5
    invoke-virtual {v11}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v6

    .line 488
    invoke-virtual {v11}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    if-eqz v11, :cond_6

    .line 490
    invoke-virtual {v11}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 491
    invoke-virtual {v11}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v13

    invoke-virtual {v13}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v13

    .line 493
    :cond_6
    invoke-virtual {v11}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    .line 496
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "cmpt=1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    invoke-static {v11, v13}, Lcom/anythink/expressad/videocommon/b/n;->b(Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 502
    :cond_7
    invoke-static {v6, v11}, Lcom/anythink/expressad/videocommon/b/n;->b(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 503
    invoke-virtual {v10}, Lcom/anythink/expressad/videocommon/b/c;->b()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 504
    invoke-virtual {v10}, Lcom/anythink/expressad/videocommon/b/c;->o()V

    goto/16 :goto_5

    .line 509
    :cond_8
    invoke-static {v12}, Lcom/anythink/expressad/foundation/h/w;->a(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 512
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 517
    :cond_9
    invoke-direct {v1, v11}, Lcom/anythink/expressad/videocommon/b/n;->b(Lcom/anythink/expressad/foundation/d/c;)I

    move-result v12

    .line 1942
    invoke-static {v10, v12}, Lcom/anythink/expressad/videocommon/b/n;->a(Lcom/anythink/expressad/videocommon/b/c;I)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 519
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 527
    :cond_a
    invoke-virtual {v10}, Lcom/anythink/expressad/videocommon/b/c;->m()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    .line 528
    invoke-virtual {v10}, Lcom/anythink/expressad/videocommon/b/c;->k()I

    move-result v13

    const/4 v14, 0x5

    if-ne v13, v14, :cond_e

    .line 534
    invoke-virtual {v10}, Lcom/anythink/expressad/videocommon/b/c;->b()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 535
    invoke-virtual {v10}, Lcom/anythink/expressad/videocommon/b/c;->o()V

    .line 536
    iget-object v6, v1, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    :cond_b
    if-nez v12, :cond_c

    .line 542
    invoke-virtual {v10}, Lcom/anythink/expressad/videocommon/b/c;->l()V

    goto/16 :goto_5

    .line 552
    :cond_c
    invoke-static {v6, v11}, Lcom/anythink/expressad/videocommon/b/n;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 554
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :cond_d
    const/4 v0, 0x0

    .line 558
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 560
    :cond_e
    :try_start_2
    invoke-virtual {v10}, Lcom/anythink/expressad/videocommon/b/c;->c()J

    move-result-wide v14

    .line 561
    invoke-virtual {v10}, Lcom/anythink/expressad/videocommon/b/c;->k()I

    move-result v12

    const/4 v0, 0x1

    if-ne v12, v0, :cond_f

    sub-long v14, v4, v14

    move-wide/from16 v17, v4

    .line 562
    iget-wide v4, v1, Lcom/anythink/expressad/videocommon/b/n;->l:J

    const-wide/16 v19, 0x3e8

    mul-long v4, v4, v19

    cmp-long v0, v14, v4

    if-lez v0, :cond_10

    .line 563
    invoke-virtual {v10}, Lcom/anythink/expressad/videocommon/b/c;->j()V

    .line 565
    iget-object v0, v1, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    move-wide/from16 v17, v4

    :cond_10
    const/4 v0, 0x4

    if-eq v13, v0, :cond_13

    const/4 v0, 0x2

    if-ne v13, v0, :cond_11

    goto :goto_3

    :cond_11
    const/4 v0, 0x1

    if-ne v13, v0, :cond_12

    .line 584
    invoke-virtual {v10}, Lcom/anythink/expressad/videocommon/b/c;->b()Z

    move-result v0

    if-nez v0, :cond_15

    .line 588
    sget-boolean v0, Lcom/anythink/expressad/a;->p:Z

    if-nez v0, :cond_12

    .line 589
    invoke-direct {v1, v11}, Lcom/anythink/expressad/videocommon/b/n;->b(Lcom/anythink/expressad/foundation/d/c;)I

    move-result v0

    .line 2942
    invoke-static {v10, v0}, Lcom/anythink/expressad/videocommon/b/n;->a(Lcom/anythink/expressad/videocommon/b/c;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 589
    invoke-static {v6, v11}, Lcom/anythink/expressad/videocommon/b/n;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "isready  IS_DOWANLOAD_FINSH_PLAY is :"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/anythink/expressad/a;->p:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 591
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 597
    :cond_12
    invoke-direct {v1, v11}, Lcom/anythink/expressad/videocommon/b/n;->b(Lcom/anythink/expressad/foundation/d/c;)I

    move-result v0

    .line 3942
    invoke-static {v10, v0}, Lcom/anythink/expressad/videocommon/b/n;->a(Lcom/anythink/expressad/videocommon/b/c;I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 597
    invoke-static {v6, v11}, Lcom/anythink/expressad/videocommon/b/n;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 598
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 576
    :cond_13
    :goto_3
    iget-object v0, v1, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    :cond_14
    :goto_5
    move-wide/from16 v17, v4

    :cond_15
    :goto_6
    move/from16 v0, p1

    move-wide/from16 v4, v17

    goto/16 :goto_1

    :cond_16
    move-wide/from16 v17, v4

    add-int/lit8 v7, v7, 0x1

    move/from16 v0, p1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 605
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 607
    :cond_17
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_8

    :goto_7
    monitor-exit v3

    throw v0

    :cond_18
    :goto_8
    return-object v2
.end method

.method public final a()V
    .locals 16

    move-object/from16 v1, p0

    .line 1154
    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/videocommon/b/n;->e()V

    .line 1156
    iget-object v2, v1, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_19

    .line 1157
    monitor-enter v2

    .line 1158
    :try_start_0
    iget-object v0, v1, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0}, Lcom/anythink/expressad/videocommon/b/n;->a(Ljava/util/concurrent/CopyOnWriteArrayList;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 1159
    iput-boolean v3, v1, Lcom/anythink/expressad/videocommon/b/n;->e:Z

    .line 1162
    :cond_0
    iget-object v0, v1, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_1

    .line 1167
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1168
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1169
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1170
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anythink/expressad/videocommon/b/c;

    if-eqz v5, :cond_2

    .line 1174
    invoke-virtual {v5}, Lcom/anythink/expressad/videocommon/b/c;->b()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1177
    iget v6, v1, Lcom/anythink/expressad/videocommon/b/n;->p:I

    const/16 v7, 0x5f

    if-ne v6, v7, :cond_3

    .line 1178
    iput-boolean v3, v1, Lcom/anythink/expressad/videocommon/b/n;->e:Z

    .line 1180
    :cond_3
    invoke-virtual {v5}, Lcom/anythink/expressad/videocommon/b/c;->k()I

    move-result v6

    .line 1181
    invoke-virtual {v5}, Lcom/anythink/expressad/videocommon/b/c;->n()Lcom/anythink/expressad/foundation/d/c;

    move-result-object v8

    .line 1187
    new-instance v9, Lcom/anythink/expressad/videocommon/b/n$2;

    invoke-direct {v9, v1, v8}, Lcom/anythink/expressad/videocommon/b/n$2;-><init>(Lcom/anythink/expressad/videocommon/b/n;Lcom/anythink/expressad/foundation/d/c;)V

    invoke-virtual {v5, v9}, Lcom/anythink/expressad/videocommon/b/c;->a(Lcom/anythink/expressad/videocommon/d/b;)V

    .line 1226
    invoke-direct {v1, v8}, Lcom/anythink/expressad/videocommon/b/n;->b(Lcom/anythink/expressad/foundation/d/c;)I

    move-result v9

    .line 1227
    iget v10, v1, Lcom/anythink/expressad/videocommon/b/n;->p:I

    if-ne v10, v3, :cond_5

    .line 1228
    iget-object v9, v1, Lcom/anythink/expressad/videocommon/b/n;->a:Lcom/anythink/expressad/d/c;

    if-nez v9, :cond_4

    .line 1229
    iget-object v9, v1, Lcom/anythink/expressad/videocommon/b/n;->m:Ljava/lang/String;

    invoke-static {v9}, Lcom/anythink/expressad/d/c;->c(Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object v9

    iput-object v9, v1, Lcom/anythink/expressad/videocommon/b/n;->a:Lcom/anythink/expressad/d/c;

    .line 1231
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/videocommon/b/n;->h()I

    move-result v9

    .line 1233
    :cond_5
    invoke-virtual {v5, v9}, Lcom/anythink/expressad/videocommon/b/c;->d(I)V

    .line 1236
    iget v10, v1, Lcom/anythink/expressad/videocommon/b/n;->p:I

    const/16 v11, 0x5e

    const/16 v12, 0x12a

    const/16 v13, 0x11f

    if-eq v10, v11, :cond_a

    if-eq v10, v13, :cond_a

    if-ne v10, v7, :cond_6

    goto :goto_2

    :cond_6
    if-ne v10, v12, :cond_8

    .line 1245
    iget-object v10, v1, Lcom/anythink/expressad/videocommon/b/n;->b:Lcom/anythink/expressad/d/c;

    if-nez v10, :cond_7

    .line 1246
    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->b()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v10

    invoke-virtual {v10}, Lcom/anythink/expressad/foundation/b/a;->e()Ljava/lang/String;

    move-result-object v10

    iget-object v15, v1, Lcom/anythink/expressad/videocommon/b/n;->m:Ljava/lang/String;

    invoke-static {v10, v15}, Lcom/anythink/expressad/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object v10

    iput-object v10, v1, Lcom/anythink/expressad/videocommon/b/n;->b:Lcom/anythink/expressad/d/c;

    .line 1248
    :cond_7
    iget-object v10, v1, Lcom/anythink/expressad/videocommon/b/n;->b:Lcom/anythink/expressad/d/c;

    if-eqz v10, :cond_8

    .line 1249
    invoke-virtual {v10}, Lcom/anythink/expressad/d/c;->g()I

    move-result v10

    goto :goto_1

    :cond_8
    const/4 v10, 0x0

    .line 1253
    :goto_1
    iget v15, v1, Lcom/anythink/expressad/videocommon/b/n;->p:I

    if-ne v15, v3, :cond_e

    .line 1254
    iget-object v15, v1, Lcom/anythink/expressad/videocommon/b/n;->a:Lcom/anythink/expressad/d/c;

    if-nez v15, :cond_9

    .line 1255
    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->b()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v15

    invoke-virtual {v15}, Lcom/anythink/expressad/foundation/b/a;->e()Ljava/lang/String;

    move-result-object v15

    iget-object v14, v1, Lcom/anythink/expressad/videocommon/b/n;->m:Ljava/lang/String;

    invoke-static {v15, v14}, Lcom/anythink/expressad/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object v14

    iput-object v14, v1, Lcom/anythink/expressad/videocommon/b/n;->a:Lcom/anythink/expressad/d/c;

    .line 1257
    :cond_9
    iget-object v14, v1, Lcom/anythink/expressad/videocommon/b/n;->a:Lcom/anythink/expressad/d/c;

    if-eqz v14, :cond_e

    .line 1258
    invoke-virtual {v14}, Lcom/anythink/expressad/d/c;->g()I

    move-result v10

    goto :goto_4

    .line 1237
    :cond_a
    :goto_2
    iget-object v10, v1, Lcom/anythink/expressad/videocommon/b/n;->n:Lcom/anythink/expressad/videocommon/e/d;

    if-nez v10, :cond_c

    .line 1238
    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v10

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->b()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v14

    invoke-virtual {v14}, Lcom/anythink/expressad/foundation/b/a;->e()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lcom/anythink/expressad/videocommon/b/n;->m:Ljava/lang/String;

    iget v7, v1, Lcom/anythink/expressad/videocommon/b/n;->p:I

    if-ne v7, v13, :cond_b

    const/4 v7, 0x1

    goto :goto_3

    :cond_b
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v10, v14, v15, v7}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object v7

    iput-object v7, v1, Lcom/anythink/expressad/videocommon/b/n;->n:Lcom/anythink/expressad/videocommon/e/d;

    .line 1240
    :cond_c
    iget-object v7, v1, Lcom/anythink/expressad/videocommon/b/n;->n:Lcom/anythink/expressad/videocommon/e/d;

    if-eqz v7, :cond_d

    .line 1241
    invoke-virtual {v7}, Lcom/anythink/expressad/videocommon/e/d;->x()I

    move-result v10

    goto :goto_4

    :cond_d
    const/4 v10, 0x0

    .line 1262
    :cond_e
    :goto_4
    invoke-virtual {v5, v10}, Lcom/anythink/expressad/videocommon/b/c;->b(I)V

    if-eqz v8, :cond_f

    .line 1263
    invoke-virtual {v8}, Lcom/anythink/expressad/foundation/d/c;->aC()I

    move-result v7

    goto :goto_5

    :cond_f
    const/4 v7, 0x1

    .line 1264
    :goto_5
    invoke-virtual {v5, v7}, Lcom/anythink/expressad/videocommon/b/c;->c(I)V

    .line 1265
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ready_rate : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " cd_rate : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " videoCtnType : "

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1267
    invoke-direct {v1, v8}, Lcom/anythink/expressad/videocommon/b/n;->b(Lcom/anythink/expressad/foundation/d/c;)I

    move-result v7

    invoke-static {v5, v7}, Lcom/anythink/expressad/videocommon/b/n;->a(Lcom/anythink/expressad/videocommon/b/c;I)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1268
    iget-object v7, v1, Lcom/anythink/expressad/videocommon/b/n;->f:Lcom/anythink/expressad/videocommon/d/b;

    if-eqz v7, :cond_11

    iget v10, v1, Lcom/anythink/expressad/videocommon/b/n;->p:I

    const/16 v14, 0x129

    if-eq v10, v14, :cond_10

    if-ne v10, v12, :cond_11

    .line 1269
    :cond_10
    invoke-virtual {v8}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Lcom/anythink/expressad/videocommon/d/b;->a(Ljava/lang/String;)V

    .line 1272
    :cond_11
    iget-object v7, v1, Lcom/anythink/expressad/videocommon/b/n;->g:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v7

    if-lez v7, :cond_12

    .line 1273
    iget-object v7, v1, Lcom/anythink/expressad/videocommon/b/n;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/anythink/expressad/videocommon/d/b;

    if-eqz v7, :cond_12

    if-eqz v8, :cond_12

    .line 1275
    invoke-virtual {v8}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/anythink/expressad/videocommon/d/b;->a(Ljava/lang/String;)V

    :cond_12
    if-eq v6, v3, :cond_2

    const/4 v7, 0x5

    if-eq v6, v7, :cond_2

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_13

    .line 1287
    iget-boolean v6, v1, Lcom/anythink/expressad/videocommon/b/n;->e:Z

    if-eqz v6, :cond_2

    .line 1290
    :cond_13
    iget-object v6, v1, Lcom/anythink/expressad/videocommon/b/n;->h:Lcom/anythink/expressad/videocommon/b/f;

    invoke-virtual {v5, v6}, Lcom/anythink/expressad/videocommon/b/c;->a(Lcom/anythink/expressad/videocommon/b/f;)V

    .line 1292
    invoke-static {v5, v9}, Lcom/anythink/expressad/videocommon/b/n;->a(Lcom/anythink/expressad/videocommon/b/c;I)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1293
    iget v6, v1, Lcom/anythink/expressad/videocommon/b/n;->p:I

    if-eq v6, v11, :cond_14

    if-ne v6, v13, :cond_2

    .line 1294
    :cond_14
    invoke-virtual {v5}, Lcom/anythink/expressad/videocommon/b/c;->h()V

    goto/16 :goto_0

    .line 1297
    :cond_15
    iget v6, v1, Lcom/anythink/expressad/videocommon/b/n;->p:I

    if-eq v6, v3, :cond_16

    const/16 v7, 0x5f

    if-eq v6, v7, :cond_16

    if-ne v6, v12, :cond_17

    :cond_16
    const/4 v6, 0x0

    .line 1298
    iput-boolean v6, v1, Lcom/anythink/expressad/videocommon/b/n;->e:Z

    .line 1300
    :cond_17
    invoke-virtual {v5}, Lcom/anythink/expressad/videocommon/b/c;->h()V

    goto/16 :goto_0

    .line 1305
    :cond_18
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_19
    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 145
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/videocommon/b/n;->d:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/anythink/expressad/videocommon/b/n;->c(Ljava/util/List;)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/videocommon/d/b;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/anythink/expressad/videocommon/b/n;->f:Lcom/anythink/expressad/videocommon/d/b;

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/expressad/videocommon/d/b;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->g:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 138
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/videocommon/b/n;->d:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/anythink/expressad/videocommon/b/n;->c(Ljava/util/List;)V

    return-void
.end method

.method public final b(IZ)Lcom/anythink/expressad/videocommon/b/c;
    .locals 0

    .line 1072
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/anythink/expressad/videocommon/b/n;->a(IZ)Lcom/anythink/expressad/videocommon/b/c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1074
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()V
    .locals 8

    .line 1312
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_5

    .line 1313
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1314
    :try_start_1
    iget-object v1, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 1319
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1320
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1321
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1322
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/videocommon/b/c;

    if-eqz v3, :cond_1

    .line 1326
    invoke-virtual {v3}, Lcom/anythink/expressad/videocommon/b/c;->k()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    .line 1328
    invoke-static {}, Lcom/anythink/expressad/foundation/h/k;->a()I

    move-result v5

    const/16 v6, 0x9

    const/4 v7, 0x2

    if-eq v5, v6, :cond_2

    .line 1330
    iget v5, p0, Lcom/anythink/expressad/videocommon/b/n;->o:I

    if-ne v5, v7, :cond_2

    .line 1332
    monitor-exit v0

    return-void

    :cond_2
    if-eq v4, v7, :cond_3

    if-nez v4, :cond_1

    .line 1336
    :cond_3
    invoke-virtual {v3}, Lcom/anythink/expressad/videocommon/b/c;->h()V

    .line 1337
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 1342
    :cond_4
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_5
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    .line 1467
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1468
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1469
    iget-object v1, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 1471
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-eqz v4, :cond_1

    .line 1472
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1473
    iget-object v4, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1479
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void
.end method

.method public final c()V
    .locals 7

    .line 1351
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_3

    .line 1354
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1355
    :try_start_1
    iget-object v1, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 1359
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1360
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1361
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1362
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/expressad/videocommon/b/c;

    if-eqz v4, :cond_1

    .line 1366
    invoke-virtual {v4}, Lcom/anythink/expressad/videocommon/b/c;->k()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1370
    invoke-virtual {v4}, Lcom/anythink/expressad/videocommon/b/c;->j()V

    .line 1372
    iget-object v1, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1373
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 1377
    :cond_2
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_3
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1407
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_4

    .line 1410
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1411
    :try_start_1
    iget-object v1, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_1

    .line 1413
    monitor-exit v0

    return-void

    .line 1415
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1416
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1417
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1418
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/videocommon/b/c;

    if-eqz v3, :cond_2

    .line 1422
    invoke-virtual {v3}, Lcom/anythink/expressad/videocommon/b/c;->o()V

    goto :goto_0

    .line 1426
    :cond_3
    iget-object v1, p0, Lcom/anythink/expressad/videocommon/b/n;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 1427
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    nop

    .line 1434
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->d:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1435
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_5
    return-void
.end method
