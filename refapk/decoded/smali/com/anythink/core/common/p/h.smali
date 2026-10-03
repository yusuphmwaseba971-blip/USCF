.class public final Lcom/anythink/core/common/p/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/p/h;->a:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private static a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_2

    .line 62
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_2

    .line 63
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f/au;

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v0, p0}, Lcom/anythink/core/common/f/au;->C(I)V

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Lcom/anythink/core/common/f/au;ILcom/anythink/core/common/f/au;)V
    .locals 3

    .line 73
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 77
    invoke-static {p3}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v1

    .line 1198
    iput-wide v1, v0, Lcom/anythink/core/common/f/q;->q:D

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {p1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v1

    .line 2198
    iput-wide v1, v0, Lcom/anythink/core/common/f/q;->q:D

    :cond_1
    :goto_0
    if-lez p2, :cond_2

    .line 85
    iget-object p3, p0, Lcom/anythink/core/common/p/h;->a:Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/f/au;

    .line 86
    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->k()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 87
    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 89
    invoke-static {p1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v0

    .line 3198
    iput-wide v0, p2, Lcom/anythink/core/common/f/q;->q:D

    :cond_2
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 24
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/anythink/core/common/p/h;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Lcom/anythink/core/common/f/au;)V
    .locals 8

    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/p/h;->a:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 31
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p1, v2}, Lcom/anythink/core/common/f/au;->C(I)V

    .line 33
    iget-object v0, p0, Lcom/anythink/core/common/p/h;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-direct {p0, p1, v2, v1}, Lcom/anythink/core/common/p/h;->a(Lcom/anythink/core/common/f/au;ILcom/anythink/core/common/f/au;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    .line 39
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/p/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 40
    iget-object v0, p0, Lcom/anythink/core/common/p/h;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f/au;

    .line 41
    invoke-static {p1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v3

    invoke-static {v0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v5

    cmpl-double v7, v3, v5

    if-lez v7, :cond_3

    .line 42
    invoke-virtual {p1, v2}, Lcom/anythink/core/common/f/au;->C(I)V

    .line 43
    iget-object v1, p0, Lcom/anythink/core/common/p/h;->a:Ljava/util/List;

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 44
    invoke-direct {p0, p1, v2, v0}, Lcom/anythink/core/common/p/h;->a(Lcom/anythink/core/common/f/au;ILcom/anythink/core/common/f/au;)V

    add-int/lit8 v2, v2, 0x1

    .line 45
    iget-object p1, p0, Lcom/anythink/core/common/p/h;->a:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 1061
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 1062
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 1063
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f/au;

    if-eqz v0, :cond_1

    .line 1065
    invoke-virtual {v0, v2}, Lcom/anythink/core/common/f/au;->C(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 46
    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/anythink/core/common/p/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/f/au;->C(I)V

    .line 51
    iget-object v0, p0, Lcom/anythink/core/common/p/h;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/anythink/core/common/p/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/anythink/core/common/p/h;->a(Lcom/anythink/core/common/f/au;ILcom/anythink/core/common/f/au;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
