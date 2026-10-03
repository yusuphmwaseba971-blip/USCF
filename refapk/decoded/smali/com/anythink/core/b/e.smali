.class public abstract Lcom/anythink/core/b/e;
.super Lcom/anythink/core/b/d;


# static fields
.field public static final i:D = 10000.0


# instance fields
.field final j:Ljava/lang/String;

.field protected final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation
.end field

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Lcom/anythink/core/b/b/a;

.field r:J

.field protected s:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field u:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation
.end field

.field v:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation
.end field

.field w:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation
.end field

.field x:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation
.end field

.field y:Lcom/anythink/core/common/m/b;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f/a;)V
    .locals 4

    .line 85
    invoke-direct {p0, p1}, Lcom/anythink/core/b/d;-><init>(Lcom/anythink/core/common/f/a;)V

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/e;->j:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/b/e;->k:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/b/e;->l:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/b/e;->m:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/anythink/core/b/e;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/anythink/core/b/e;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/b/e;->u:Ljava/util/concurrent/ConcurrentHashMap;

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/b/e;->v:Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/b/e;->w:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/b/e;->x:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    new-instance v0, Lcom/anythink/core/b/e$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/b/e$1;-><init>(Lcom/anythink/core/b/e;)V

    iput-object v0, p0, Lcom/anythink/core/b/e;->y:Lcom/anythink/core/common/m/b;

    .line 87
    iget-object v0, p1, Lcom/anythink/core/common/f/a;->j:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/anythink/core/common/f/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 88
    iget-object v0, p1, Lcom/anythink/core/common/f/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/f/au;

    if-eqz v1, :cond_0

    .line 90
    iget-object v2, p0, Lcom/anythink/core/b/e;->u:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v2, p0, Lcom/anythink/core/b/e;->w:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p1, Lcom/anythink/core/common/f/a;->k:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/anythink/core/common/f/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 97
    iget-object v0, p1, Lcom/anythink/core/common/f/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/f/au;

    .line 98
    iget-object v2, p0, Lcom/anythink/core/b/e;->v:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v2, p0, Lcom/anythink/core/b/e;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 102
    :cond_2
    iget-object v0, p1, Lcom/anythink/core/common/f/a;->r:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lcom/anythink/core/b/e;->k:Ljava/util/List;

    iget-object v1, p1, Lcom/anythink/core/common/f/a;->r:Lorg/json/JSONObject;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_3
    iget-object v0, p1, Lcom/anythink/core/common/f/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/core/b/e;->n:Ljava/lang/String;

    .line 107
    iget-object p1, p1, Lcom/anythink/core/common/f/a;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/anythink/core/b/e;->o:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/anythink/core/b/e;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/b/e;->p:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/q;",
            ">;"
        }
    .end annotation

    .line 539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 540
    instance-of v1, p0, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 541
    check-cast p0, Lorg/json/JSONObject;

    const-string v1, "data"

    .line 542
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    .line 543
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 544
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/f/q;->a(Ljava/lang/String;)Lcom/anythink/core/common/f/q;

    move-result-object v2

    .line 546
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a(J)V
    .locals 3

    .line 218
    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/e;->y:Lcom/anythink/core/common/m/b;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/anythink/core/common/m/a;->a(Lcom/anythink/core/common/m/b;JZ)V

    return-void
.end method

.method private a(JILjava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/f/au;",
            ">;)V"
        }
    .end annotation

    .line 427
    invoke-interface {p5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/anythink/core/common/f/au;

    .line 428
    invoke-virtual {p0, v3, p4, p3}, Lcom/anythink/core/b/e;->a(Lcom/anythink/core/common/f/au;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/anythink/core/b/e;->m:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v2, p0

    move-object v4, p4

    move-wide v5, p1

    move v7, p3

    .line 432
    invoke-direct/range {v2 .. v7}, Lcom/anythink/core/b/e;->b(Lcom/anythink/core/common/f/au;Ljava/lang/String;JI)V

    goto :goto_0

    .line 435
    :cond_1
    invoke-interface {p5}, Ljava/util/Map;->clear()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/b/e;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/anythink/core/b/e;->g()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/b/e;J)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/anythink/core/b/e;->b(J)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/b/e;Lcom/anythink/core/common/f/au;)V
    .locals 8

    .line 1570
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->d()I

    move-result v0

    .line 1571
    invoke-static {}, Lcom/anythink/core/b/f;->a()Lcom/anythink/core/b/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/b/f;->b(I)Z

    move-result v7

    .line 1573
    iget-object v3, p0, Lcom/anythink/core/b/e;->f:Lcom/anythink/core/common/f/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v4, p0, Lcom/anythink/core/b/e;->r:J

    sub-long v4, v1, v4

    const/4 v6, 0x1

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/a;JZZ)V

    .line 1575
    invoke-static {}, Lcom/anythink/core/b/f;->a()Lcom/anythink/core/b/f;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/anythink/core/b/f;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/b/e;Lcom/anythink/core/common/f/au;Ljava/lang/String;I)V
    .locals 6

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/anythink/core/b/e;->b(Lcom/anythink/core/common/f/au;Ljava/lang/String;JI)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/b/e;Ljava/lang/String;Lcom/anythink/core/common/f/au;)V
    .locals 7

    const-string v0, "There is no Network Adapter."

    .line 2579
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "This network don\'t support header bidding in current TopOn\'s version."

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2583
    :cond_0
    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->d()I

    move-result p1

    .line 2584
    invoke-static {}, Lcom/anythink/core/b/f;->a()Lcom/anythink/core/b/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/b/f;->b(I)Z

    move-result v6

    .line 2586
    iget-object v2, p0, Lcom/anythink/core/b/e;->f:Lcom/anythink/core/common/f/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/anythink/core/b/e;->r:J

    sub-long v3, v0, v3

    const/4 v5, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/a;JZZ)V

    .line 2588
    invoke-static {}, Lcom/anythink/core/b/f;->a()Lcom/anythink/core/b/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/anythink/core/b/f;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/b/e;Ljava/util/List;JLjava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/anythink/core/b/e;->a(Ljava/util/List;JLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/b/e;Lorg/json/JSONObject;Lcom/anythink/core/common/f/au;)V
    .locals 6

    .line 2226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/b/e;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "handleBidTokenResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2229
    iget-object v0, p0, Lcom/anythink/core/b/e;->w:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2230
    invoke-direct {p0}, Lcom/anythink/core/b/e;->f()V

    .line 2232
    iget-object v0, p0, Lcom/anythink/core/b/e;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2237
    :goto_0
    monitor-enter p0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 2240
    :try_start_0
    iget-object v3, p0, Lcom/anythink/core/b/e;->k:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2241
    iget-object p1, p0, Lcom/anythink/core/b/e;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2245
    :cond_1
    iget-object p1, p0, Lcom/anythink/core/b/e;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    if-nez v0, :cond_4

    .line 2379
    iget-object p1, p0, Lcom/anythink/core/b/e;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/core/b/e;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 2247
    iget-wide p1, p0, Lcom/anythink/core/b/e;->r:J

    invoke-direct {p0, p1, p2}, Lcom/anythink/core/b/e;->b(J)V

    .line 2248
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 2250
    :cond_5
    monitor-exit p0

    .line 2253
    iget-object p1, p0, Lcom/anythink/core/b/e;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    invoke-direct {p0}, Lcom/anythink/core/b/e;->m()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    .line 2254
    invoke-direct/range {v0 .. v5}, Lcom/anythink/core/b/e;->a(Ljava/util/List;JLjava/lang/String;Ljava/util/Map;)V

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    .line 2250
    monitor-exit p0

    throw p1
.end method

.method private a(Ljava/lang/String;Lcom/anythink/core/common/f/au;)V
    .locals 7

    const-string v0, "There is no Network Adapter."

    .line 579
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "This network don\'t support header bidding in current TopOn\'s version."

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 583
    :cond_0
    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->d()I

    move-result p1

    .line 584
    invoke-static {}, Lcom/anythink/core/b/f;->a()Lcom/anythink/core/b/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/b/f;->b(I)Z

    move-result v6

    .line 586
    iget-object v2, p0, Lcom/anythink/core/b/e;->f:Lcom/anythink/core/common/f/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/anythink/core/b/e;->r:J

    sub-long v3, v0, v3

    const/4 v5, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/a;JZZ)V

    .line 588
    invoke-static {}, Lcom/anythink/core/b/f;->a()Lcom/anythink/core/b/f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/anythink/core/b/f;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized a(Ljava/util/List;JLjava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/q;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/f/au;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 439
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/b/e;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "handleResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4

    .line 440
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 441
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 443
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 444
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/f/q;

    .line 445
    iget-object v2, p0, Lcom/anythink/core/b/e;->u:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v1, Lcom/anythink/core/common/f/q;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v2, v1, Lcom/anythink/core/common/f/q;->k:Ljava/lang/String;

    invoke-interface {p5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/f/au;

    if-nez v2, :cond_0

    .line 449
    iget-object v3, p0, Lcom/anythink/core/b/e;->v:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v1, Lcom/anythink/core/common/f/q;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 450
    iget-object v2, p0, Lcom/anythink/core/b/e;->v:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v1, Lcom/anythink/core/common/f/q;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/f/au;

    .line 451
    iget-object v3, p0, Lcom/anythink/core/b/e;->v:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_0
    move-object v8, v2

    if-eqz v8, :cond_3

    .line 456
    invoke-virtual {v1}, Lcom/anythink/core/common/f/q;->isSuccessWithUseType()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x0

    add-int/lit8 v4, v0, 0x1

    .line 458
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 459
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/f/q;

    .line 460
    invoke-virtual {v2}, Lcom/anythink/core/common/f/q;->getSortPrice()D

    move-result-wide v2

    :cond_1
    move-wide v5, v2

    .line 463
    invoke-virtual {v8}, Lcom/anythink/core/common/f/au;->d()I

    move-result v3

    invoke-virtual {v1}, Lcom/anythink/core/common/f/q;->isSamePrice()Z

    move-result v7

    move-object v2, p0

    move-object v4, v1

    invoke-virtual/range {v2 .. v7}, Lcom/anythink/core/b/e;->a(ILcom/anythink/core/common/f/o;DZ)V

    .line 465
    :cond_2
    invoke-virtual {p0, v8, v1, p2, p3}, Lcom/anythink/core/b/e;->a(Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/o;J)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-eqz p5, :cond_7

    .line 472
    invoke-interface {p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 473
    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 474
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 476
    iget-object v1, p0, Lcom/anythink/core/b/e;->u:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    :cond_6
    iget-object v1, p0, Lcom/anythink/core/b/e;->v:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 479
    iget-object v0, p0, Lcom/anythink/core/b/e;->v:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_1

    :cond_7
    if-eqz p5, :cond_9

    const-string p1, "No Response error."

    .line 486
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_8
    move-object v4, p1

    const/4 v3, -0x4

    move-object v0, p0

    move-wide v1, p2

    move-object v5, p5

    .line 489
    invoke-direct/range {v0 .. v5}, Lcom/anythink/core/b/e;->a(JILjava/lang/String;Ljava/util/Map;)V

    .line 492
    :cond_9
    iget-object p1, p0, Lcom/anythink/core/b/e;->m:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x2

    if-lt p1, p2, :cond_a

    .line 493
    iget-object p1, p0, Lcom/anythink/core/b/e;->m:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 496
    :cond_a
    invoke-direct {p0}, Lcom/anythink/core/b/e;->l()V

    .line 498
    invoke-direct {p0}, Lcom/anythink/core/b/e;->k()V

    .line 500
    invoke-direct {p0}, Lcom/anythink/core/b/e;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Lorg/json/JSONObject;Lcom/anythink/core/common/f/au;)V
    .locals 6

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/b/e;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "handleBidTokenResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget-object v0, p0, Lcom/anythink/core/b/e;->w:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/anythink/core/b/e;->f()V

    .line 232
    iget-object v0, p0, Lcom/anythink/core/b/e;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 237
    :goto_0
    monitor-enter p0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 240
    :try_start_0
    iget-object v3, p0, Lcom/anythink/core/b/e;->k:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object p1, p0, Lcom/anythink/core/b/e;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_1
    iget-object p1, p0, Lcom/anythink/core/b/e;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    if-nez v0, :cond_4

    .line 1379
    iget-object p1, p0, Lcom/anythink/core/b/e;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/core/b/e;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 247
    iget-wide p1, p0, Lcom/anythink/core/b/e;->r:J

    invoke-direct {p0, p1, p2}, Lcom/anythink/core/b/e;->b(J)V

    .line 248
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 250
    :cond_5
    monitor-exit p0

    .line 253
    iget-object p1, p0, Lcom/anythink/core/b/e;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    invoke-direct {p0}, Lcom/anythink/core/b/e;->m()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    .line 254
    invoke-direct/range {v0 .. v5}, Lcom/anythink/core/b/e;->a(Ljava/util/List;JLjava/lang/String;Ljava/util/Map;)V

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    .line 250
    monitor-exit p0

    throw p1
.end method

.method private static synthetic b(Ljava/lang/Object;)Ljava/util/List;
    .locals 3

    .line 3539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3540
    instance-of v1, p0, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 3541
    check-cast p0, Lorg/json/JSONObject;

    const-string v1, "data"

    .line 3542
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    .line 3543
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3544
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/f/q;->a(Ljava/lang/String;)Lcom/anythink/core/common/f/q;

    move-result-object v2

    .line 3546
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private declared-synchronized b(J)V
    .locals 4

    monitor-enter p0

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/b/e;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/anythink/core/b/e;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "beginRequestBidInfo, in bid requesting, do nothing."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    monitor-exit p0

    return-void

    .line 290
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/b/e;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "beginRequestBidInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 294
    invoke-virtual {p0, v0, v1}, Lcom/anythink/core/b/e;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 296
    iget-object v2, p0, Lcom/anythink/core/b/e;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 299
    new-instance v2, Lcom/anythink/core/b/e$3;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/anythink/core/b/e$3;-><init>(Lcom/anythink/core/b/e;JLjava/util/Map;)V

    .line 354
    invoke-virtual {p0, v0, v2}, Lcom/anythink/core/b/e;->a(Ljava/util/List;Lcom/anythink/core/common/h/k;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b(Lcom/anythink/core/common/f/au;)V
    .locals 8

    .line 570
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->d()I

    move-result v0

    .line 571
    invoke-static {}, Lcom/anythink/core/b/f;->a()Lcom/anythink/core/b/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/b/f;->b(I)Z

    move-result v7

    .line 573
    iget-object v3, p0, Lcom/anythink/core/b/e;->f:Lcom/anythink/core/common/f/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v4, p0, Lcom/anythink/core/b/e;->r:J

    sub-long v4, v1, v4

    const/4 v6, 0x1

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/a;JZZ)V

    .line 575
    invoke-static {}, Lcom/anythink/core/b/f;->a()Lcom/anythink/core/b/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/anythink/core/b/f;->a(I)V

    return-void
.end method

.method private declared-synchronized b(Lcom/anythink/core/common/f/au;Ljava/lang/String;JI)V
    .locals 0

    monitor-enter p0

    .line 639
    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/anythink/core/b/e;->a(Lcom/anythink/core/common/f/au;Ljava/lang/String;JI)V

    .line 640
    iget-object p2, p0, Lcom/anythink/core/b/e;->l:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private f()V
    .locals 2

    .line 222
    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/e;->y:Lcom/anythink/core/common/m/b;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/m/a;->b(Lcom/anythink/core/common/m/b;)V

    return-void
.end method

.method private declared-synchronized g()V
    .locals 2

    monitor-enter p0

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/b/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 261
    monitor-exit p0

    return-void

    .line 263
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/b/e;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "get token short timeout."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget-object v0, p0, Lcom/anythink/core/b/e;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 266
    iget-object v0, p0, Lcom/anythink/core/b/e;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 267
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/anythink/core/b/e;->b(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private h()Z
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/anythink/core/b/e;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/b/e;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized i()V
    .locals 8

    monitor-enter p0

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/b/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/b/e;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "finishCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    iget-object v0, p0, Lcom/anythink/core/b/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 392
    invoke-direct {p0}, Lcom/anythink/core/b/e;->f()V

    const-string v0, "Request Timeout."

    .line 400
    iget-object v1, p0, Lcom/anythink/core/b/e;->w:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const-wide/16 v3, 0x0

    const/4 v5, -0x3

    .line 402
    iget-object v7, p0, Lcom/anythink/core/b/e;->u:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v2, p0

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/anythink/core/b/e;->a(JILjava/lang/String;Ljava/util/Map;)V

    const-wide/16 v3, 0x0

    const/4 v5, -0x3

    .line 403
    iget-object v7, p0, Lcom/anythink/core/b/e;->v:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v2, p0

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/anythink/core/b/e;->a(JILjava/lang/String;Ljava/util/Map;)V

    .line 406
    invoke-direct {p0}, Lcom/anythink/core/b/e;->l()V

    .line 408
    invoke-direct {p0}, Lcom/anythink/core/b/e;->k()V

    .line 410
    invoke-direct {p0}, Lcom/anythink/core/b/e;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j()V
    .locals 3

    .line 416
    iget-object v0, p0, Lcom/anythink/core/b/e;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/b/e;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/b/e;->q:Lcom/anythink/core/b/b/a;

    if-eqz v0, :cond_1

    .line 418
    iget-object v1, p0, Lcom/anythink/core/b/e;->m:Ljava/util/List;

    iget-object v2, p0, Lcom/anythink/core/b/e;->l:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/b/b/a;->a(Ljava/util/List;Ljava/util/List;)V

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/anythink/core/b/e;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 423
    iget-object v0, p0, Lcom/anythink/core/b/e;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private declared-synchronized k()V
    .locals 2

    monitor-enter p0

    .line 506
    :try_start_0
    invoke-direct {p0}, Lcom/anythink/core/b/e;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/anythink/core/b/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private l()V
    .locals 3

    .line 512
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/core/b/e;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/b/e;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 513
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "S2S HeadBidding Success List"

    .line 516
    iget-object v2, p0, Lcom/anythink/core/b/e;->m:Ljava/util/List;

    invoke-static {v2}, Lcom/anythink/core/b/e;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "S2S HeadBidding Fail List"

    .line 517
    iget-object v2, p0, Lcom/anythink/core/b/e;->l:Ljava/util/List;

    invoke-static {v2}, Lcom/anythink/core/b/e;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "anythink_bidding"

    invoke-static {v2, v0, v1}, Lcom/anythink/core/common/o/o;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method private m()Z
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/anythink/core/b/e;->u:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/b/e;->v:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/b/e;->w:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected final a()V
    .locals 0

    .line 635
    invoke-direct {p0}, Lcom/anythink/core/b/e;->i()V

    return-void
.end method

.method protected final a(Lcom/anythink/core/b/b/a;)V
    .locals 5

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/b/e;->r:J

    .line 120
    iput-object p1, p0, Lcom/anythink/core/b/e;->q:Lcom/anythink/core/b/b/a;

    .line 122
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 123
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "S2S Start HeadBidding List"

    .line 125
    iget-object v2, p0, Lcom/anythink/core/b/e;->f:Lcom/anythink/core/common/f/a;

    iget-object v2, v2, Lcom/anythink/core/common/f/a;->j:Ljava/util/List;

    invoke-static {v2}, Lcom/anythink/core/b/e;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "S2S Start HeadBidding List(Directly)"

    .line 126
    iget-object v2, p0, Lcom/anythink/core/b/e;->k:Ljava/util/List;

    invoke-static {v2}, Lcom/anythink/core/b/e;->b(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :catch_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "anythink_bidding"

    invoke-static {v1, p1, v0}, Lcom/anythink/core/common/o/o;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/anythink/core/b/e;->f:Lcom/anythink/core/common/f/a;

    iget-object p1, p1, Lcom/anythink/core/common/f/a;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/anythink/core/b/e;->f:Lcom/anythink/core/common/f/a;

    iget-object p1, p1, Lcom/anythink/core/common/f/a;->k:Ljava/util/List;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/core/b/e;->f:Lcom/anythink/core/common/f/a;

    iget-object p1, p1, Lcom/anythink/core/common/f/a;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 135
    iget-wide v0, p0, Lcom/anythink/core/b/e;->r:J

    invoke-direct {p0, v0, v1}, Lcom/anythink/core/b/e;->b(J)V

    return-void

    .line 141
    :cond_1
    iget-object p1, p0, Lcom/anythink/core/b/e;->f:Lcom/anythink/core/common/f/a;

    iget-object p1, p1, Lcom/anythink/core/common/f/a;->n:Lcom/anythink/core/common/f/az;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/az;->o()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gtz p1, :cond_2

    const-wide/16 v1, 0x1f4

    .line 1218
    :cond_2
    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object p1

    iget-object v3, p0, Lcom/anythink/core/b/e;->y:Lcom/anythink/core/common/m/b;

    invoke-interface {p1, v3, v1, v2, v0}, Lcom/anythink/core/common/m/a;->a(Lcom/anythink/core/common/m/b;JZ)V

    .line 145
    iget-object p1, p0, Lcom/anythink/core/b/e;->u:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 146
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f/au;

    .line 149
    new-instance v1, Lcom/anythink/core/b/i;

    iget-object v2, p0, Lcom/anythink/core/b/e;->f:Lcom/anythink/core/common/f/a;

    invoke-direct {v1, v2}, Lcom/anythink/core/b/i;-><init>(Lcom/anythink/core/common/f/a;)V

    .line 150
    new-instance v2, Lcom/anythink/core/b/e$2;

    invoke-direct {v2, p0}, Lcom/anythink/core/b/e$2;-><init>(Lcom/anythink/core/b/e;)V

    invoke-virtual {v1, v0, v2}, Lcom/anythink/core/b/i;->a(Lcom/anythink/core/common/f/au;Lcom/anythink/core/b/i$a;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected a(Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/o;J)V
    .locals 9

    .line 594
    instance-of v0, p2, Lcom/anythink/core/common/f/q;

    if-eqz v0, :cond_5

    .line 595
    check-cast p2, Lcom/anythink/core/common/f/q;

    .line 596
    invoke-virtual {p2}, Lcom/anythink/core/common/f/q;->isSuccessWithUseType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 597
    invoke-virtual {p1, p3, p4}, Lcom/anythink/core/common/f/au;->a(J)V

    .line 598
    iget-object p3, p0, Lcom/anythink/core/b/e;->m:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->m()I

    move-result p3

    const/4 p4, 0x3

    if-eq p3, p4, :cond_1

    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->m()I

    move-result p3

    const/4 p4, 0x7

    if-ne p3, p4, :cond_0

    goto :goto_0

    .line 603
    :cond_0
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->o()J

    move-result-wide p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr p3, v0

    iput-wide p3, p2, Lcom/anythink/core/common/f/q;->f:J

    goto :goto_1

    .line 601
    :cond_1
    :goto_0
    iget-wide p3, p2, Lcom/anythink/core/common/f/q;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr p3, v0

    iput-wide p3, p2, Lcom/anythink/core/common/f/q;->f:J

    .line 606
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/anythink/core/b/e;->a(Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/q;)V

    return-void

    .line 612
    :cond_2
    iget v0, p2, Lcom/anythink/core/common/f/q;->useType:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    const/4 p2, 0x1

    .line 616
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->P()V

    const-string v0, "filter by s2s bid max count"

    move-object v5, v0

    const/4 v2, 0x1

    const/4 v8, 0x0

    goto :goto_2

    .line 618
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errorCode:["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p2, Lcom/anythink/core/common/f/q;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "],errorMsg:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/anythink/core/common/f/q;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 p2, -0x1

    move-object v5, v0

    const/4 v8, -0x1

    .line 623
    :goto_2
    invoke-virtual {p0, p1, v5, v8, v2}, Lcom/anythink/core/b/e;->a(Lcom/anythink/core/common/f/au;Ljava/lang/String;II)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 625
    iget-object p2, p0, Lcom/anythink/core/b/e;->m:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    move-object v3, p0

    move-object v4, p1

    move-wide v6, p3

    .line 627
    invoke-direct/range {v3 .. v8}, Lcom/anythink/core/b/e;->b(Lcom/anythink/core/common/f/au;Ljava/lang/String;JI)V

    :cond_5
    return-void
.end method

.method protected abstract a(Ljava/util/List;Lcom/anythink/core/common/h/k;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/anythink/core/common/h/k;",
            ")V"
        }
    .end annotation
.end method

.method protected declared-synchronized a(Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/f/au;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/b/e;->k:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 274
    iget-object p1, p0, Lcom/anythink/core/b/e;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 276
    iget-object p1, p0, Lcom/anythink/core/b/e;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 277
    iget-object p1, p0, Lcom/anythink/core/b/e;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lcom/anythink/core/b/e;->g:Z

    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    .line 358
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/core/b/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/b/e$4;

    invoke-direct {v1, p0}, Lcom/anythink/core/b/e$4;-><init>(Lcom/anythink/core/b/e;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final e()Z
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/anythink/core/b/e;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/b/e;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
