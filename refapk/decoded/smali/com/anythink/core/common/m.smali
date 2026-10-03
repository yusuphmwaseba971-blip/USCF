.class public abstract Lcom/anythink/core/common/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/anythink/core/common/f/x;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field c:Ljava/lang/String;

.field protected d:Landroid/content/Context;

.field protected e:Landroid/os/Handler;

.field f:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/m;->a:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/m;->b:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Lcom/anythink/core/common/m$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/m$1;-><init>(Lcom/anythink/core/common/m;)V

    iput-object v0, p0, Lcom/anythink/core/common/m;->f:Ljava/lang/Runnable;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/m;->d:Landroid/content/Context;

    .line 42
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/m;->c:Ljava/lang/String;

    .line 43
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object p1

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/o/b/b;->a(I)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/m;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/m;)V
    .locals 1

    const/4 v0, 0x1

    .line 30
    invoke-direct {p0, v0}, Lcom/anythink/core/common/m;->a(Z)V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 80
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    iget-object v0, p0, Lcom/anythink/core/common/m;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 82
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Lcom/anythink/core/common/m;->a(Ljava/util/List;)V

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/anythink/core/common/m;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/anythink/core/common/m;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/core/common/m;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object p1

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    iget-object v1, p0, Lcom/anythink/core/common/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/anythink/core/d/a;->ai()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 90
    invoke-virtual {p1}, Lcom/anythink/core/d/a;->ai()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    .line 91
    iget-object v1, p0, Lcom/anythink/core/common/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/f/x;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v1, p0, Lcom/anythink/core/common/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 95
    invoke-virtual {p0, v0}, Lcom/anythink/core/common/m;->a(Ljava/util/List;)V

    .line 100
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/anythink/core/common/m;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 101
    iget-object p1, p0, Lcom/anythink/core/common/m;->e:Landroid/os/Handler;

    iget-object v0, p0, Lcom/anythink/core/common/m;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/anythink/core/common/f/x;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 56
    :try_start_0
    iget-object p2, p0, Lcom/anythink/core/common/m;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-direct {p0, v0}, Lcom/anythink/core/common/m;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 59
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/anythink/core/common/m;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object p2

    iget-object v1, p0, Lcom/anythink/core/common/m;->c:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object p2

    const/4 v1, 0x0

    .line 61
    iget-object v2, p0, Lcom/anythink/core/common/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    invoke-virtual {p2}, Lcom/anythink/core/d/a;->ak()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 63
    iget-object v0, p0, Lcom/anythink/core/common/m;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/anythink/core/common/m;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 64
    iget-object v0, p0, Lcom/anythink/core/common/m;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/anythink/core/common/m;->f:Ljava/lang/Runnable;

    invoke-virtual {p2}, Lcom/anythink/core/d/a;->ak()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    const/4 v0, 0x0

    .line 70
    :cond_2
    iget-object p2, p0, Lcom/anythink/core/common/m;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-direct {p0, v0}, Lcom/anythink/core/common/m;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation
.end method
